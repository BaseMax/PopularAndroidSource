package com.a.a.c;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.List;

final class b {
    public static final b EMPTY = new b(new byte[0]);

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1744a;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f1745b;

    static final class a extends FilterOutputStream {

        /* renamed from: a  reason: collision with root package name */
        private final ByteArrayOutputStream f1746a;

        /* synthetic */ a(ByteArrayOutputStream byteArrayOutputStream, byte b2) {
            this(byteArrayOutputStream);
        }

        private a(ByteArrayOutputStream byteArrayOutputStream) {
            super(byteArrayOutputStream);
            this.f1746a = byteArrayOutputStream;
        }

        public final b toByteString() {
            return new b(this.f1746a.toByteArray(), (byte) 0);
        }
    }

    /* synthetic */ b(byte[] bArr, byte b2) {
        this(bArr);
    }

    private b(byte[] bArr) {
        this.f1745b = 0;
        this.f1744a = bArr;
    }

    public final byte byteAt(int i) {
        return this.f1744a[i];
    }

    public final int size() {
        return this.f1744a.length;
    }

    public final boolean isEmpty() {
        return this.f1744a.length == 0;
    }

    public static b copyFrom(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new b(bArr2);
    }

    public static b copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static b copyFrom(ByteBuffer byteBuffer, int i) {
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return new b(bArr);
    }

    public static b copyFrom(ByteBuffer byteBuffer) {
        return copyFrom(byteBuffer, byteBuffer.remaining());
    }

    public static b copyFrom(String str, String str2) throws UnsupportedEncodingException {
        return new b(str.getBytes(str2));
    }

    public static b copyFromUtf8(String str) {
        try {
            return new b(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported.", e);
        }
    }

    public static b copyFrom(List<b> list) {
        if (list.size() == 0) {
            return EMPTY;
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        int i = 0;
        for (b size : list) {
            i += size.size();
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (b next : list) {
            System.arraycopy(next.f1744a, 0, bArr, i2, next.size());
            i2 += next.size();
        }
        return new b(bArr);
    }

    public final void copyTo(byte[] bArr, int i) {
        byte[] bArr2 = this.f1744a;
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
    }

    public final void copyTo(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f1744a, i, bArr, i2, i3);
    }

    public final void copyTo(ByteBuffer byteBuffer) {
        byte[] bArr = this.f1744a;
        byteBuffer.put(bArr, 0, bArr.length);
    }

    public final byte[] toByteArray() {
        byte[] bArr = this.f1744a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public final ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(this.f1744a).asReadOnlyBuffer();
    }

    public final String toString(String str) throws UnsupportedEncodingException {
        return new String(this.f1744a, str);
    }

    public final String toStringUtf8() {
        try {
            return new String(this.f1744a, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        byte[] bArr = this.f1744a;
        int length = bArr.length;
        byte[] bArr2 = ((b) obj).f1744a;
        if (length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f1745b;
        if (i == 0) {
            int i2 = r1;
            for (byte b2 : this.f1744a) {
                i2 = (i2 * 31) + b2;
            }
            i = i2 == 0 ? 1 : i2;
            this.f1745b = i;
        }
        return i;
    }

    public final InputStream newInput() {
        return new ByteArrayInputStream(this.f1744a);
    }

    public static a newOutput(int i) {
        return new a(new ByteArrayOutputStream(i), (byte) 0);
    }

    public static a newOutput() {
        return newOutput(32);
    }
}
