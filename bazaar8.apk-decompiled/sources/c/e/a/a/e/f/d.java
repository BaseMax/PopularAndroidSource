package c.e.a.a.e.f;

import c.e.a.a.e.f.k;
import c.e.a.a.e.h;
import c.e.a.a.e.o;
import c.e.a.a.e.p;
import c.e.a.a.o.I;
import c.e.a.a.o.m;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: FlacReader */
public final class d extends k {
    public m n;
    public a o;

    /* compiled from: FlacReader */
    private class a implements h, o {

        /* renamed from: a  reason: collision with root package name */
        public long[] f7914a;

        /* renamed from: b  reason: collision with root package name */
        public long[] f7915b;

        /* renamed from: c  reason: collision with root package name */
        public long f7916c = -1;

        /* renamed from: d  reason: collision with root package name */
        public long f7917d = -1;

        public a() {
        }

        public o a() {
            return this;
        }

        public void a(v vVar) {
            vVar.f(1);
            int x = vVar.x() / 18;
            this.f7914a = new long[x];
            this.f7915b = new long[x];
            for (int i2 = 0; i2 < x; i2++) {
                this.f7914a[i2] = vVar.q();
                this.f7915b[i2] = vVar.q();
                vVar.f(2);
            }
        }

        public o.a b(long j2) {
            int b2 = I.b(this.f7914a, d.this.b(j2), true, true);
            long a2 = d.this.a(this.f7914a[b2]);
            p pVar = new p(a2, this.f7916c + this.f7915b[b2]);
            if (a2 < j2) {
                long[] jArr = this.f7914a;
                if (b2 != jArr.length - 1) {
                    int i2 = b2 + 1;
                    return new o.a(pVar, new p(d.this.a(jArr[i2]), this.f7916c + this.f7915b[i2]));
                }
            }
            return new o.a(pVar);
        }

        public long c(long j2) {
            long b2 = d.this.b(j2);
            this.f7917d = this.f7914a[I.b(this.f7914a, b2, true, true)];
            return b2;
        }

        public boolean c() {
            return true;
        }

        public void d(long j2) {
            this.f7916c = j2;
        }

        public long d() {
            return d.this.n.b();
        }

        public long a(h hVar) {
            long j2 = this.f7917d;
            if (j2 < 0) {
                return -1;
            }
            long j3 = -(j2 + 2);
            this.f7917d = -1;
            return j3;
        }
    }

    public static boolean c(v vVar) {
        return vVar.a() >= 5 && vVar.u() == 127 && vVar.w() == 1179402563;
    }

    public final int b(v vVar) {
        int i2;
        int i3;
        int i4 = (vVar.f9634a[2] & 255) >> 4;
        switch (i4) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                i2 = 576;
                i3 = i4 - 2;
                break;
            case 6:
            case 7:
                vVar.f(4);
                vVar.B();
                int u = i4 == 6 ? vVar.u() : vVar.A();
                vVar.e(0);
                return u + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i2 = 256;
                i3 = i4 - 8;
                break;
            default:
                return -1;
        }
        return i2 << i3;
    }

    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }

    public static boolean a(byte[] bArr) {
        return bArr[0] == -1;
    }

    public long a(v vVar) {
        if (!a(vVar.f9634a)) {
            return -1;
        }
        return (long) b(vVar);
    }

    public boolean a(v vVar, long j2, k.a aVar) {
        byte[] bArr = vVar.f9634a;
        if (this.n == null) {
            this.n = new m(bArr, 17);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, vVar.d());
            copyOfRange[4] = Byte.MIN_VALUE;
            List singletonList = Collections.singletonList(copyOfRange);
            int a2 = this.n.a();
            m mVar = this.n;
            aVar.f7952a = Format.a((String) null, "audio/flac", (String) null, -1, a2, mVar.f9600f, mVar.f9599e, (List<byte[]>) singletonList, (DrmInitData) null, 0, (String) null);
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            this.o = new a();
            this.o.a(vVar);
        } else if (a(bArr)) {
            a aVar2 = this.o;
            if (aVar2 != null) {
                aVar2.d(j2);
                aVar.f7953b = this.o;
            }
            return false;
        }
        return true;
    }
}
