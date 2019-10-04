package com.bumptech.glide.g;

import android.text.TextUtils;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class c extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final long f2070a;

    /* renamed from: b  reason: collision with root package name */
    private int f2071b;

    public static InputStream obtain(InputStream inputStream, String str) {
        return obtain(inputStream, (long) a(str));
    }

    public static InputStream obtain(InputStream inputStream, long j) {
        return new c(inputStream, j);
    }

    private static int a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    private c(InputStream inputStream, long j) {
        super(inputStream);
        this.f2070a = j;
    }

    public final synchronized int available() throws IOException {
        return (int) Math.max(this.f2070a - ((long) this.f2071b), (long) this.in.available());
    }

    public final synchronized int read() throws IOException {
        int read;
        read = super.read();
        a(read >= 0 ? 1 : -1);
        return read;
    }

    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public final synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        return a(super.read(bArr, i, i2));
    }

    private int a(int i) throws IOException {
        if (i >= 0) {
            this.f2071b += i;
        } else if (this.f2070a - ((long) this.f2071b) > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f2070a + ", but read: " + this.f2071b);
        }
        return i;
    }
}
