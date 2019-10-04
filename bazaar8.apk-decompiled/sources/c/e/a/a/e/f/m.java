package c.e.a.a.e.f;

import c.e.a.a.e.f.k;
import c.e.a.a.e.f.n;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.ArrayList;
import java.util.List;

/* compiled from: VorbisReader */
public final class m extends k {
    public a n;
    public int o;
    public boolean p;
    public n.d q;
    public n.b r;

    /* compiled from: VorbisReader */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final n.d f7958a;

        /* renamed from: b  reason: collision with root package name */
        public final n.b f7959b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f7960c;

        /* renamed from: d  reason: collision with root package name */
        public final n.c[] f7961d;

        /* renamed from: e  reason: collision with root package name */
        public final int f7962e;

        public a(n.d dVar, n.b bVar, byte[] bArr, n.c[] cVarArr, int i2) {
            this.f7958a = dVar;
            this.f7959b = bVar;
            this.f7960c = bArr;
            this.f7961d = cVarArr;
            this.f7962e = i2;
        }
    }

    public static int a(byte b2, int i2, int i3) {
        return (b2 >> i3) & (255 >>> (8 - i2));
    }

    public static boolean c(v vVar) {
        try {
            return n.a(1, vVar, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }

    public a b(v vVar) {
        if (this.q == null) {
            this.q = n.b(vVar);
            return null;
        } else if (this.r == null) {
            this.r = n.a(vVar);
            return null;
        } else {
            byte[] bArr = new byte[vVar.d()];
            System.arraycopy(vVar.f9634a, 0, bArr, 0, vVar.d());
            n.c[] a2 = n.a(vVar, this.q.f7976b);
            a aVar = new a(this.q, this.r, bArr, a2, n.a(a2.length - 1));
            return aVar;
        }
    }

    public void c(long j2) {
        super.c(j2);
        int i2 = 0;
        this.p = j2 != 0;
        n.d dVar = this.q;
        if (dVar != null) {
            i2 = dVar.f7981g;
        }
        this.o = i2;
    }

    public long a(v vVar) {
        byte[] bArr = vVar.f9634a;
        int i2 = 0;
        if ((bArr[0] & 1) == 1) {
            return -1;
        }
        int a2 = a(bArr[0], this.n);
        if (this.p) {
            i2 = (this.o + a2) / 4;
        }
        long j2 = (long) i2;
        a(vVar, j2);
        this.p = true;
        this.o = a2;
        return j2;
    }

    public boolean a(v vVar, long j2, k.a aVar) {
        if (this.n != null) {
            return false;
        }
        this.n = b(vVar);
        if (this.n == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.n.f7958a.f7984j);
        arrayList.add(this.n.f7960c);
        n.d dVar = this.n.f7958a;
        aVar.f7952a = Format.a((String) null, "audio/vorbis", (String) null, dVar.f7979e, -1, dVar.f7976b, (int) dVar.f7977c, (List<byte[]>) arrayList, (DrmInitData) null, 0, (String) null);
        return true;
    }

    public static void a(v vVar, long j2) {
        vVar.d(vVar.d() + 4);
        vVar.f9634a[vVar.d() - 4] = (byte) ((int) (j2 & 255));
        vVar.f9634a[vVar.d() - 3] = (byte) ((int) ((j2 >>> 8) & 255));
        vVar.f9634a[vVar.d() - 2] = (byte) ((int) ((j2 >>> 16) & 255));
        vVar.f9634a[vVar.d() - 1] = (byte) ((int) ((j2 >>> 24) & 255));
    }

    public static int a(byte b2, a aVar) {
        if (!aVar.f7961d[a(b2, aVar.f7962e, 1)].f7971a) {
            return aVar.f7958a.f7981g;
        }
        return aVar.f7958a.f7982h;
    }
}
