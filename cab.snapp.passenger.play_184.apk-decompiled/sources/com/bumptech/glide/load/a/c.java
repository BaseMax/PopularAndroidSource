package com.bumptech.glide.load.a;

import com.bumptech.glide.load.b.a.b;
import java.io.IOException;
import java.io.OutputStream;

public final class c extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f2103a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f2104b;
    private b c;
    private int d;

    public c(OutputStream outputStream, b bVar) {
        this(outputStream, bVar, (byte) 0);
    }

    private c(OutputStream outputStream, b bVar, byte b2) {
        this.f2103a = outputStream;
        this.c = bVar;
        this.f2104b = (byte[]) bVar.get(65536, byte[].class);
    }

    public final void write(int i) throws IOException {
        byte[] bArr = this.f2104b;
        int i2 = this.d;
        this.d = i2 + 1;
        bArr[i2] = (byte) i;
        b();
    }

    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            if (this.d != 0 || i4 < this.f2104b.length) {
                int min = Math.min(i4, this.f2104b.length - this.d);
                System.arraycopy(bArr, i5, this.f2104b, this.d, min);
                this.d += min;
                i3 += min;
                b();
            } else {
                this.f2103a.write(bArr, i5, i4);
                return;
            }
        } while (i3 < i2);
    }

    public final void flush() throws IOException {
        a();
        this.f2103a.flush();
    }

    private void a() throws IOException {
        int i = this.d;
        if (i > 0) {
            this.f2103a.write(this.f2104b, 0, i);
            this.d = 0;
        }
    }

    private void b() throws IOException {
        if (this.d == this.f2104b.length) {
            a();
        }
    }

    /* JADX INFO: finally extract failed */
    public final void close() throws IOException {
        try {
            flush();
            this.f2103a.close();
            byte[] bArr = this.f2104b;
            if (bArr != null) {
                this.c.put(bArr);
                this.f2104b = null;
            }
        } catch (Throwable th) {
            this.f2103a.close();
            throw th;
        }
    }
}
