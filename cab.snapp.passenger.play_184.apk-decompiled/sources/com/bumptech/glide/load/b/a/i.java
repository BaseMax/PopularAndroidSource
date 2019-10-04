package com.bumptech.glide.load.b.a;

public final class i implements a<int[]> {
    public final int getElementSizeInBytes() {
        return 4;
    }

    public final String getTag() {
        return "IntegerArrayPool";
    }

    public final int getArrayLength(int[] iArr) {
        return iArr.length;
    }

    public final int[] newArray(int i) {
        return new int[i];
    }
}
