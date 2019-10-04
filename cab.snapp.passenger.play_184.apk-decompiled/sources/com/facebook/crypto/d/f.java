package com.facebook.crypto.d;

import com.pusher.java_websocket.drafts.c;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class f extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f2464a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2465b;
    private int c;
    private boolean d;

    public final boolean markSupported() {
        return false;
    }

    protected f(InputStream inputStream, int i) {
        super(inputStream);
        this.f2464a = new byte[i];
        this.f2465b = i;
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

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.d) {
            return -1;
        }
        if (i2 == 0) {
            return 0;
        }
        int i3 = 0;
        while (i3 == 0) {
            int i4 = this.c;
            if (i2 >= i4) {
                int read = this.in.read(bArr, this.c + i, i2 - i4);
                if (read == -1) {
                    this.d = true;
                } else {
                    int i5 = this.c;
                    if (i5 > 0) {
                        System.arraycopy(this.f2464a, 0, bArr, i, i5);
                    }
                    int i6 = this.c + read;
                    int read2 = this.in.read(this.f2464a, 0, this.f2465b);
                    if (read2 == -1) {
                        this.d = true;
                        read2 = 0;
                    }
                    i3 = a(bArr, i6, read2, i);
                }
            } else {
                int i7 = i4 - i2;
                System.arraycopy(this.f2464a, 0, bArr, i, i2);
                byte[] bArr2 = this.f2464a;
                System.arraycopy(bArr2, i2, bArr2, 0, i7);
                int read3 = this.in.read(this.f2464a, i7, this.f2465b - i7);
                if (read3 == -1) {
                    byte[] bArr3 = this.f2464a;
                    System.arraycopy(bArr3, 0, bArr3, i2, i7);
                    System.arraycopy(bArr, i, this.f2464a, 0, i2);
                    this.d = true;
                } else {
                    i3 = a(bArr, i2, read3 + i7, i);
                }
            }
            i3 = -1;
        }
        return i3;
    }

    private int a(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.f2465b - i2;
        int max = Math.max(0, i - i4) + i3;
        int min = Math.min(i4, i);
        if (min > 0) {
            if (i2 > 0) {
                byte[] bArr2 = this.f2464a;
                System.arraycopy(bArr2, 0, bArr2, min, i2);
            }
            System.arraycopy(bArr, max, this.f2464a, 0, min);
        }
        this.c = min + i2;
        return max - i3;
    }

    public final byte[] getTail() throws IOException {
        if (this.c == this.f2465b) {
            return this.f2464a;
        }
        throw new IOException("Not enough tail data");
    }
}
