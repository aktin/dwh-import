package org.aktin.dwh.bloomfilter;

import static org.junit.Assert.*;
import org.junit.Test;

public class SecureRandomTest {

	@Test
	public void testDeterministic() {
		SecureRandom rng1 = new SecureRandom("testSeed");
		SecureRandom rng2 = new SecureRandom("testSeed");

		for (int i = 0; i < 100; i++) {
			assertEquals(rng1.nextInt(1000), rng2.nextInt(1000));
		}
	}

	@Test
	public void testDifferentSeeds() {
		SecureRandom rng1 = new SecureRandom("seed1");
		SecureRandom rng2 = new SecureRandom("seed2");

		boolean allSame = true;
		for (int i = 0; i < 20; i++) {
			if (rng1.nextInt(10000) != rng2.nextInt(10000)) {
				allSame = false;
				break;
			}
		}
		assertFalse("Different seeds should produce different sequences", allSame);
	}

	@Test
	public void testNumericSeed() {
		SecureRandom rng1 = new SecureRandom(42);
		SecureRandom rng2 = new SecureRandom(42);

		for (int i = 0; i < 50; i++) {
			assertEquals(rng1.nextInt(500), rng2.nextInt(500));
		}
	}

	@Test
	public void testBoundsRespected() {
		SecureRandom rng = new SecureRandom("boundsTest");
		for (int i = 0; i < 1000; i++) {
			int val = rng.nextInt(10);
			assertTrue("Value should be >= 0", val >= 0);
			assertTrue("Value should be < 10", val < 10);
		}
	}

	@Test
	public void testBound1() {
		SecureRandom rng = new SecureRandom("one");
		for (int i = 0; i < 10; i++) {
			assertEquals(0, rng.nextInt(1));
		}
	}

	@Test(expected = IllegalArgumentException.class)
	public void testBoundZero() {
		new SecureRandom("test").nextInt(0);
	}

	@Test(expected = IllegalArgumentException.class)
	public void testBoundNegative() {
		new SecureRandom("test").nextInt(-5);
	}

	@Test
	public void testMultipleBlockConsumption() {
		// HMAC-SHA256 produces 32 bytes. Each nextInt consumes 4 bytes.
		// After 8 calls, a new block must be generated.
		SecureRandom rng1 = new SecureRandom("multiblock");
		SecureRandom rng2 = new SecureRandom("multiblock");

		for (int i = 0; i < 50; i++) {
			assertEquals("Mismatch at iteration " + i, rng1.nextInt(999), rng2.nextInt(999));
		}
	}
}
