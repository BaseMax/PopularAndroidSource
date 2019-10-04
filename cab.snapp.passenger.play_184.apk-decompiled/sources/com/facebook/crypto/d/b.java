package com.facebook.crypto.d;

import com.facebook.crypto.cipher.NativeGCMCipher;
import java.io.IOException;
import java.io.InputStream;

public final class b extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final f f2456a;

    /* renamed from: b  reason: collision with root package name */
    private final NativeGCMCipher f2457b;
    private byte[] c;
    private boolean d = false;

    public final boolean markSupported() {
        return false;
    }

    public b(InputStream inputStream, NativeGCMCipher nativeGCMCipher, int i) {
        this.f2456a = new f(inputStream, i);
        this.f2457b = nativeGCMCipher;
    }

    public final int available() throws IOException {
        return this.f2456a.available();
    }

    public final void close() throws IOException {
        try {
            a();
        } finally {
            this.f2456a.close();
        }
    }

    public final void mark(int i) {
        throw new UnsupportedOperationException();
    }

    public final int read() throws IOException {
        throw new UnsupportedOperationException();
    }

    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        if (bArr.length >= i3) {
            int read = this.f2456a.read(bArr, i, i2);
            if (read != -1) {
                return this.f2457b.update(bArr, i, read, bArr, i);
            }
            a();
            return -1;
        }
        throw new ArrayIndexOutOfBoundsException(i3);
    }

    private void a() throws IOException {
        if (!this.d) {
            this.d = true;
            try {
                byte[] tail = this.f2456a.getTail();
                this.f2457b.decryptFinal(tail, tail.length);
            } finally {
                this.f2457b.destroy();
            }
        }
    }

    public final synchronized void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    public final long skip(long j) throws IOException {
        if (this.c == null) {
            this.c = new byte[256];
        }
        long j2 = 0;
        while (j > 0) {
            int read = read(this.c, 0, (int) Math.min(j, 256));
            if (read < 0) {
                break;
            }
            long j3 = (long) read;
            j2 += j3;
            j -= j3;
        }
        if (j2 == 0) {
            return -1;
        }
        return j2;
    }
}
