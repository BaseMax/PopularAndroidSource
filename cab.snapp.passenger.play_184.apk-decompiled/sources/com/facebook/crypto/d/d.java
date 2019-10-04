package com.facebook.crypto.d;

import com.facebook.crypto.mac.NativeMac;
import com.pusher.java_websocket.drafts.c;
import java.io.IOException;
import java.io.InputStream;

public final class d extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final NativeMac f2460a;

    /* renamed from: b  reason: collision with root package name */
    private final f f2461b;
    private boolean c = false;

    public final boolean markSupported() {
        return false;
    }

    public d(NativeMac nativeMac, InputStream inputStream) {
        this.f2460a = nativeMac;
        this.f2461b = new f(inputStream, nativeMac.getMacLength());
    }

    public final int available() throws IOException {
        return this.f2461b.available();
    }

    public final void close() throws IOException {
        try {
            a();
        } finally {
            this.f2461b.close();
        }
    }

    public final void mark(int i) {
        throw new UnsupportedOperationException();
    }

    public final int read() throws IOException {
        byte[] bArr = new byte[1];
        int read = read(bArr, 0, 1);
        while (read == 0) {
            read = read(bArr, 0, 1);
        }
        if (read == -1) {
            return -1;
        }
        return bArr[0] & c.END_OF_FRAME;
    }

    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f2461b.read(bArr, i, i2);
        if (read == -1) {
            a();
            return -1;
        }
        if (read > 0) {
            this.f2460a.update(bArr, i, read);
        }
        return read;
    }

    private void a() throws IOException {
        if (!this.c) {
            this.c = true;
            try {
                if (!a(this.f2461b.getTail(), this.f2460a.doFinal())) {
                    throw new IOException("Mac does not match");
                }
            } finally {
                this.f2460a.destroy();
            }
        }
    }

    public final synchronized void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    public final long skip(long j) throws IOException {
        throw new UnsupportedOperationException();
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        byte b2 = 0;
        for (int i = 0; i < bArr.length; i++) {
            b2 |= bArr[i] ^ bArr2[i];
        }
        if (b2 == 0) {
            return true;
        }
        return false;
    }
}
