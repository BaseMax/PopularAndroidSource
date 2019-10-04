package com.koushikdutta.async.d;

import com.koushikdutta.async.l;
import java.io.IOException;
import java.io.InputStream;

public final class a extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    l f4503a;

    public a(l lVar) {
        this.f4503a = lVar;
    }

    public final int read() throws IOException {
        if (this.f4503a.remaining() <= 0) {
            return -1;
        }
        return this.f4503a.get();
    }

    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f4503a.remaining() <= 0) {
            return -1;
        }
        int min = Math.min(i2, this.f4503a.remaining());
        this.f4503a.get(bArr, i, min);
        return min;
    }
}
