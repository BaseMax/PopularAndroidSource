package androidx.collection;

public final class CircularIntArray {
    private int mCapacityBitmask;
    private int[] mElements;
    private int mHead;
    private int mTail;

    private void doubleCapacity() {
        int[] iArr = this.mElements;
        int length = iArr.length;
        int i = this.mHead;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 >= 0) {
            int[] iArr2 = new int[i3];
            System.arraycopy(iArr, i, iArr2, 0, i2);
            System.arraycopy(this.mElements, 0, iArr2, i2, this.mHead);
            this.mElements = iArr2;
            this.mHead = 0;
            this.mTail = length;
            this.mCapacityBitmask = i3 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public CircularIntArray() {
        this(8);
    }

    public CircularIntArray(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("capacity must be >= 1");
        } else if (i <= 1073741824) {
            i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
            this.mCapacityBitmask = i - 1;
            this.mElements = new int[i];
        } else {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
    }

    public final void addFirst(int i) {
        this.mHead = (this.mHead - 1) & this.mCapacityBitmask;
        int[] iArr = this.mElements;
        int i2 = this.mHead;
        iArr[i2] = i;
        if (i2 == this.mTail) {
            doubleCapacity();
        }
    }

    public final void addLast(int i) {
        int[] iArr = this.mElements;
        int i2 = this.mTail;
        iArr[i2] = i;
        this.mTail = this.mCapacityBitmask & (i2 + 1);
        if (this.mTail == this.mHead) {
            doubleCapacity();
        }
    }

    public final int popFirst() {
        int i = this.mHead;
        if (i != this.mTail) {
            int i2 = this.mElements[i];
            this.mHead = (i + 1) & this.mCapacityBitmask;
            return i2;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int popLast() {
        int i = this.mHead;
        int i2 = this.mTail;
        if (i != i2) {
            int i3 = this.mCapacityBitmask & (i2 - 1);
            int i4 = this.mElements[i3];
            this.mTail = i3;
            return i4;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final void clear() {
        this.mTail = this.mHead;
    }

    public final void removeFromStart(int i) {
        if (i > 0) {
            if (i <= size()) {
                this.mHead = this.mCapacityBitmask & (this.mHead + i);
                return;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public final void removeFromEnd(int i) {
        if (i > 0) {
            if (i <= size()) {
                this.mTail = this.mCapacityBitmask & (this.mTail - i);
                return;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public final int getFirst() {
        int i = this.mHead;
        if (i != this.mTail) {
            return this.mElements[i];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int getLast() {
        int i = this.mHead;
        int i2 = this.mTail;
        if (i != i2) {
            return this.mElements[(i2 - 1) & this.mCapacityBitmask];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int get(int i) {
        if (i < 0 || i >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mCapacityBitmask & (this.mHead + i)];
    }

    public final int size() {
        return (this.mTail - this.mHead) & this.mCapacityBitmask;
    }

    public final boolean isEmpty() {
        return this.mHead == this.mTail;
    }
}