package org.aktin.dwh.bloomfilter;

/**
 * Custom BitSet implementation.
 * Uses int[] (32-bit words) for storage.
 */
public class BitSet {

	private final int size;
	private final int[] words;

	/**
	 * Create a new BitSet with the given size.
	 *
	 * @param size the total number of bits the BitSet can hold (must be &gt; 0)
	 */
	public BitSet(int size) {
		if (size <= 0) {
			throw new IllegalArgumentException("Size must be a positive integer.");
		}
		this.size = size;
		int wordCount = (size + 31) / 32;
		this.words = new int[wordCount];
	}

	/**
	 * Sets the bit at the specified index to 1.
	 *
	 * @param index the bit index (0-based)
	 */
	public void set(int index) {
		set(index, true);
	}

	/**
	 * Sets or clears the bit at the specified index.
	 *
	 * @param index the bit index (0-based)
	 * @param value true to set, false to clear
	 */
	public void set(int index, boolean value) {
		if (index < 0 || index >= size) {
			throw new IndexOutOfBoundsException("Index out of bounds: " + index + ". Size is " + size + ".");
		}
		int wordIndex = index / 32;
		int bitIndex = index % 32;
		if (value) {
			words[wordIndex] |= (1 << bitIndex);
		} else {
			words[wordIndex] &= ~(1 << bitIndex);
		}
	}

	/**
	 * Check if the bit at the specified index is set.
	 *
	 * @param index the bit index (0-based)
	 * @return true if the bit is set
	 */
	public boolean get(int index) {
		if (index < 0 || index >= size) {
			throw new IndexOutOfBoundsException("Index out of bounds: " + index + ". Size is " + size + ".");
		}
		int wordIndex = index / 32;
		int bitIndex = index % 32;
		return (words[wordIndex] & (1 << bitIndex)) != 0;
	}

	/**
	 * Clear the bit at the specified index.
	 *
	 * @param index the bit index (0-based)
	 */
	public void clear(int index) {
		set(index, false);
	}

	/**
	 * Clear all bits.
	 */
	public void clearAll() {
		java.util.Arrays.fill(words, 0);
	}

	/**
	 * Check if all bits are 0.
	 *
	 * @return true if empty
	 */
	public boolean isEmpty() {
		for (int word : words) {
			if (word != 0) {
				return false;
			}
		}
		return true;
	}

	/**
	 * @return total number of bits
	 */
	public int getSize() {
		return size;
	}

	/**
	 * Get the underlying word array. Used for OR/XOR operations between BitSets.
	 *
	 * @return the int[] backing this BitSet
	 */
	public int[] getWords() {
		return words;
	}

	/**
	 * Convert to byte array with MSB-first bit ordering within each byte.
	 *
	 * @return byte array representation
	 */
	public byte[] toByteArray() {
		int byteLength = (size + 7) / 8;
		byte[] byteArray = new byte[byteLength];
		for (int i = 0; i < size; i++) {
			if (get(i)) {
				int byteIndex = i / 8;
				int bitInByteIndex = i % 8;
				byteArray[byteIndex] |= (byte) (1 << (7 - bitInByteIndex));
			}
		}
		return byteArray;
	}

	/**
	 * String representation as "10110..." for debugging.
	 */
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(size);
		for (int i = 0; i < size; i++) {
			sb.append(get(i) ? '1' : '0');
		}
		return sb.toString();
	}
}
