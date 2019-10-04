package k;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* compiled from: InflaterSource */
public final class n implements z {

    /* renamed from: a  reason: collision with root package name */
    public final i f15750a;

    /* renamed from: b  reason: collision with root package name */
    public final Inflater f15751b;

    /* renamed from: c  reason: collision with root package name */
    public int f15752c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f15753d;

    public n(i iVar, Inflater inflater) {
        if (iVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater != null) {
            this.f15750a = iVar;
            this.f15751b = inflater;
        } else {
            throw new IllegalArgumentException("inflater == null");
        }
    }

    public long b(g gVar, long j2) {
        w b2;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        } else if (this.f15753d) {
            throw new IllegalStateException("closed");
        } else if (j2 == 0) {
            return 0;
        } else {
            while (true) {
                boolean e2 = e();
                try {
                    b2 = gVar.b(1);
                    int inflate = this.f15751b.inflate(b2.f15767a, b2.f15769c, (int) Math.min(j2, (long) (8192 - b2.f15769c)));
                    if (inflate > 0) {
                        b2.f15769c += inflate;
                        long j3 = (long) inflate;
                        gVar.f15741c += j3;
                        return j3;
                    } else if (this.f15751b.finished()) {
                        break;
                    } else if (this.f15751b.needsDictionary()) {
                        break;
                    } else if (e2) {
                        throw new EOFException("source exhausted prematurely");
                    }
                } catch (DataFormatException e3) {
                    throw new IOException(e3);
                }
            }
            l();
            if (b2.f15768b == b2.f15769c) {
                gVar.f15740b = b2.b();
                x.a(b2);
            }
            return -1;
        }
    }

    public void close() {
        if (!this.f15753d) {
            this.f15751b.end();
            this.f15753d = true;
            this.f15750a.close();
        }
    }

    public final boolean e() {
        if (!this.f15751b.needsInput()) {
            return false;
        }
        l();
        if (this.f15751b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        } else if (this.f15750a.d()) {
            return true;
        } else {
            w wVar = this.f15750a.a().f15740b;
            int i2 = wVar.f15769c;
            int i3 = wVar.f15768b;
            this.f15752c = i2 - i3;
            this.f15751b.setInput(wVar.f15767a, i3, this.f15752c);
            return false;
        }
    }

    public final void l() {
        int i2 = this.f15752c;
        if (i2 != 0) {
            int remaining = i2 - this.f15751b.getRemaining();
            this.f15752c -= remaining;
            this.f15750a.skip((long) remaining);
        }
    }

    public B b() {
        return this.f15750a.b();
    }
}
