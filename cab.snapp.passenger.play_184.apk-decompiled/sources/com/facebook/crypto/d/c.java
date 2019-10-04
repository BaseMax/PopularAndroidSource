package com.facebook.crypto.d;

import com.facebook.crypto.cipher.NativeGCMCipher;
import java.io.IOException;
import java.io.OutputStream;

public final class c extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f2458a;

    /* renamed from: b  reason: collision with root package name */
    private final NativeGCMCipher f2459b;
    private final int c;
    private final byte[] d;
    private final byte[] e;
    private boolean f = false;

    public c(OutputStream outputStream, NativeGCMCipher nativeGCMCipher, byte[] bArr, int i) {
        this.f2458a = outputStream;
        this.f2459b = nativeGCMCipher;
        this.e = new byte[i];
        int cipherBlockSize = this.f2459b.getCipherBlockSize();
        if (bArr == null) {
            bArr = new byte[(cipherBlockSize + 256)];
        } else {
            int i2 = cipherBlockSize + 1;
            if (bArr.length < i2) {
                throw new IllegalArgumentException("encryptBuffer cannot be smaller than " + i2 + "B");
            }
        }
        this.c = bArr.length - cipherBlockSize;
        this.d = bArr;
    }

    public final void flush() throws IOException {
        this.f2458a.flush();
    }

    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        if (bArr.length >= i3) {
            int i4 = this.c;
            int i5 = i2 / i4;
            int i6 = i2 % i4;
            int i7 = i;
            for (int i8 = 0; i8 < i5; i8++) {
                this.f2458a.write(this.d, 0, this.f2459b.update(bArr, i7, this.c, this.d, 0));
                i7 += this.c;
            }
            if (i6 > 0) {
                this.f2458a.write(this.d, 0, this.f2459b.update(bArr, i7, i6, this.d, 0));
                return;
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException(i3);
    }

    public final void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    public final void close() throws IOException {
        try {
            if (!this.f) {
                this.f = true;
                this.f2459b.encryptFinal(this.e, this.e.length);
                this.f2458a.write(this.e);
                this.f2459b.destroy();
            }
            this.f2458a.close();
        } catch (Throwable th) {
            this.f2458a.close();
            throw th;
        }
    }
}
