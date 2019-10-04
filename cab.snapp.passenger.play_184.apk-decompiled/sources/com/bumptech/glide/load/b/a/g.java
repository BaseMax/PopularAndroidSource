package com.bumptech.glide.load.b.a;

public final class g implements a<byte[]> {
    public final int getElementSizeInBytes() {
        return 1;
    }

    public final String getTag() {
        return "ByteArrayPool";
    }

    public final int getArrayLength(byte[] bArr) {
        return bArr.length;
    }

    public final byte[] newArray(int i) {
        return new byte[i];
    }
}
