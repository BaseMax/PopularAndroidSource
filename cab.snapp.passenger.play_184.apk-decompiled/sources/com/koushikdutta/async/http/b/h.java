package com.koushikdutta.async.http.b;

import com.koushikdutta.async.e.b;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

final class h implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f4671a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f4672b;
    private int c;
    private int d;

    public h(InputStream inputStream) {
        this(inputStream, 8192);
    }

    public h(InputStream inputStream, int i) {
        this(inputStream, i, b.US_ASCII);
    }

    public h(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public h(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null) {
            throw new NullPointerException("in == null");
        } else if (charset == null) {
            throw new NullPointerException("charset == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(b.US_ASCII) || charset.equals(b.UTF_8)) {
            this.f4671a = inputStream;
            this.f4672b = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public final void close() throws IOException {
        synchronized (this.f4671a) {
            if (this.f4672b != null) {
                this.f4672b = null;
                this.f4671a.close();
            }
        }
    }

    public final String readLine() throws IOException {
        int i;
        int i2;
        synchronized (this.f4671a) {
            if (this.f4672b != null) {
                if (this.c >= this.d) {
                    a();
                }
                for (int i3 = this.c; i3 != this.d; i3++) {
                    if (this.f4672b[i3] == 10) {
                        if (i3 != this.c) {
                            i2 = i3 - 1;
                            if (this.f4672b[i2] == 13) {
                                String str = new String(this.f4672b, this.c, i2 - this.c);
                                this.c = i3 + 1;
                                return str;
                            }
                        }
                        i2 = i3;
                        String str2 = new String(this.f4672b, this.c, i2 - this.c);
                        this.c = i3 + 1;
                        return str2;
                    }
                }
                AnonymousClass1 r1 = new ByteArrayOutputStream((this.d - this.c) + 80) {
                    public final String toString() {
                        return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + -1] != 13) ? this.count : this.count - 1);
                    }
                };
                loop1:
                while (true) {
                    r1.write(this.f4672b, this.c, this.d - this.c);
                    this.d = -1;
                    a();
                    i = this.c;
                    while (true) {
                        if (i != this.d) {
                            if (this.f4672b[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                }
                if (i != this.c) {
                    r1.write(this.f4672b, this.c, i - this.c);
                }
                this.c = i + 1;
                String byteArrayOutputStream = r1.toString();
                return byteArrayOutputStream;
            }
            throw new IOException("LineReader is closed");
        }
    }

    public final int readInt() throws IOException {
        String readLine = readLine();
        try {
            return Integer.parseInt(readLine);
        } catch (NumberFormatException unused) {
            throw new IOException("expected an int but was \"" + readLine + "\"");
        }
    }

    public final boolean hasUnterminatedLine() {
        return this.d == -1;
    }

    private void a() throws IOException {
        InputStream inputStream = this.f4671a;
        byte[] bArr = this.f4672b;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.c = 0;
            this.d = read;
            return;
        }
        throw new EOFException();
    }
}
