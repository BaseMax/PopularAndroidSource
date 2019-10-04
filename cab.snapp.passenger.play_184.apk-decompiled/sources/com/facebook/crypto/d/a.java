package com.facebook.crypto.d;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

public final class a extends ByteArrayOutputStream {
    public a(int i) {
        super(i);
    }

    public final byte[] getBytes() throws IOException {
        if (this.buf.length == this.count) {
            return this.buf;
        }
        throw new IOException("Size supplied is too small");
    }
}
