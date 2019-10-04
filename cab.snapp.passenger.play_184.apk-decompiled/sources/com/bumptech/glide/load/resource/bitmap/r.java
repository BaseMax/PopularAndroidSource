package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.b.a.b;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class r extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private volatile byte[] f2361a;

    /* renamed from: b  reason: collision with root package name */
    private int f2362b;
    private int c;
    private int d;
    private int e;
    private final b f;

    static class a extends IOException {
        a(String str) {
            super(str);
        }
    }

    public final boolean markSupported() {
        return true;
    }

    public r(InputStream inputStream, b bVar) {
        this(inputStream, bVar, (byte) 0);
    }

    private r(InputStream inputStream, b bVar, byte b2) {
        super(inputStream);
        this.d = -1;
        this.f = bVar;
        this.f2361a = (byte[]) bVar.get(65536, byte[].class);
    }

    public final synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = this.in;
        if (this.f2361a == null || inputStream == null) {
            throw a();
        }
        return (this.f2362b - this.e) + inputStream.available();
    }

    private static IOException a() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public final synchronized void fixMarkLimit() {
        this.c = this.f2361a.length;
    }

    public final synchronized void release() {
        if (this.f2361a != null) {
            this.f.put(this.f2361a);
            this.f2361a = null;
        }
    }

    public final void close() throws IOException {
        if (this.f2361a != null) {
            this.f.put(this.f2361a);
            this.f2361a = null;
        }
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    private int a(InputStream inputStream, byte[] bArr) throws IOException {
        int i = this.d;
        if (i != -1) {
            int i2 = this.e - i;
            int i3 = this.c;
            if (i2 < i3) {
                if (i == 0 && i3 > bArr.length && this.f2362b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length > i3) {
                        length = i3;
                    }
                    byte[] bArr2 = (byte[]) this.f.get(length, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f2361a = bArr2;
                    this.f.put(bArr);
                    bArr = bArr2;
                } else {
                    int i4 = this.d;
                    if (i4 > 0) {
                        System.arraycopy(bArr, i4, bArr, 0, bArr.length - i4);
                    }
                }
                this.e -= this.d;
                this.d = 0;
                this.f2362b = 0;
                int i5 = this.e;
                int read = inputStream.read(bArr, i5, bArr.length - i5);
                int i6 = this.e;
                if (read > 0) {
                    i6 += read;
                }
                this.f2362b = i6;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.d = -1;
            this.e = 0;
            this.f2362b = read2;
        }
        return read2;
    }

    public final synchronized void mark(int i) {
        this.c = Math.max(this.c, i);
        this.d = this.e;
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:11:0x0018=Splitter:B:11:0x0018, B:27:0x003b=Splitter:B:27:0x003b} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized int read() throws java.io.IOException {
        /*
            r5 = this;
            monitor-enter(r5)
            byte[] r0 = r5.f2361a     // Catch:{ all -> 0x0040 }
            java.io.InputStream r1 = r5.in     // Catch:{ all -> 0x0040 }
            if (r0 == 0) goto L_0x003b
            if (r1 == 0) goto L_0x003b
            int r2 = r5.e     // Catch:{ all -> 0x0040 }
            int r3 = r5.f2362b     // Catch:{ all -> 0x0040 }
            r4 = -1
            if (r2 < r3) goto L_0x0018
            int r1 = r5.a(r1, r0)     // Catch:{ all -> 0x0040 }
            if (r1 != r4) goto L_0x0018
            monitor-exit(r5)
            return r4
        L_0x0018:
            byte[] r1 = r5.f2361a     // Catch:{ all -> 0x0040 }
            if (r0 == r1) goto L_0x0026
            byte[] r0 = r5.f2361a     // Catch:{ all -> 0x0040 }
            if (r0 == 0) goto L_0x0021
            goto L_0x0026
        L_0x0021:
            java.io.IOException r0 = a()     // Catch:{ all -> 0x0040 }
            throw r0     // Catch:{ all -> 0x0040 }
        L_0x0026:
            int r1 = r5.f2362b     // Catch:{ all -> 0x0040 }
            int r2 = r5.e     // Catch:{ all -> 0x0040 }
            int r1 = r1 - r2
            if (r1 <= 0) goto L_0x0039
            int r1 = r5.e     // Catch:{ all -> 0x0040 }
            int r2 = r1 + 1
            r5.e = r2     // Catch:{ all -> 0x0040 }
            byte r0 = r0[r1]     // Catch:{ all -> 0x0040 }
            r0 = r0 & 255(0xff, float:3.57E-43)
            monitor-exit(r5)
            return r0
        L_0x0039:
            monitor-exit(r5)
            return r4
        L_0x003b:
            java.io.IOException r0 = a()     // Catch:{ all -> 0x0040 }
            throw r0     // Catch:{ all -> 0x0040 }
        L_0x0040:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.r.read():int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003a, code lost:
        return r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized int read(byte[] r6, int r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
            monitor-enter(r5)
            byte[] r0 = r5.f2361a     // Catch:{ all -> 0x009e }
            if (r0 == 0) goto L_0x0099
            if (r8 != 0) goto L_0x000a
            r6 = 0
            monitor-exit(r5)
            return r6
        L_0x000a:
            java.io.InputStream r1 = r5.in     // Catch:{ all -> 0x009e }
            if (r1 == 0) goto L_0x0094
            int r2 = r5.e     // Catch:{ all -> 0x009e }
            int r3 = r5.f2362b     // Catch:{ all -> 0x009e }
            if (r2 >= r3) goto L_0x003b
            int r2 = r5.f2362b     // Catch:{ all -> 0x009e }
            int r3 = r5.e     // Catch:{ all -> 0x009e }
            int r2 = r2 - r3
            if (r2 < r8) goto L_0x001d
            r2 = r8
            goto L_0x0022
        L_0x001d:
            int r2 = r5.f2362b     // Catch:{ all -> 0x009e }
            int r3 = r5.e     // Catch:{ all -> 0x009e }
            int r2 = r2 - r3
        L_0x0022:
            int r3 = r5.e     // Catch:{ all -> 0x009e }
            java.lang.System.arraycopy(r0, r3, r6, r7, r2)     // Catch:{ all -> 0x009e }
            int r3 = r5.e     // Catch:{ all -> 0x009e }
            int r3 = r3 + r2
            r5.e = r3     // Catch:{ all -> 0x009e }
            if (r2 == r8) goto L_0x0039
            int r3 = r1.available()     // Catch:{ all -> 0x009e }
            if (r3 != 0) goto L_0x0035
            goto L_0x0039
        L_0x0035:
            int r7 = r7 + r2
            int r2 = r8 - r2
            goto L_0x003c
        L_0x0039:
            monitor-exit(r5)
            return r2
        L_0x003b:
            r2 = r8
        L_0x003c:
            int r3 = r5.d     // Catch:{ all -> 0x009e }
            r4 = -1
            if (r3 != r4) goto L_0x0051
            int r3 = r0.length     // Catch:{ all -> 0x009e }
            if (r2 < r3) goto L_0x0051
            int r3 = r1.read(r6, r7, r2)     // Catch:{ all -> 0x009e }
            if (r3 != r4) goto L_0x0084
            if (r2 != r8) goto L_0x004e
            monitor-exit(r5)
            return r4
        L_0x004e:
            int r8 = r8 - r2
            monitor-exit(r5)
            return r8
        L_0x0051:
            int r3 = r5.a(r1, r0)     // Catch:{ all -> 0x009e }
            if (r3 != r4) goto L_0x005e
            if (r2 != r8) goto L_0x005b
            monitor-exit(r5)
            return r4
        L_0x005b:
            int r8 = r8 - r2
            monitor-exit(r5)
            return r8
        L_0x005e:
            byte[] r3 = r5.f2361a     // Catch:{ all -> 0x009e }
            if (r0 == r3) goto L_0x006c
            byte[] r0 = r5.f2361a     // Catch:{ all -> 0x009e }
            if (r0 == 0) goto L_0x0067
            goto L_0x006c
        L_0x0067:
            java.io.IOException r6 = a()     // Catch:{ all -> 0x009e }
            throw r6     // Catch:{ all -> 0x009e }
        L_0x006c:
            int r3 = r5.f2362b     // Catch:{ all -> 0x009e }
            int r4 = r5.e     // Catch:{ all -> 0x009e }
            int r3 = r3 - r4
            if (r3 < r2) goto L_0x0075
            r3 = r2
            goto L_0x007a
        L_0x0075:
            int r3 = r5.f2362b     // Catch:{ all -> 0x009e }
            int r4 = r5.e     // Catch:{ all -> 0x009e }
            int r3 = r3 - r4
        L_0x007a:
            int r4 = r5.e     // Catch:{ all -> 0x009e }
            java.lang.System.arraycopy(r0, r4, r6, r7, r3)     // Catch:{ all -> 0x009e }
            int r4 = r5.e     // Catch:{ all -> 0x009e }
            int r4 = r4 + r3
            r5.e = r4     // Catch:{ all -> 0x009e }
        L_0x0084:
            int r2 = r2 - r3
            if (r2 != 0) goto L_0x0089
            monitor-exit(r5)
            return r8
        L_0x0089:
            int r4 = r1.available()     // Catch:{ all -> 0x009e }
            if (r4 != 0) goto L_0x0092
            int r8 = r8 - r2
            monitor-exit(r5)
            return r8
        L_0x0092:
            int r7 = r7 + r3
            goto L_0x003c
        L_0x0094:
            java.io.IOException r6 = a()     // Catch:{ all -> 0x009e }
            throw r6     // Catch:{ all -> 0x009e }
        L_0x0099:
            java.io.IOException r6 = a()     // Catch:{ all -> 0x009e }
            throw r6     // Catch:{ all -> 0x009e }
        L_0x009e:
            r6 = move-exception
            monitor-exit(r5)
            goto L_0x00a2
        L_0x00a1:
            throw r6
        L_0x00a2:
            goto L_0x00a1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.r.read(byte[], int, int):int");
    }

    public final synchronized void reset() throws IOException {
        if (this.f2361a == null) {
            throw new IOException("Stream is closed");
        } else if (-1 != this.d) {
            this.e = this.d;
        } else {
            throw new a("Mark has been invalidated, pos: " + this.e + " markLimit: " + this.c);
        }
    }

    public final synchronized long skip(long j) throws IOException {
        if (j < 1) {
            return 0;
        }
        byte[] bArr = this.f2361a;
        if (bArr != null) {
            InputStream inputStream = this.in;
            if (inputStream == null) {
                throw a();
            } else if (((long) (this.f2362b - this.e)) >= j) {
                this.e = (int) (((long) this.e) + j);
                return j;
            } else {
                long j2 = ((long) this.f2362b) - ((long) this.e);
                this.e = this.f2362b;
                if (this.d == -1 || j > ((long) this.c)) {
                    return j2 + inputStream.skip(j - j2);
                } else if (a(inputStream, bArr) == -1) {
                    return j2;
                } else {
                    if (((long) (this.f2362b - this.e)) >= j - j2) {
                        this.e = (int) ((((long) this.e) + j) - j2);
                        return j;
                    }
                    long j3 = (j2 + ((long) this.f2362b)) - ((long) this.e);
                    this.e = this.f2362b;
                    return j3;
                }
            }
        } else {
            throw a();
        }
    }
}
