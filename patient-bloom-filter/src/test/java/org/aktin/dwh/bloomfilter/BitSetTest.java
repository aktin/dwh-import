package org.aktin.dwh.bloomfilter;

import static org.junit.Assert.*;
import org.junit.Test;

public class BitSetTest {

	@Test
	public void testSetAndGet() {
		BitSet bs = new BitSet(100);
		assertFalse(bs.get(0));
		bs.set(0);
		assertTrue(bs.get(0));
		bs.set(50);
		assertTrue(bs.get(50));
		assertFalse(bs.get(49));
	}

	@Test
	public void testClear() {
		BitSet bs = new BitSet(32);
		bs.set(5);
		assertTrue(bs.get(5));
		bs.clear(5);
		assertFalse(bs.get(5));
	}

	@Test
	public void testClearAll() {
		BitSet bs = new BitSet(64);
		bs.set(0);
		bs.set(31);
		bs.set(32);
		bs.set(63);
		assertFalse(bs.isEmpty());
		bs.clearAll();
		assertTrue(bs.isEmpty());
	}

	@Test
	public void testSetWithBooleanValue() {
		BitSet bs = new BitSet(10);
		bs.set(3, true);
		assertTrue(bs.get(3));
		bs.set(3, false);
		assertFalse(bs.get(3));
	}

	@Test
	public void testToByteArrayMSBFirst() {
		// Set bit 0 -> should be MSB of first byte (0x80)
		BitSet bs = new BitSet(8);
		bs.set(0);
		byte[] bytes = bs.toByteArray();
		assertEquals(1, bytes.length);
		assertEquals((byte) 0x80, bytes[0]);

		// Set bit 7 -> should be LSB of first byte (0x01)
		bs.clearAll();
		bs.set(7);
		bytes = bs.toByteArray();
		assertEquals((byte) 0x01, bytes[0]);
	}

	@Test
	public void testToByteArrayMultipleBytes() {
		BitSet bs = new BitSet(16);
		bs.set(0); // byte 0, bit 7 (MSB)
		bs.set(8); // byte 1, bit 7 (MSB)
		byte[] bytes = bs.toByteArray();
		assertEquals(2, bytes.length);
		assertEquals((byte) 0x80, bytes[0]);
		assertEquals((byte) 0x80, bytes[1]);
	}

	@Test
	public void testToString() {
		BitSet bs = new BitSet(4);
		bs.set(0);
		bs.set(2);
		assertEquals("1010", bs.toString());
	}

	@Test
	public void testSize() {
		BitSet bs = new BitSet(1000);
		assertEquals(1000, bs.getSize());
	}

	@Test(expected = IndexOutOfBoundsException.class)
	public void testOutOfBoundsSet() {
		BitSet bs = new BitSet(10);
		bs.set(10);
	}

	@Test(expected = IndexOutOfBoundsException.class)
	public void testOutOfBoundsGet() {
		BitSet bs = new BitSet(10);
		bs.get(-1);
	}

	@Test(expected = IllegalArgumentException.class)
	public void testInvalidSize() {
		new BitSet(0);
	}

	@Test
	public void testWordBoundary() {
		// Test bits around the 32-bit word boundary
		BitSet bs = new BitSet(64);
		bs.set(31);
		bs.set(32);
		assertTrue(bs.get(31));
		assertTrue(bs.get(32));
		assertFalse(bs.get(30));
		assertFalse(bs.get(33));
	}
}
