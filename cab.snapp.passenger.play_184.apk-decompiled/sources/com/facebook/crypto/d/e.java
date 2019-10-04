package com.facebook.crypto.d;

import com.facebook.crypto.mac.NativeMac;
import java.io.IOException;
import java.io.OutputStream;

public final class e extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final NativeMac f2462a;

    /* renamed from: b  reason: collision with root package name */
    private final OutputStream f2463b;
    private boolean c = false;

    public e(NativeMac nativeMac, OutputStream outputStream) {
        this.f2462a = nativeMac;
        this.f2463b = outputStream;
    }

    public final void flush() throws IOException {
        this.f2463b.flush();
    }

    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.f2462a.update(bArr, i, i2);
        this.f2463b.write(bArr, i, i2);
    }

    public final void write(int i) throws IOException {
        this.f2462a.update((byte) i);
        this.f2463b.write(i);
    }

    public final void close() throws IOException {
        try {
            if (!this.c) {
                this.c = true;
                this.f2463b.write(this.f2462a.doFinal());
                this.f2462a.destroy();
            }
            this.f2463b.close();
        } catch (Throwable th) {
            this.f2463b.close();
            throw th;
        }
    }
}
