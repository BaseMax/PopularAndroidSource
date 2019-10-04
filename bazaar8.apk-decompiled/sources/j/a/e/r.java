package j.a.e;

import j.a.e;
import j.a.e.b;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import k.g;
import k.h;
import okhttp3.internal.http2.ErrorCode;

/* compiled from: Http2Writer */
public final class r implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f15551a = Logger.getLogger(c.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public final h f15552b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f15553c;

    /* renamed from: d  reason: collision with root package name */
    public final g f15554d = new g();

    /* renamed from: e  reason: collision with root package name */
    public int f15555e = 16384;

    /* renamed from: f  reason: collision with root package name */
    public boolean f15556f;

    /* renamed from: g  reason: collision with root package name */
    public final b.C0151b f15557g = new b.C0151b(this.f15554d);

    public r(h hVar, boolean z) {
        this.f15552b = hVar;
        this.f15553c = z;
    }

    public synchronized void a(v vVar) {
        if (!this.f15556f) {
            this.f15555e = vVar.c(this.f15555e);
            if (vVar.b() != -1) {
                this.f15557g.b(vVar.b());
            }
            a(0, 0, (byte) 4, (byte) 1);
            this.f15552b.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void b(v vVar) {
        if (!this.f15556f) {
            int i2 = 0;
            a(0, vVar.d() * 6, (byte) 4, (byte) 0);
            while (i2 < 10) {
                if (vVar.d(i2)) {
                    this.f15552b.writeShort(i2 == 4 ? 3 : i2 == 7 ? 4 : i2);
                    this.f15552b.writeInt(vVar.a(i2));
                }
                i2++;
            }
            this.f15552b.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final void c(int i2, long j2) {
        while (j2 > 0) {
            int min = (int) Math.min((long) this.f15555e, j2);
            long j3 = (long) min;
            j2 -= j3;
            a(i2, min, (byte) 9, j2 == 0 ? (byte) 4 : 0);
            this.f15552b.a(this.f15554d, j3);
        }
    }

    public synchronized void close() {
        this.f15556f = true;
        this.f15552b.close();
    }

    public synchronized void flush() {
        if (!this.f15556f) {
            this.f15552b.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void s() {
        if (this.f15556f) {
            throw new IOException("closed");
        } else if (this.f15553c) {
            if (f15551a.isLoggable(Level.FINE)) {
                f15551a.fine(e.a(">> CONNECTION %s", c.f15450a.g()));
            }
            this.f15552b.write(c.f15450a.m());
            this.f15552b.flush();
        }
    }

    public int t() {
        return this.f15555e;
    }

    public synchronized void a(int i2, int i3, List<a> list) {
        if (!this.f15556f) {
            this.f15557g.a(list);
            long size = this.f15554d.size();
            int min = (int) Math.min((long) (this.f15555e - 4), size);
            long j2 = (long) min;
            a(i2, min + 4, (byte) 5, size == j2 ? (byte) 4 : 0);
            this.f15552b.writeInt(i3 & Integer.MAX_VALUE);
            this.f15552b.a(this.f15554d, j2);
            if (size > j2) {
                c(i2, size - j2);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void b(int i2, long j2) {
        if (this.f15556f) {
            throw new IOException("closed");
        } else if (j2 == 0 || j2 > 2147483647L) {
            c.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j2));
            throw null;
        } else {
            a(i2, 4, (byte) 8, (byte) 0);
            this.f15552b.writeInt((int) j2);
            this.f15552b.flush();
        }
    }

    public synchronized void a(boolean z, int i2, int i3, List<a> list) {
        if (!this.f15556f) {
            a(z, i2, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i2, ErrorCode errorCode) {
        if (this.f15556f) {
            throw new IOException("closed");
        } else if (errorCode.httpCode != -1) {
            a(i2, 4, (byte) 3, (byte) 0);
            this.f15552b.writeInt(errorCode.httpCode);
            this.f15552b.flush();
        } else {
            throw new IllegalArgumentException();
        }
    }

    public synchronized void a(boolean z, int i2, g gVar, int i3) {
        if (!this.f15556f) {
            byte b2 = 0;
            if (z) {
                b2 = (byte) 1;
            }
            a(i2, b2, gVar, i3);
        } else {
            throw new IOException("closed");
        }
    }

    public void a(int i2, byte b2, g gVar, int i3) {
        a(i2, i3, (byte) 0, b2);
        if (i3 > 0) {
            this.f15552b.a(gVar, (long) i3);
        }
    }

    public synchronized void a(boolean z, int i2, int i3) {
        if (!this.f15556f) {
            a(0, 8, (byte) 6, z ? (byte) 1 : 0);
            this.f15552b.writeInt(i2);
            this.f15552b.writeInt(i3);
            this.f15552b.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i2, ErrorCode errorCode, byte[] bArr) {
        if (this.f15556f) {
            throw new IOException("closed");
        } else if (errorCode.httpCode != -1) {
            a(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f15552b.writeInt(i2);
            this.f15552b.writeInt(errorCode.httpCode);
            if (bArr.length > 0) {
                this.f15552b.write(bArr);
            }
            this.f15552b.flush();
        } else {
            c.a("errorCode.httpCode == -1", new Object[0]);
            throw null;
        }
    }

    public void a(int i2, int i3, byte b2, byte b3) {
        if (f15551a.isLoggable(Level.FINE)) {
            f15551a.fine(c.a(false, i2, i3, b2, b3));
        }
        int i4 = this.f15555e;
        if (i3 > i4) {
            c.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i4), Integer.valueOf(i3));
            throw null;
        } else if ((Integer.MIN_VALUE & i2) == 0) {
            a(this.f15552b, i3);
            this.f15552b.writeByte(b2 & 255);
            this.f15552b.writeByte(b3 & 255);
            this.f15552b.writeInt(i2 & Integer.MAX_VALUE);
        } else {
            c.a("reserved bit set: %s", Integer.valueOf(i2));
            throw null;
        }
    }

    public static void a(h hVar, int i2) {
        hVar.writeByte((i2 >>> 16) & 255);
        hVar.writeByte((i2 >>> 8) & 255);
        hVar.writeByte(i2 & 255);
    }

    public void a(boolean z, int i2, List<a> list) {
        if (!this.f15556f) {
            this.f15557g.a(list);
            long size = this.f15554d.size();
            int min = (int) Math.min((long) this.f15555e, size);
            long j2 = (long) min;
            byte b2 = size == j2 ? (byte) 4 : 0;
            if (z) {
                b2 = (byte) (b2 | 1);
            }
            a(i2, min, (byte) 1, b2);
            this.f15552b.a(this.f15554d, j2);
            if (size > j2) {
                c(i2, size - j2);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
