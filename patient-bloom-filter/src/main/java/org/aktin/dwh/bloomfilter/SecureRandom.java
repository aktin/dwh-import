package org.aktin.dwh.bloomfilter;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/**
 * Deterministic PRNG using HMAC-SHA256.
 * <p>
 * Uses counter-based block generation: each call to _generateBlock() signs
 * the string representation of a counter with the HMAC key, producing 32
 * pseudo-random bytes. These bytes are consumed 4 at a time (little-endian
 * uint32) by nextInt().
 */
public class SecureRandom {

	private final Mac mac;
	private int counter;
	private byte[] cache;
	private int cacheIndex;

	/**
	 * Create a new SecureRandom with the given seed.
	 *
	 * @param seed the seed (number or string; converted to string internally)
	 */
	public SecureRandom(Object seed) {
		String seedStr = String.valueOf(seed);
		byte[] seedBytes = seedStr.getBytes(StandardCharsets.UTF_8);
		try {
			SecretKeySpec keySpec = new SecretKeySpec(seedBytes, "HmacSHA256");
			this.mac = Mac.getInstance("HmacSHA256");
			this.mac.init(keySpec);
		} catch (NoSuchAlgorithmException | InvalidKeyException e) {
			throw new RuntimeException("Failed to initialize HMAC-SHA256", e);
		}
		this.counter = 0;
		this.cache = new byte[0];
		this.cacheIndex = 0;
	}

	/**
	 * Generate a new block of 32 random bytes using HMAC-SHA256.
	 */
	private void generateBlock() {
		byte[] counterData = String.valueOf(counter++).getBytes(StandardCharsets.UTF_8);
		cache = mac.doFinal(counterData);
		cacheIndex = 0;
	}

	/**
	 * Generate a random integer in [0, bound).
	 * Uses rejection sampling for uniform distribution.
	 *
	 * @param bound upper bound (exclusive), must be &gt; 0
	 * @return uniformly distributed random integer
	 */
	public int nextInt(int bound) {
		if (bound <= 0) {
			throw new IllegalArgumentException("Bound must be a positive integer.");
		}

		long UINT32_MAX_PLUS_ONE = 0x100000000L;
		long rejectionThreshold = (UINT32_MAX_PLUS_ONE / bound) * bound;

		long randomUint32;
		do {
			while (cacheIndex + 4 > cache.length) {
				generateBlock();
			}

			// Read 4 bytes as little-endian unsigned 32-bit integer
			randomUint32 = ByteBuffer.wrap(cache, cacheIndex, 4)
					.order(ByteOrder.LITTLE_ENDIAN)
					.getInt() & 0xFFFFFFFFL;
			cacheIndex += 4;
		} while (randomUint32 >= rejectionThreshold);

		return (int) (randomUint32 % bound);
	}
}
