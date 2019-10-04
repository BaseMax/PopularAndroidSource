package c.e.a.a.j.d;

import android.net.Uri;
import android.os.Handler;
import c.e.a.a.E;
import c.e.a.a.e.f;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.j.B;
import c.e.a.a.j.C;
import c.e.a.a.j.D;
import c.e.a.a.j.b.d;
import c.e.a.a.j.w;
import c.e.a.a.n.e;
import c.e.a.a.n.v;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.HlsChunkSource;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: HlsSampleStreamWrapper */
public final class o implements Loader.a<d>, Loader.e, D, i, B.b {
    public int A;
    public Format B;
    public Format C;
    public boolean D;
    public TrackGroupArray E;
    public TrackGroupArray F;
    public int[] G;
    public int H;
    public boolean I;
    public boolean[] J = new boolean[0];
    public boolean[] K = new boolean[0];
    public long L;
    public long M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public long R;
    public int S;

    /* renamed from: a  reason: collision with root package name */
    public final int f8838a;

    /* renamed from: b  reason: collision with root package name */
    public final a f8839b;

    /* renamed from: c  reason: collision with root package name */
    public final HlsChunkSource f8840c;

    /* renamed from: d  reason: collision with root package name */
    public final e f8841d;

    /* renamed from: e  reason: collision with root package name */
    public final Format f8842e;

    /* renamed from: f  reason: collision with root package name */
    public final v f8843f;

    /* renamed from: g  reason: collision with root package name */
    public final Loader f8844g = new Loader("Loader:HlsSampleStreamWrapper");

    /* renamed from: h  reason: collision with root package name */
    public final w.a f8845h;

    /* renamed from: i  reason: collision with root package name */
    public final HlsChunkSource.b f8846i = new HlsChunkSource.b();

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList<j> f8847j = new ArrayList<>();

    /* renamed from: k  reason: collision with root package name */
    public final List<j> f8848k = Collections.unmodifiableList(this.f8847j);

    /* renamed from: l  reason: collision with root package name */
    public final Runnable f8849l = new c(this);
    public final Runnable m = new b(this);
    public final Handler n = new Handler();
    public final ArrayList<n> o = new ArrayList<>();
    public final Map<String, DrmInitData> p;
    public B[] q = new B[0];
    public int[] r = new int[0];
    public boolean s;
    public int t = -1;
    public boolean u;
    public int v = -1;
    public int w;
    public int x;
    public boolean y;
    public boolean z;

    /* compiled from: HlsSampleStreamWrapper */
    public interface a extends D.a<o> {
        void a();

        void a(Uri uri);
    }

    /* compiled from: HlsSampleStreamWrapper */
    private static final class b extends B {
        public b(e eVar) {
            super(eVar);
        }

        public void a(Format format) {
            super.a(format.a(a(format.f12512g)));
        }

        public final Metadata a(Metadata metadata) {
            if (metadata == null) {
                return null;
            }
            int a2 = metadata.a();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= a2) {
                    i3 = -1;
                    break;
                }
                Metadata.Entry a3 = metadata.a(i3);
                if ((a3 instanceof PrivFrame) && "com.apple.streaming.transportStreamTimestamp".equals(((PrivFrame) a3).f12641b)) {
                    break;
                }
                i3++;
            }
            if (i3 == -1) {
                return metadata;
            }
            if (a2 == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[(a2 - 1)];
            while (i2 < a2) {
                if (i2 != i3) {
                    entryArr[i2 < i3 ? i2 : i2 - 1] = metadata.a(i2);
                }
                i2++;
            }
            return new Metadata(entryArr);
        }
    }

    public o(int i2, a aVar, HlsChunkSource hlsChunkSource, Map<String, DrmInitData> map, e eVar, long j2, Format format, v vVar, w.a aVar2) {
        this.f8838a = i2;
        this.f8839b = aVar;
        this.f8840c = hlsChunkSource;
        this.p = map;
        this.f8841d = eVar;
        this.f8842e = format;
        this.f8843f = vVar;
        this.f8845h = aVar2;
        this.L = j2;
        this.M = j2;
    }

    public static int b(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return i2 != 3 ? 0 : 1;
        }
        return 3;
    }

    public void a(c.e.a.a.e.o oVar) {
    }

    public boolean b(long j2, boolean z2) {
        this.L = j2;
        if (k()) {
            this.M = j2;
            return true;
        } else if (this.y && !z2 && d(j2)) {
            return false;
        } else {
            this.M = j2;
            this.P = false;
            this.f8847j.clear();
            if (this.f8844g.c()) {
                this.f8844g.b();
            } else {
                q();
            }
            return true;
        }
    }

    public void c(long j2) {
    }

    public boolean c(int i2) {
        return this.P || (!k() && this.q[i2].j());
    }

    public void d() {
        n();
    }

    public void e(long j2) {
        this.R = j2;
        for (B c2 : this.q) {
            c2.c(j2);
        }
    }

    public TrackGroupArray f() {
        return this.E;
    }

    public long g() {
        ArrayList<j> arrayList;
        if (this.P) {
            return Long.MIN_VALUE;
        }
        if (k()) {
            return this.M;
        }
        long j2 = this.L;
        j j3 = j();
        if (!j3.h()) {
            if (this.f8847j.size() > 1) {
                j3 = arrayList.get(this.f8847j.size() - 2);
            } else {
                j3 = null;
            }
        }
        if (j3 != null) {
            j2 = Math.max(j2, j3.f8465g);
        }
        if (this.y) {
            for (B f2 : this.q) {
                j2 = Math.max(j2, f2.f());
            }
        }
        return j2;
    }

    public void h() {
        q();
    }

    public void i() {
        if (!this.z) {
            b(this.L);
        }
    }

    public final j j() {
        ArrayList<j> arrayList = this.f8847j;
        return arrayList.get(arrayList.size() - 1);
    }

    public final boolean k() {
        return this.M != -9223372036854775807L;
    }

    public final void l() {
        int i2 = this.E.f12699b;
        this.G = new int[i2];
        Arrays.fill(this.G, -1);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = 0;
            while (true) {
                B[] bArr = this.q;
                if (i4 >= bArr.length) {
                    break;
                } else if (a(bArr[i4].h(), this.E.a(i3).a(0))) {
                    this.G[i3] = i4;
                    break;
                } else {
                    i4++;
                }
            }
        }
        Iterator<n> it = this.o.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public final void m() {
        if (!this.D && this.G == null && this.y) {
            B[] bArr = this.q;
            int length = bArr.length;
            int i2 = 0;
            while (i2 < length) {
                if (bArr[i2].h() != null) {
                    i2++;
                } else {
                    return;
                }
            }
            if (this.E != null) {
                l();
            } else {
                c();
                this.z = true;
                this.f8839b.a();
            }
        }
    }

    public void n() {
        this.f8844g.a();
        this.f8840c.c();
    }

    public final void o() {
        this.y = true;
        m();
    }

    public void p() {
        if (this.z) {
            for (B b2 : this.q) {
                b2.b();
            }
        }
        this.f8844g.a((Loader.e) this);
        this.n.removeCallbacksAndMessages(null);
        this.D = true;
        this.o.clear();
    }

    public final void q() {
        for (B a2 : this.q) {
            a2.a(this.N);
        }
        this.N = false;
    }

    public final void c() {
        int length = this.q.length;
        boolean z2 = false;
        int i2 = 0;
        int i3 = 6;
        int i4 = -1;
        while (true) {
            int i5 = 2;
            if (i2 >= length) {
                break;
            }
            String str = this.q[i2].h().f12514i;
            if (!s.l(str)) {
                if (s.j(str)) {
                    i5 = 1;
                } else {
                    i5 = s.k(str) ? 3 : 6;
                }
            }
            if (b(i5) > b(i3)) {
                i4 = i2;
                i3 = i5;
            } else if (i5 == i3 && i4 != -1) {
                i4 = -1;
            }
            i2++;
        }
        TrackGroup a2 = this.f8840c.a();
        int i6 = a2.f12695a;
        this.H = -1;
        this.G = new int[length];
        for (int i7 = 0; i7 < length; i7++) {
            this.G[i7] = i7;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        for (int i8 = 0; i8 < length; i8++) {
            Format h2 = this.q[i8].h();
            if (i8 == i4) {
                Format[] formatArr = new Format[i6];
                if (i6 == 1) {
                    formatArr[0] = h2.a(a2.a(0));
                } else {
                    for (int i9 = 0; i9 < i6; i9++) {
                        formatArr[i9] = a(a2.a(i9), h2, true);
                    }
                }
                trackGroupArr[i8] = new TrackGroup(formatArr);
                this.H = i8;
            } else {
                trackGroupArr[i8] = new TrackGroup(a((i3 != 2 || !s.j(h2.f12514i)) ? null : this.f8842e, h2, false));
            }
        }
        this.E = new TrackGroupArray(trackGroupArr);
        if (this.F == null) {
            z2 = true;
        }
        C0737e.b(z2);
        this.F = TrackGroupArray.f12698a;
    }

    public void d(int i2) {
        int i3 = this.G[i2];
        C0737e.b(this.J[i3]);
        this.J[i3] = false;
    }

    public void a(TrackGroupArray trackGroupArray, int i2, TrackGroupArray trackGroupArray2) {
        this.z = true;
        this.E = trackGroupArray;
        this.F = trackGroupArray2;
        this.H = i2;
        Handler handler = this.n;
        a aVar = this.f8839b;
        aVar.getClass();
        handler.post(new a(aVar));
    }

    public final boolean d(long j2) {
        int length = this.q.length;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= length) {
                return true;
            }
            B b2 = this.q[i2];
            b2.n();
            if (b2.a(j2, true, false) == -1) {
                z2 = false;
            }
            if (z2 || (!this.K[i2] && this.I)) {
                i2++;
            }
        }
        return false;
    }

    public int a(int i2) {
        int i3 = this.G[i2];
        int i4 = -2;
        if (i3 == -1) {
            if (this.F.a(this.E.a(i2)) != -1) {
                i4 = -3;
            }
            return i4;
        }
        boolean[] zArr = this.J;
        if (zArr[i3]) {
            return -2;
        }
        zArr[i3] = true;
        return i3;
    }

    public long b() {
        if (k()) {
            return this.M;
        }
        return this.P ? Long.MIN_VALUE : j().f8465g;
    }

    /* JADX WARNING: Removed duplicated region for block: B:67:0x0132  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x013c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(c.e.a.a.l.n[] r20, boolean[] r21, c.e.a.a.j.C[] r22, boolean[] r23, long r24, boolean r26) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            r2 = r22
            r12 = r24
            boolean r3 = r0.z
            c.e.a.a.o.C0737e.b(r3)
            int r3 = r0.A
            r14 = 0
            r4 = 0
        L_0x0011:
            int r5 = r1.length
            r6 = 0
            r15 = 1
            if (r4 >= r5) goto L_0x0033
            r5 = r2[r4]
            if (r5 == 0) goto L_0x0030
            r5 = r1[r4]
            if (r5 == 0) goto L_0x0022
            boolean r5 = r21[r4]
            if (r5 != 0) goto L_0x0030
        L_0x0022:
            int r5 = r0.A
            int r5 = r5 - r15
            r0.A = r5
            r5 = r2[r4]
            c.e.a.a.j.d.n r5 = (c.e.a.a.j.d.n) r5
            r5.e()
            r2[r4] = r6
        L_0x0030:
            int r4 = r4 + 1
            goto L_0x0011
        L_0x0033:
            if (r26 != 0) goto L_0x0045
            boolean r4 = r0.O
            if (r4 == 0) goto L_0x003c
            if (r3 != 0) goto L_0x0043
            goto L_0x0045
        L_0x003c:
            long r3 = r0.L
            int r5 = (r12 > r3 ? 1 : (r12 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x0043
            goto L_0x0045
        L_0x0043:
            r3 = 0
            goto L_0x0046
        L_0x0045:
            r3 = 1
        L_0x0046:
            com.google.android.exoplayer2.source.hls.HlsChunkSource r4 = r0.f8840c
            c.e.a.a.l.n r4 = r4.b()
            r16 = r3
            r11 = r4
            r3 = 0
        L_0x0050:
            int r5 = r1.length
            if (r3 >= r5) goto L_0x00b0
            r5 = r2[r3]
            if (r5 != 0) goto L_0x00ad
            r5 = r1[r3]
            if (r5 == 0) goto L_0x00ad
            int r5 = r0.A
            int r5 = r5 + r15
            r0.A = r5
            r5 = r1[r3]
            com.google.android.exoplayer2.source.TrackGroupArray r7 = r0.E
            com.google.android.exoplayer2.source.TrackGroup r8 = r5.a()
            int r7 = r7.a((com.google.android.exoplayer2.source.TrackGroup) r8)
            int r8 = r0.H
            if (r7 != r8) goto L_0x0076
            com.google.android.exoplayer2.source.hls.HlsChunkSource r8 = r0.f8840c
            r8.a((c.e.a.a.l.n) r5)
            r11 = r5
        L_0x0076:
            c.e.a.a.j.d.n r5 = new c.e.a.a.j.d.n
            r5.<init>(r0, r7)
            r2[r3] = r5
            r23[r3] = r15
            int[] r5 = r0.G
            if (r5 == 0) goto L_0x008a
            r5 = r2[r3]
            c.e.a.a.j.d.n r5 = (c.e.a.a.j.d.n) r5
            r5.b()
        L_0x008a:
            boolean r5 = r0.y
            if (r5 == 0) goto L_0x00ad
            if (r16 != 0) goto L_0x00ad
            c.e.a.a.j.B[] r5 = r0.q
            int[] r8 = r0.G
            r7 = r8[r7]
            r5 = r5[r7]
            r5.n()
            int r7 = r5.a((long) r12, (boolean) r15, (boolean) r15)
            r8 = -1
            if (r7 != r8) goto L_0x00ab
            int r5 = r5.g()
            if (r5 == 0) goto L_0x00ab
            r16 = 1
            goto L_0x00ad
        L_0x00ab:
            r16 = 0
        L_0x00ad:
            int r3 = r3 + 1
            goto L_0x0050
        L_0x00b0:
            int r1 = r0.A
            if (r1 != 0) goto L_0x00e5
            com.google.android.exoplayer2.source.hls.HlsChunkSource r1 = r0.f8840c
            r1.d()
            r0.C = r6
            java.util.ArrayList<c.e.a.a.j.d.j> r1 = r0.f8847j
            r1.clear()
            com.google.android.exoplayer2.upstream.Loader r1 = r0.f8844g
            boolean r1 = r1.c()
            if (r1 == 0) goto L_0x00e0
            boolean r1 = r0.y
            if (r1 == 0) goto L_0x00d9
            c.e.a.a.j.B[] r1 = r0.q
            int r3 = r1.length
        L_0x00cf:
            if (r14 >= r3) goto L_0x00d9
            r4 = r1[r14]
            r4.b()
            int r14 = r14 + 1
            goto L_0x00cf
        L_0x00d9:
            com.google.android.exoplayer2.upstream.Loader r1 = r0.f8844g
            r1.b()
            goto L_0x014b
        L_0x00e0:
            r19.q()
            goto L_0x014b
        L_0x00e5:
            java.util.ArrayList<c.e.a.a.j.d.j> r1 = r0.f8847j
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L_0x0138
            boolean r1 = c.e.a.a.o.I.a((java.lang.Object) r11, (java.lang.Object) r4)
            if (r1 != 0) goto L_0x0138
            boolean r1 = r0.O
            if (r1 != 0) goto L_0x012f
            r3 = 0
            int r1 = (r12 > r3 ? 1 : (r12 == r3 ? 0 : -1))
            if (r1 >= 0) goto L_0x00fe
            long r3 = -r12
        L_0x00fe:
            r6 = r3
            c.e.a.a.j.d.j r1 = r19.j()
            com.google.android.exoplayer2.source.hls.HlsChunkSource r3 = r0.f8840c
            c.e.a.a.j.b.n[] r17 = r3.a((c.e.a.a.j.d.j) r1, (long) r12)
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            java.util.List<c.e.a.a.j.d.j> r10 = r0.f8848k
            r3 = r11
            r4 = r24
            r18 = r11
            r11 = r17
            r3.a(r4, r6, r8, r10, r11)
            com.google.android.exoplayer2.source.hls.HlsChunkSource r3 = r0.f8840c
            com.google.android.exoplayer2.source.TrackGroup r3 = r3.a()
            com.google.android.exoplayer2.Format r1 = r1.f8461c
            int r1 = r3.a((com.google.android.exoplayer2.Format) r1)
            int r3 = r18.d()
            if (r3 == r1) goto L_0x012d
            goto L_0x012f
        L_0x012d:
            r1 = 0
            goto L_0x0130
        L_0x012f:
            r1 = 1
        L_0x0130:
            if (r1 == 0) goto L_0x0138
            r0.N = r15
            r1 = 1
            r16 = 1
            goto L_0x013a
        L_0x0138:
            r1 = r26
        L_0x013a:
            if (r16 == 0) goto L_0x014b
            r0.b((long) r12, (boolean) r1)
        L_0x013f:
            int r1 = r2.length
            if (r14 >= r1) goto L_0x014b
            r1 = r2[r14]
            if (r1 == 0) goto L_0x0148
            r23[r14] = r15
        L_0x0148:
            int r14 = r14 + 1
            goto L_0x013f
        L_0x014b:
            r0.a((c.e.a.a.j.C[]) r2)
            r0.O = r15
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.d.o.a(c.e.a.a.l.n[], boolean[], c.e.a.a.j.C[], boolean[], long, boolean):boolean");
    }

    public boolean b(long j2) {
        List<j> list;
        long max;
        if (this.P || this.f8844g.c()) {
            return false;
        }
        if (k()) {
            list = Collections.emptyList();
            max = this.M;
        } else {
            list = this.f8848k;
            j j3 = j();
            if (j3.h()) {
                max = j3.f8465g;
            } else {
                max = Math.max(this.L, j3.f8464f);
            }
        }
        this.f8840c.a(j2, max, list, this.f8846i);
        HlsChunkSource.b bVar = this.f8846i;
        boolean z2 = bVar.f12716b;
        d dVar = bVar.f12715a;
        Uri uri = bVar.f12717c;
        bVar.a();
        if (z2) {
            this.M = -9223372036854775807L;
            this.P = true;
            return true;
        } else if (dVar == null) {
            if (uri != null) {
                this.f8839b.a(uri);
            }
            return false;
        } else {
            if (a(dVar)) {
                this.M = -9223372036854775807L;
                j jVar = (j) dVar;
                jVar.a(this);
                this.f8847j.add(jVar);
                this.B = jVar.f8461c;
            }
            this.f8845h.a(dVar.f8459a, dVar.f8460b, this.f8838a, dVar.f8461c, dVar.f8462d, dVar.f8463e, dVar.f8464f, dVar.f8465g, this.f8844g.a(dVar, this, this.f8843f.a(dVar.f8460b)));
            return true;
        }
    }

    public static f b(int i2, int i3) {
        p.d("HlsSampleStreamWrapper", "Unmapped track with id " + i2 + " of type " + i3);
        return new f();
    }

    public void a(long j2, boolean z2) {
        if (this.y && !k()) {
            int length = this.q.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.q[i2].b(j2, z2, this.J[i2]);
            }
        }
    }

    public void a(boolean z2) {
        this.f8840c.a(z2);
    }

    public boolean a(Uri uri, long j2) {
        return this.f8840c.a(uri, j2);
    }

    public int a(int i2, E e2, c.e.a.a.c.f fVar, boolean z2) {
        if (k()) {
            return -3;
        }
        int i3 = 0;
        if (!this.f8847j.isEmpty()) {
            int i4 = 0;
            while (i4 < this.f8847j.size() - 1 && a(this.f8847j.get(i4))) {
                i4++;
            }
            I.a(this.f8847j, 0, i4);
            j jVar = this.f8847j.get(0);
            Format format = jVar.f8461c;
            if (!format.equals(this.C)) {
                this.f8845h.a(this.f8838a, format, jVar.f8462d, jVar.f8463e, jVar.f8464f);
            }
            this.C = format;
        }
        int a2 = this.q[i2].a(e2, fVar, z2, this.P, this.L);
        if (a2 == -5) {
            Format format2 = e2.f7255a;
            if (i2 == this.x) {
                int l2 = this.q[i2].l();
                while (i3 < this.f8847j.size() && this.f8847j.get(i3).f8803k != l2) {
                    i3++;
                }
                format2 = format2.a(i3 < this.f8847j.size() ? this.f8847j.get(i3).f8461c : this.B);
            }
            DrmInitData drmInitData = format2.f12517l;
            if (drmInitData != null) {
                DrmInitData drmInitData2 = this.p.get(drmInitData.f12564c);
                if (drmInitData2 != null) {
                    format2 = format2.a(drmInitData2);
                }
            }
            e2.f7255a = format2;
        }
        return a2;
    }

    public int a(int i2, long j2) {
        if (k()) {
            return 0;
        }
        B b2 = this.q[i2];
        if (this.P && j2 > b2.f()) {
            return b2.a();
        }
        int a2 = b2.a(j2, true, true);
        if (a2 == -1) {
            a2 = 0;
        }
        return a2;
    }

    public void a(d dVar, long j2, long j3) {
        d dVar2 = dVar;
        this.f8840c.a(dVar2);
        this.f8845h.b(dVar2.f8459a, dVar.f(), dVar.e(), dVar2.f8460b, this.f8838a, dVar2.f8461c, dVar2.f8462d, dVar2.f8463e, dVar2.f8464f, dVar2.f8465g, j2, j3, dVar.c());
        if (!this.z) {
            b(this.L);
        } else {
            this.f8839b.a(this);
        }
    }

    public void a(d dVar, long j2, long j3, boolean z2) {
        d dVar2 = dVar;
        this.f8845h.a(dVar2.f8459a, dVar.f(), dVar.e(), dVar2.f8460b, this.f8838a, dVar2.f8461c, dVar2.f8462d, dVar2.f8463e, dVar2.f8464f, dVar2.f8465g, j2, j3, dVar.c());
        if (!z2) {
            q();
            if (this.A > 0) {
                this.f8839b.a(this);
            }
        }
    }

    public Loader.b a(d dVar, long j2, long j3, IOException iOException, int i2) {
        Loader.b a2;
        d dVar2 = dVar;
        long c2 = dVar.c();
        boolean a3 = a(dVar);
        long b2 = this.f8843f.b(dVar2.f8460b, j3, iOException, i2);
        boolean z2 = false;
        boolean a4 = b2 != -9223372036854775807L ? this.f8840c.a(dVar2, b2) : false;
        if (a4) {
            if (a3 && c2 == 0) {
                ArrayList<j> arrayList = this.f8847j;
                if (arrayList.remove(arrayList.size() - 1) == dVar2) {
                    z2 = true;
                }
                C0737e.b(z2);
                if (this.f8847j.isEmpty()) {
                    this.M = this.L;
                }
            }
            a2 = Loader.f12876c;
        } else {
            long a5 = this.f8843f.a(dVar2.f8460b, j3, iOException, i2);
            a2 = a5 != -9223372036854775807L ? Loader.a(false, a5) : Loader.f12877d;
        }
        Loader.b bVar = a2;
        this.f8845h.a(dVar2.f8459a, dVar.f(), dVar.e(), dVar2.f8460b, this.f8838a, dVar2.f8461c, dVar2.f8462d, dVar2.f8463e, dVar2.f8464f, dVar2.f8465g, j2, j3, c2, iOException, !bVar.a());
        if (a4) {
            if (!this.z) {
                b(this.L);
            } else {
                this.f8839b.a(this);
            }
        }
        return bVar;
    }

    public void a(int i2, boolean z2, boolean z3) {
        if (!z3) {
            this.s = false;
            this.u = false;
        }
        this.S = i2;
        for (B e2 : this.q) {
            e2.e(i2);
        }
        if (z2) {
            for (B o2 : this.q) {
                o2.o();
            }
        }
    }

    public q a(int i2, int i3) {
        q qVar;
        q qVar2;
        q[] qVarArr = this.q;
        int length = qVarArr.length;
        boolean z2 = false;
        if (i3 == 1) {
            int i4 = this.t;
            if (i4 != -1) {
                if (this.s) {
                    if (this.r[i4] == i2) {
                        qVar2 = qVarArr[i4];
                    } else {
                        qVar2 = b(i2, i3);
                    }
                    return qVar2;
                }
                this.s = true;
                this.r[i4] = i2;
                return qVarArr[i4];
            } else if (this.Q) {
                return b(i2, i3);
            }
        } else if (i3 == 2) {
            int i5 = this.v;
            if (i5 != -1) {
                if (this.u) {
                    if (this.r[i5] == i2) {
                        qVar = qVarArr[i5];
                    } else {
                        qVar = b(i2, i3);
                    }
                    return qVar;
                }
                this.u = true;
                this.r[i5] = i2;
                return qVarArr[i5];
            } else if (this.Q) {
                return b(i2, i3);
            }
        } else {
            for (int i6 = 0; i6 < length; i6++) {
                if (this.r[i6] == i2) {
                    return this.q[i6];
                }
            }
            if (this.Q) {
                return b(i2, i3);
            }
        }
        b bVar = new b(this.f8841d);
        bVar.c(this.R);
        bVar.e(this.S);
        bVar.a((B.b) this);
        int i7 = length + 1;
        this.r = Arrays.copyOf(this.r, i7);
        this.r[length] = i2;
        this.q = (B[]) Arrays.copyOf(this.q, i7);
        this.q[length] = bVar;
        this.K = Arrays.copyOf(this.K, i7);
        boolean[] zArr = this.K;
        if (i3 == 1 || i3 == 2) {
            z2 = true;
        }
        zArr[length] = z2;
        this.I |= this.K[length];
        if (i3 == 1) {
            this.s = true;
            this.t = length;
        } else if (i3 == 2) {
            this.u = true;
            this.v = length;
        }
        if (b(i3) > b(this.w)) {
            this.x = length;
            this.w = i3;
        }
        this.J = Arrays.copyOf(this.J, i7);
        return bVar;
    }

    public void a() {
        this.Q = true;
        this.n.post(this.m);
    }

    public void a(Format format) {
        this.n.post(this.f8849l);
    }

    public final void a(C[] cArr) {
        this.o.clear();
        for (n nVar : cArr) {
            if (nVar != null) {
                this.o.add(nVar);
            }
        }
    }

    public final boolean a(j jVar) {
        int i2 = jVar.f8803k;
        int length = this.q.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (this.J[i3] && this.q[i3].l() == i2) {
                return false;
            }
        }
        return true;
    }

    public static Format a(Format format, Format format2, boolean z2) {
        if (format == null) {
            return format2;
        }
        int i2 = z2 ? format.f12510e : -1;
        int i3 = format.v;
        if (i3 == -1) {
            i3 = format2.v;
        }
        int i4 = i3;
        String a2 = I.a(format.f12511f, s.f(format2.f12514i));
        String d2 = s.d(a2);
        if (d2 == null) {
            d2 = format2.f12514i;
        }
        return format2.a(format.f12506a, format.f12507b, d2, a2, format.f12512g, i2, format.n, format.o, i4, format.f12508c, format.A);
    }

    public static boolean a(d dVar) {
        return dVar instanceof j;
    }

    public static boolean a(Format format, Format format2) {
        String str = format.f12514i;
        String str2 = format2.f12514i;
        int f2 = s.f(str);
        boolean z2 = true;
        if (f2 != 3) {
            if (f2 != s.f(str2)) {
                z2 = false;
            }
            return z2;
        } else if (!I.a((Object) str, (Object) str2)) {
            return false;
        } else {
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                return true;
            }
            if (format.B != format2.B) {
                z2 = false;
            }
            return z2;
        }
    }
}
