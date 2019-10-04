package c.e.a.a.j.d;

import android.net.Uri;
import android.text.TextUtils;
import c.e.a.a.V;
import c.e.a.a.j.C;
import c.e.a.a.j.D;
import c.e.a.a.j.d.a.e;
import c.e.a.a.j.d.o;
import c.e.a.a.j.q;
import c.e.a.a.j.u;
import c.e.a.a.j.w;
import c.e.a.a.n.A;
import c.e.a.a.n.e;
import c.e.a.a.n.v;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.HlsChunkSource;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: HlsMediaPeriod */
public final class k implements u, o.a, HlsPlaylistTracker.b {

    /* renamed from: a  reason: collision with root package name */
    public final h f8805a;

    /* renamed from: b  reason: collision with root package name */
    public final HlsPlaylistTracker f8806b;

    /* renamed from: c  reason: collision with root package name */
    public final g f8807c;

    /* renamed from: d  reason: collision with root package name */
    public final A f8808d;

    /* renamed from: e  reason: collision with root package name */
    public final v f8809e;

    /* renamed from: f  reason: collision with root package name */
    public final w.a f8810f;

    /* renamed from: g  reason: collision with root package name */
    public final e f8811g;

    /* renamed from: h  reason: collision with root package name */
    public final IdentityHashMap<C, Integer> f8812h = new IdentityHashMap<>();

    /* renamed from: i  reason: collision with root package name */
    public final r f8813i = new r();

    /* renamed from: j  reason: collision with root package name */
    public final q f8814j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f8815k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f8816l;
    public u.a m;
    public int n;
    public TrackGroupArray o;
    public o[] p = new o[0];
    public o[] q = new o[0];
    public int[][] r = new int[0][];
    public D s;
    public boolean t;

    public k(h hVar, HlsPlaylistTracker hlsPlaylistTracker, g gVar, A a2, v vVar, w.a aVar, e eVar, q qVar, boolean z, boolean z2) {
        this.f8805a = hVar;
        this.f8806b = hlsPlaylistTracker;
        this.f8807c = gVar;
        this.f8808d = a2;
        this.f8809e = vVar;
        this.f8810f = aVar;
        this.f8811g = eVar;
        this.f8814j = qVar;
        this.f8815k = z;
        this.f8816l = z2;
        this.s = qVar.a(new D[0]);
        aVar.a();
    }

    public long a(long j2, V v) {
        return j2;
    }

    public boolean b(long j2) {
        if (this.o != null) {
            return this.s.b(j2);
        }
        for (o i2 : this.p) {
            i2.i();
        }
        return false;
    }

    public void c(long j2) {
        this.s.c(j2);
    }

    public void d() {
        for (o d2 : this.p) {
            d2.d();
        }
    }

    public long e() {
        if (!this.t) {
            this.f8810f.c();
            this.t = true;
        }
        return -9223372036854775807L;
    }

    public TrackGroupArray f() {
        return this.o;
    }

    public long g() {
        return this.s.g();
    }

    public void h() {
        this.f8806b.a((HlsPlaylistTracker.b) this);
        for (o p2 : this.p) {
            p2.p();
        }
        this.m = null;
        this.f8810f.b();
    }

    public void a(u.a aVar, long j2) {
        this.m = aVar;
        this.f8806b.b((HlsPlaylistTracker.b) this);
        d(j2);
    }

    public void c() {
        this.m.a(this);
    }

    public final void d(long j2) {
        Map<String, DrmInitData> map;
        c.e.a.a.j.d.a.e c2 = this.f8806b.c();
        C0737e.a(c2);
        c.e.a.a.j.d.a.e eVar = c2;
        if (this.f8816l) {
            map = a(eVar.n);
        } else {
            map = Collections.emptyMap();
        }
        Map<String, DrmInitData> map2 = map;
        boolean z = !eVar.f8731f.isEmpty();
        List<e.a> list = eVar.f8733h;
        List<e.a> list2 = eVar.f8734i;
        this.n = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            a(eVar, j2, (List<o>) arrayList, (List<int[]>) arrayList2, map2);
        }
        a(j2, list, (List<o>) arrayList, (List<int[]>) arrayList2, map2);
        int i2 = 0;
        while (i2 < list2.size()) {
            e.a aVar = list2.get(i2);
            int i3 = i2;
            o a2 = a(3, new Uri[]{aVar.f8738a}, new Format[]{aVar.f8739b}, null, Collections.emptyList(), map2, j2);
            arrayList2.add(new int[]{i3});
            arrayList.add(a2);
            a2.a(new TrackGroupArray(new TrackGroup(aVar.f8739b)), 0, TrackGroupArray.f12698a);
            i2 = i3 + 1;
        }
        this.p = (o[]) arrayList.toArray(new o[0]);
        this.r = (int[][]) arrayList2.toArray(new int[0][]);
        o[] oVarArr = this.p;
        this.n = oVarArr.length;
        oVarArr[0].a(true);
        for (o i4 : this.p) {
            i4.i();
        }
        this.q = this.p;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00ea, code lost:
        if (r5 != r8[0]) goto L_0x00ee;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long a(c.e.a.a.l.n[] r21, boolean[] r22, c.e.a.a.j.C[] r23, boolean[] r24, long r25) {
        /*
            r20 = this;
            r0 = r20
            r1 = r21
            r2 = r23
            int r3 = r1.length
            int[] r3 = new int[r3]
            int r4 = r1.length
            int[] r4 = new int[r4]
            r6 = 0
        L_0x000d:
            int r7 = r1.length
            if (r6 >= r7) goto L_0x004e
            r7 = r2[r6]
            r8 = -1
            if (r7 != 0) goto L_0x0017
            r7 = -1
            goto L_0x0025
        L_0x0017:
            java.util.IdentityHashMap<c.e.a.a.j.C, java.lang.Integer> r7 = r0.f8812h
            r9 = r2[r6]
            java.lang.Object r7 = r7.get(r9)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
        L_0x0025:
            r3[r6] = r7
            r4[r6] = r8
            r7 = r1[r6]
            if (r7 == 0) goto L_0x004b
            r7 = r1[r6]
            com.google.android.exoplayer2.source.TrackGroup r7 = r7.a()
            r9 = 0
        L_0x0034:
            c.e.a.a.j.d.o[] r10 = r0.p
            int r11 = r10.length
            if (r9 >= r11) goto L_0x004b
            r10 = r10[r9]
            com.google.android.exoplayer2.source.TrackGroupArray r10 = r10.f()
            int r10 = r10.a((com.google.android.exoplayer2.source.TrackGroup) r7)
            if (r10 == r8) goto L_0x0048
            r4[r6] = r9
            goto L_0x004b
        L_0x0048:
            int r9 = r9 + 1
            goto L_0x0034
        L_0x004b:
            int r6 = r6 + 1
            goto L_0x000d
        L_0x004e:
            java.util.IdentityHashMap<c.e.a.a.j.C, java.lang.Integer> r6 = r0.f8812h
            r6.clear()
            int r6 = r1.length
            c.e.a.a.j.C[] r6 = new c.e.a.a.j.C[r6]
            int r7 = r1.length
            c.e.a.a.j.C[] r7 = new c.e.a.a.j.C[r7]
            int r8 = r1.length
            c.e.a.a.l.n[] r15 = new c.e.a.a.l.n[r8]
            c.e.a.a.j.d.o[] r8 = r0.p
            int r8 = r8.length
            c.e.a.a.j.d.o[] r13 = new c.e.a.a.j.d.o[r8]
            r12 = 0
            r14 = 0
            r16 = 0
        L_0x0065:
            c.e.a.a.j.d.o[] r8 = r0.p
            int r8 = r8.length
            if (r14 >= r8) goto L_0x010a
            r8 = 0
        L_0x006b:
            int r9 = r1.length
            if (r8 >= r9) goto L_0x0084
            r9 = r3[r8]
            r10 = 0
            if (r9 != r14) goto L_0x0076
            r9 = r2[r8]
            goto L_0x0077
        L_0x0076:
            r9 = r10
        L_0x0077:
            r7[r8] = r9
            r9 = r4[r8]
            if (r9 != r14) goto L_0x007f
            r10 = r1[r8]
        L_0x007f:
            r15[r8] = r10
            int r8 = r8 + 1
            goto L_0x006b
        L_0x0084:
            c.e.a.a.j.d.o[] r8 = r0.p
            r11 = r8[r14]
            r8 = r11
            r9 = r15
            r10 = r22
            r5 = r11
            r11 = r7
            r2 = r12
            r12 = r24
            r17 = r2
            r18 = r13
            r2 = r14
            r13 = r25
            r19 = r15
            r15 = r16
            boolean r8 = r8.a(r9, r10, r11, r12, r13, r15)
            r9 = 0
            r10 = 0
        L_0x00a2:
            int r11 = r1.length
            r12 = 1
            if (r9 >= r11) goto L_0x00d5
            r11 = r4[r9]
            if (r11 != r2) goto L_0x00c5
            r10 = r7[r9]
            if (r10 == 0) goto L_0x00b0
            r10 = 1
            goto L_0x00b1
        L_0x00b0:
            r10 = 0
        L_0x00b1:
            c.e.a.a.o.C0737e.b(r10)
            r10 = r7[r9]
            r6[r9] = r10
            java.util.IdentityHashMap<c.e.a.a.j.C, java.lang.Integer> r10 = r0.f8812h
            r11 = r7[r9]
            java.lang.Integer r13 = java.lang.Integer.valueOf(r2)
            r10.put(r11, r13)
            r10 = 1
            goto L_0x00d2
        L_0x00c5:
            r11 = r3[r9]
            if (r11 != r2) goto L_0x00d2
            r11 = r7[r9]
            if (r11 != 0) goto L_0x00ce
            goto L_0x00cf
        L_0x00ce:
            r12 = 0
        L_0x00cf:
            c.e.a.a.o.C0737e.b(r12)
        L_0x00d2:
            int r9 = r9 + 1
            goto L_0x00a2
        L_0x00d5:
            if (r10 == 0) goto L_0x00fd
            r18[r17] = r5
            int r9 = r17 + 1
            if (r17 != 0) goto L_0x00f7
            r5.a((boolean) r12)
            if (r8 != 0) goto L_0x00ed
            c.e.a.a.j.d.o[] r8 = r0.q
            int r10 = r8.length
            if (r10 == 0) goto L_0x00ed
            r10 = 0
            r8 = r8[r10]
            if (r5 == r8) goto L_0x00fb
            goto L_0x00ee
        L_0x00ed:
            r10 = 0
        L_0x00ee:
            c.e.a.a.j.d.r r5 = r0.f8813i
            r5.a()
            r12 = r9
            r16 = 1
            goto L_0x0100
        L_0x00f7:
            r10 = 0
            r5.a((boolean) r10)
        L_0x00fb:
            r12 = r9
            goto L_0x0100
        L_0x00fd:
            r10 = 0
            r12 = r17
        L_0x0100:
            int r14 = r2 + 1
            r2 = r23
            r13 = r18
            r15 = r19
            goto L_0x0065
        L_0x010a:
            r17 = r12
            r18 = r13
            r10 = 0
            int r1 = r6.length
            r2 = r23
            java.lang.System.arraycopy(r6, r10, r2, r10, r1)
            r1 = r18
            java.lang.Object[] r1 = java.util.Arrays.copyOf(r1, r12)
            c.e.a.a.j.d.o[] r1 = (c.e.a.a.j.d.o[]) r1
            r0.q = r1
            c.e.a.a.j.q r1 = r0.f8814j
            c.e.a.a.j.d.o[] r2 = r0.q
            c.e.a.a.j.D r1 = r1.a(r2)
            r0.s = r1
            return r25
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.d.k.a(c.e.a.a.l.n[], boolean[], c.e.a.a.j.C[], boolean[], long):long");
    }

    public long b() {
        return this.s.b();
    }

    public void a(long j2, boolean z) {
        for (o a2 : this.q) {
            a2.a(j2, z);
        }
    }

    public long a(long j2) {
        o[] oVarArr = this.q;
        if (oVarArr.length > 0) {
            boolean b2 = oVarArr[0].b(j2, false);
            int i2 = 1;
            while (true) {
                o[] oVarArr2 = this.q;
                if (i2 >= oVarArr2.length) {
                    break;
                }
                oVarArr2[i2].b(j2, b2);
                i2++;
            }
            if (b2) {
                this.f8813i.a();
            }
        }
        return j2;
    }

    public void a() {
        int i2 = this.n - 1;
        this.n = i2;
        if (i2 <= 0) {
            int i3 = 0;
            for (o f2 : this.p) {
                i3 += f2.f().f12699b;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i3];
            o[] oVarArr = this.p;
            int length = oVarArr.length;
            int i4 = 0;
            int i5 = 0;
            while (i4 < length) {
                o oVar = oVarArr[i4];
                int i6 = oVar.f().f12699b;
                int i7 = i5;
                int i8 = 0;
                while (i8 < i6) {
                    trackGroupArr[i7] = oVar.f().a(i8);
                    i8++;
                    i7++;
                }
                i4++;
                i5 = i7;
            }
            this.o = new TrackGroupArray(trackGroupArr);
            this.m.a(this);
        }
    }

    public void a(Uri uri) {
        this.f8806b.c(uri);
    }

    public void a(o oVar) {
        this.m.a(this);
    }

    public boolean a(Uri uri, long j2) {
        boolean z = true;
        for (o a2 : this.p) {
            z &= a2.a(uri, j2);
        }
        this.m.a(this);
        return z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0068 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(c.e.a.a.j.d.a.e r20, long r21, java.util.List<c.e.a.a.j.d.o> r23, java.util.List<int[]> r24, java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> r25) {
        /*
            r19 = this;
            r0 = r20
            java.util.List<c.e.a.a.j.d.a.e$b> r1 = r0.f8731f
            int r1 = r1.size()
            int[] r1 = new int[r1]
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
        L_0x000e:
            java.util.List<c.e.a.a.j.d.a.e$b> r6 = r0.f8731f
            int r6 = r6.size()
            r7 = -1
            r8 = 2
            r9 = 1
            if (r3 >= r6) goto L_0x0047
            java.util.List<c.e.a.a.j.d.a.e$b> r6 = r0.f8731f
            java.lang.Object r6 = r6.get(r3)
            c.e.a.a.j.d.a.e$b r6 = (c.e.a.a.j.d.a.e.b) r6
            com.google.android.exoplayer2.Format r6 = r6.f8743b
            int r10 = r6.o
            if (r10 > 0) goto L_0x0040
            java.lang.String r10 = r6.f12511f
            java.lang.String r10 = c.e.a.a.o.I.a((java.lang.String) r10, (int) r8)
            if (r10 == 0) goto L_0x0030
            goto L_0x0040
        L_0x0030:
            java.lang.String r6 = r6.f12511f
            java.lang.String r6 = c.e.a.a.o.I.a((java.lang.String) r6, (int) r9)
            if (r6 == 0) goto L_0x003d
            r1[r3] = r9
            int r5 = r5 + 1
            goto L_0x0044
        L_0x003d:
            r1[r3] = r7
            goto L_0x0044
        L_0x0040:
            r1[r3] = r8
            int r4 = r4 + 1
        L_0x0044:
            int r3 = r3 + 1
            goto L_0x000e
        L_0x0047:
            int r3 = r1.length
            if (r4 <= 0) goto L_0x004c
            r3 = 1
            goto L_0x0057
        L_0x004c:
            int r4 = r1.length
            if (r5 >= r4) goto L_0x0055
            int r3 = r1.length
            int r4 = r3 - r5
            r3 = 0
            r5 = 1
            goto L_0x0058
        L_0x0055:
            r4 = r3
            r3 = 0
        L_0x0057:
            r5 = 0
        L_0x0058:
            android.net.Uri[] r12 = new android.net.Uri[r4]
            com.google.android.exoplayer2.Format[] r6 = new com.google.android.exoplayer2.Format[r4]
            int[] r15 = new int[r4]
            r10 = 0
            r11 = 0
        L_0x0060:
            java.util.List<c.e.a.a.j.d.a.e$b> r13 = r0.f8731f
            int r13 = r13.size()
            if (r10 >= r13) goto L_0x008c
            if (r3 == 0) goto L_0x006e
            r13 = r1[r10]
            if (r13 != r8) goto L_0x0089
        L_0x006e:
            if (r5 == 0) goto L_0x0074
            r13 = r1[r10]
            if (r13 == r9) goto L_0x0089
        L_0x0074:
            java.util.List<c.e.a.a.j.d.a.e$b> r13 = r0.f8731f
            java.lang.Object r13 = r13.get(r10)
            c.e.a.a.j.d.a.e$b r13 = (c.e.a.a.j.d.a.e.b) r13
            android.net.Uri r14 = r13.f8742a
            r12[r11] = r14
            com.google.android.exoplayer2.Format r13 = r13.f8743b
            r6[r11] = r13
            int r13 = r11 + 1
            r15[r11] = r10
            r11 = r13
        L_0x0089:
            int r10 = r10 + 1
            goto L_0x0060
        L_0x008c:
            r1 = r6[r2]
            java.lang.String r1 = r1.f12511f
            r11 = 0
            com.google.android.exoplayer2.Format r14 = r0.f8736k
            java.util.List<com.google.android.exoplayer2.Format> r3 = r0.f8737l
            r10 = r19
            r13 = r6
            r5 = r15
            r15 = r3
            r16 = r25
            r17 = r21
            c.e.a.a.j.d.o r3 = r10.a(r11, r12, r13, r14, r15, r16, r17)
            r10 = r23
            r10.add(r3)
            r10 = r24
            r10.add(r5)
            r5 = r19
            boolean r10 = r5.f8815k
            if (r10 == 0) goto L_0x018b
            if (r1 == 0) goto L_0x018b
            java.lang.String r8 = c.e.a.a.o.I.a((java.lang.String) r1, (int) r8)
            if (r8 == 0) goto L_0x00bc
            r8 = 1
            goto L_0x00bd
        L_0x00bc:
            r8 = 0
        L_0x00bd:
            java.lang.String r10 = c.e.a.a.o.I.a((java.lang.String) r1, (int) r9)
            if (r10 == 0) goto L_0x00c5
            r10 = 1
            goto L_0x00c6
        L_0x00c5:
            r10 = 0
        L_0x00c6:
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            if (r8 == 0) goto L_0x0128
            com.google.android.exoplayer2.Format[] r1 = new com.google.android.exoplayer2.Format[r4]
            r4 = 0
        L_0x00d0:
            int r8 = r1.length
            if (r4 >= r8) goto L_0x00de
            r8 = r6[r4]
            com.google.android.exoplayer2.Format r8 = a((com.google.android.exoplayer2.Format) r8)
            r1[r4] = r8
            int r4 = r4 + 1
            goto L_0x00d0
        L_0x00de:
            com.google.android.exoplayer2.source.TrackGroup r4 = new com.google.android.exoplayer2.source.TrackGroup
            r4.<init>((com.google.android.exoplayer2.Format[]) r1)
            r11.add(r4)
            if (r10 == 0) goto L_0x0108
            com.google.android.exoplayer2.Format r1 = r0.f8736k
            if (r1 != 0) goto L_0x00f4
            java.util.List<c.e.a.a.j.d.a.e$a> r1 = r0.f8733h
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L_0x0108
        L_0x00f4:
            com.google.android.exoplayer2.source.TrackGroup r1 = new com.google.android.exoplayer2.source.TrackGroup
            com.google.android.exoplayer2.Format[] r4 = new com.google.android.exoplayer2.Format[r9]
            r6 = r6[r2]
            com.google.android.exoplayer2.Format r8 = r0.f8736k
            com.google.android.exoplayer2.Format r6 = a(r6, r8, r2)
            r4[r2] = r6
            r1.<init>((com.google.android.exoplayer2.Format[]) r4)
            r11.add(r1)
        L_0x0108:
            java.util.List<com.google.android.exoplayer2.Format> r0 = r0.f8737l
            if (r0 == 0) goto L_0x0145
            r1 = 0
        L_0x010d:
            int r4 = r0.size()
            if (r1 >= r4) goto L_0x0145
            com.google.android.exoplayer2.source.TrackGroup r4 = new com.google.android.exoplayer2.source.TrackGroup
            com.google.android.exoplayer2.Format[] r6 = new com.google.android.exoplayer2.Format[r9]
            java.lang.Object r8 = r0.get(r1)
            com.google.android.exoplayer2.Format r8 = (com.google.android.exoplayer2.Format) r8
            r6[r2] = r8
            r4.<init>((com.google.android.exoplayer2.Format[]) r6)
            r11.add(r4)
            int r1 = r1 + 1
            goto L_0x010d
        L_0x0128:
            if (r10 == 0) goto L_0x0174
            com.google.android.exoplayer2.Format[] r1 = new com.google.android.exoplayer2.Format[r4]
            r4 = 0
        L_0x012d:
            int r8 = r1.length
            if (r4 >= r8) goto L_0x013d
            r8 = r6[r4]
            com.google.android.exoplayer2.Format r10 = r0.f8736k
            com.google.android.exoplayer2.Format r8 = a(r8, r10, r9)
            r1[r4] = r8
            int r4 = r4 + 1
            goto L_0x012d
        L_0x013d:
            com.google.android.exoplayer2.source.TrackGroup r0 = new com.google.android.exoplayer2.source.TrackGroup
            r0.<init>((com.google.android.exoplayer2.Format[]) r1)
            r11.add(r0)
        L_0x0145:
            com.google.android.exoplayer2.source.TrackGroup r0 = new com.google.android.exoplayer2.source.TrackGroup
            com.google.android.exoplayer2.Format[] r1 = new com.google.android.exoplayer2.Format[r9]
            r4 = 0
            java.lang.String r6 = "ID3"
            java.lang.String r8 = "application/id3"
            com.google.android.exoplayer2.Format r4 = com.google.android.exoplayer2.Format.a((java.lang.String) r6, (java.lang.String) r8, (java.lang.String) r4, (int) r7, (com.google.android.exoplayer2.drm.DrmInitData) r4)
            r1[r2] = r4
            r0.<init>((com.google.android.exoplayer2.Format[]) r1)
            r11.add(r0)
            com.google.android.exoplayer2.source.TrackGroupArray r1 = new com.google.android.exoplayer2.source.TrackGroupArray
            com.google.android.exoplayer2.source.TrackGroup[] r4 = new com.google.android.exoplayer2.source.TrackGroup[r2]
            java.lang.Object[] r4 = r11.toArray(r4)
            com.google.android.exoplayer2.source.TrackGroup[] r4 = (com.google.android.exoplayer2.source.TrackGroup[]) r4
            r1.<init>((com.google.android.exoplayer2.source.TrackGroup[]) r4)
            com.google.android.exoplayer2.source.TrackGroupArray r4 = new com.google.android.exoplayer2.source.TrackGroupArray
            com.google.android.exoplayer2.source.TrackGroup[] r6 = new com.google.android.exoplayer2.source.TrackGroup[r9]
            r6[r2] = r0
            r4.<init>((com.google.android.exoplayer2.source.TrackGroup[]) r6)
            r3.a((com.google.android.exoplayer2.source.TrackGroupArray) r1, (int) r2, (com.google.android.exoplayer2.source.TrackGroupArray) r4)
            goto L_0x018b
        L_0x0174:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unexpected codecs attribute: "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.<init>(r1)
            throw r0
        L_0x018b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.d.k.a(c.e.a.a.j.d.a.e, long, java.util.List, java.util.List, java.util.Map):void");
    }

    public final void a(long j2, List<e.a> list, List<o> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        List<e.a> list4 = list;
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = list4.get(i2).f8741d;
            if (!hashSet.add(str)) {
                List<o> list5 = list2;
                List<int[]> list6 = list3;
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z = true;
                for (int i3 = 0; i3 < list.size(); i3++) {
                    if (I.a((Object) str, (Object) list4.get(i3).f8741d)) {
                        e.a aVar = list4.get(i3);
                        arrayList3.add(Integer.valueOf(i3));
                        arrayList.add(aVar.f8738a);
                        arrayList2.add(aVar.f8739b);
                        z &= aVar.f8739b.f12511f != null;
                    }
                }
                o a2 = a(1, (Uri[]) arrayList.toArray(new Uri[0]), (Format[]) arrayList2.toArray(new Format[0]), null, Collections.emptyList(), map, j2);
                list3.add(I.a((List<Integer>) arrayList3));
                list2.add(a2);
                if (this.f8815k && z) {
                    a2.a(new TrackGroupArray(new TrackGroup((Format[]) arrayList2.toArray(new Format[0]))), 0, TrackGroupArray.f12698a);
                }
            }
        }
    }

    public final o a(int i2, Uri[] uriArr, Format[] formatArr, Format format, List<Format> list, Map<String, DrmInitData> map, long j2) {
        HlsChunkSource hlsChunkSource = new HlsChunkSource(this.f8805a, this.f8806b, uriArr, formatArr, this.f8807c, this.f8808d, this.f8813i, list);
        o oVar = new o(i2, this, hlsChunkSource, map, this.f8811g, j2, format, this.f8809e, this.f8810f);
        return oVar;
    }

    public static Map<String, DrmInitData> a(List<DrmInitData> list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap hashMap = new HashMap();
        int i2 = 0;
        while (i2 < arrayList.size()) {
            DrmInitData drmInitData = list.get(i2);
            String str = drmInitData.f12564c;
            i2++;
            DrmInitData drmInitData2 = drmInitData;
            int i3 = i2;
            while (i3 < arrayList.size()) {
                DrmInitData drmInitData3 = (DrmInitData) arrayList.get(i3);
                if (TextUtils.equals(drmInitData3.f12564c, str)) {
                    drmInitData2 = drmInitData2.a(drmInitData3);
                    arrayList.remove(i3);
                } else {
                    i3++;
                }
            }
            hashMap.put(str, drmInitData2);
        }
        return hashMap;
    }

    public static Format a(Format format) {
        String a2 = I.a(format.f12511f, 2);
        return Format.a(format.f12506a, format.f12507b, format.f12513h, s.d(a2), a2, format.f12510e, format.n, format.o, format.p, (List<byte[]>) null, format.f12508c, format.f12509d);
    }

    public static Format a(Format format, Format format2, boolean z) {
        String str;
        int i2;
        int i3;
        int i4;
        String str2;
        String str3;
        Format format3 = format;
        Format format4 = format2;
        if (format4 != null) {
            String str4 = format4.f12511f;
            int i5 = format4.v;
            int i6 = format4.f12508c;
            int i7 = format4.f12509d;
            String str5 = format4.A;
            str3 = format4.f12507b;
            str2 = str4;
            i4 = i5;
            i3 = i6;
            i2 = i7;
            str = str5;
        } else {
            String a2 = I.a(format3.f12511f, 1);
            if (z) {
                int i8 = format3.v;
                int i9 = format3.f12508c;
                i2 = format4.f12509d;
                i4 = i8;
                i3 = i9;
                str2 = a2;
                str = format3.A;
                str3 = format3.f12507b;
            } else {
                str3 = null;
                str = null;
                str2 = a2;
                i4 = -1;
                i3 = 0;
                i2 = 0;
            }
        }
        return Format.a(format3.f12506a, str3, format3.f12513h, s.d(str2), str2, z ? format3.f12510e : -1, i4, -1, (List<byte[]>) null, i3, i2, str);
    }
}
