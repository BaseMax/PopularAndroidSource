package com.bumptech.glide.g;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class h extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f2080a = Integer.MIN_VALUE;

    public h(InputStream inputStream) {
        super(inputStream);
    }

    public final synchronized void mark(int i) {
        super.mark(i);
        this.f2080a = i;
    }

    public final int read() throws IOException {
        if (a(1) == -1) {
            return -1;
        }
        int read = super.read();
        b(1);
        return read;
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int a2 = (int) a((long) i2);
        if (a2 == -1) {
            return -1;
        }
        int read = super.read(bArr, i, a2);
        b((long) read);
        return read;
    }

    public final synchronized void reset() throws IOException {
        super.reset();
        this.f2080a = Integer.MIN_VALUE;
    }

    public final long skip(long j) throws IOException {
        long a2 = a(j);
        if (a2 == -1) {
            return 0;
        }
        long skip = super.skip(a2);
        b(skip);
        return skip;
    }

    public final int available() throws IOException {
        int i = this.f2080a;
        if (i == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i, super.available());
    }

    private long a(long j) {
        int i = this.f2080a;
        if (i == 0) {
            return -1;
        }
        if (i != Integer.MIN_VALUE && j > ((long) i)) {
            j = (long) i;
        }
        return j;
    }

    private void b(long j) {
        int i = this.f2080a;
        if (i != Integer.MIN_VALUE && j != -1) {
            this.f2080a = (int) (((long) i) - j);
        }
    }
}
