package com.bumptech.glide.a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

final class b implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final Charset f1984a;

    /* renamed from: b  reason: collision with root package name */
    private final InputStream f1985b;
    private byte[] c;
    private int d;
    private int e;

    public b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(c.f1987a)) {
            this.f1985b = inputStream;
            this.f1984a = charset;
            this.c = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public final void close() throws IOException {
        synchronized (this.f1985b) {
            if (this.c != null) {
                this.c = null;
                this.f1985b.close();
            }
        }
    }

    public final String readLine() throws IOException {
        int i;
        int i2;
        synchronized (this.f1985b) {
            if (this.c != null) {
                if (this.d >= this.e) {
                    a();
                }
                for (int i3 = this.d; i3 != this.e; i3++) {
                    if (this.c[i3] == 10) {
                        if (i3 != this.d) {
                            i2 = i3 - 1;
                            if (this.c[i2] == 13) {
                                String str = new String(this.c, this.d, i2 - this.d, this.f1984a.name());
                                this.d = i3 + 1;
                                return str;
                            }
                        }
                        i2 = i3;
                        String str2 = new String(this.c, this.d, i2 - this.d, this.f1984a.name());
                        this.d = i3 + 1;
                        return str2;
                    }
                }
                AnonymousClass1 r1 = new ByteArrayOutputStream((this.e - this.d) + 80) {
                    public final String toString() {
                        try {
                            return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + -1] != 13) ? this.count : this.count - 1, b.this.f1984a.name());
                        } catch (UnsupportedEncodingException e) {
                            throw new AssertionError(e);
                        }
                    }
                };
                loop1:
                while (true) {
                    r1.write(this.c, this.d, this.e - this.d);
                    this.e = -1;
                    a();
                    i = this.d;
                    while (true) {
                        if (i != this.e) {
                            if (this.c[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                }
                if (i != this.d) {
                    r1.write(this.c, this.d, i - this.d);
                }
                this.d = i + 1;
                String byteArrayOutputStream = r1.toString();
                return byteArrayOutputStream;
            }
            throw new IOException("LineReader is closed");
        }
    }

    public final boolean hasUnterminatedLine() {
        return this.e == -1;
    }

    private void a() throws IOException {
        InputStream inputStream = this.f1985b;
        byte[] bArr = this.c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.d = 0;
            this.e = read;
            return;
        }
        throw new EOFException();
    }
}
