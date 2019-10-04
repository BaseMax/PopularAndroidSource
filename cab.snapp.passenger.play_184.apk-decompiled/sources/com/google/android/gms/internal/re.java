package com.google.android.gms.internal;

import com.pusher.java_websocket.drafts.c;
import java.io.IOException;
import java.io.InputStream;

final class re extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private rd f3490a;

    /* renamed from: b  reason: collision with root package name */
    private pa f3491b;
    private int c;
    private int d;
    private int e;
    private int f;
    private /* synthetic */ rb g;

    public re(rb rbVar) {
        this.g = rbVar;
        a();
    }

    private final int a(byte[] bArr, int i, int i2) {
        int i3 = i;
        int i4 = i2;
        while (true) {
            if (i4 <= 0) {
                break;
            }
            b();
            if (this.f3491b != null) {
                int min = Math.min(this.c - this.d, i4);
                if (bArr != null) {
                    this.f3491b.zza(bArr, this.d, i3, min);
                    i3 += min;
                }
                this.d += min;
                i4 -= min;
            } else if (i4 == i2) {
                return -1;
            }
        }
        return i2 - i4;
    }

    private final void a() {
        this.f3490a = new rd(this.g, (byte) 0);
        this.f3491b = (pa) this.f3490a.next();
        this.c = this.f3491b.size();
        this.d = 0;
        this.e = 0;
    }

    private final void b() {
        if (this.f3491b != null) {
            int i = this.d;
            int i2 = this.c;
            if (i == i2) {
                this.e += i2;
                this.d = 0;
                if (this.f3490a.hasNext()) {
                    this.f3491b = (pa) this.f3490a.next();
                    this.c = this.f3491b.size();
                    return;
                }
                this.f3491b = null;
                this.c = 0;
            }
        }
    }

    public final int available() throws IOException {
        return this.g.size() - (this.e + this.d);
    }

    public final void mark(int i) {
        this.f = this.e + this.d;
    }

    public final boolean markSupported() {
        return true;
    }

    public final int read() throws IOException {
        b();
        pa paVar = this.f3491b;
        if (paVar == null) {
            return -1;
        }
        int i = this.d;
        this.d = i + 1;
        return paVar.zzkn(i) & c.END_OF_FRAME;
    }

    public final int read(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException();
        } else if (i >= 0 && i2 >= 0 && i2 <= bArr.length - i) {
            return a(bArr, i, i2);
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    public final synchronized void reset() {
        a();
        a(null, 0, this.f);
    }

    public final long skip(long j) {
        if (j >= 0) {
            if (j > 2147483647L) {
                j = 2147483647L;
            }
            return (long) a(null, 0, (int) j);
        }
        throw new IndexOutOfBoundsException();
    }
}
