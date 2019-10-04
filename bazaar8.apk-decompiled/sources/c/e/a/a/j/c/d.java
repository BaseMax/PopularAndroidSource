package c.e.a.a.j.c;

import android.util.Pair;
import android.util.SparseIntArray;
import c.e.a.a.V;
import c.e.a.a.j.C;
import c.e.a.a.j.D;
import c.e.a.a.j.b.g;
import c.e.a.a.j.c.a.b;
import c.e.a.a.j.c.a.f;
import c.e.a.a.j.c.a.j;
import c.e.a.a.j.c.c;
import c.e.a.a.j.c.k;
import c.e.a.a.j.q;
import c.e.a.a.j.s;
import c.e.a.a.j.u;
import c.e.a.a.j.w;
import c.e.a.a.l.n;
import c.e.a.a.n.A;
import c.e.a.a.n.e;
import c.e.a.a.n.v;
import c.e.a.a.n.x;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: DashMediaPeriod */
public final class d implements u, D.a<g<c>>, g.b<c> {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f8599a = Pattern.compile("CC([1-4])=(.+)");

    /* renamed from: b  reason: collision with root package name */
    public final int f8600b;

    /* renamed from: c  reason: collision with root package name */
    public final c.a f8601c;

    /* renamed from: d  reason: collision with root package name */
    public final A f8602d;

    /* renamed from: e  reason: collision with root package name */
    public final v f8603e;

    /* renamed from: f  reason: collision with root package name */
    public final long f8604f;

    /* renamed from: g  reason: collision with root package name */
    public final x f8605g;

    /* renamed from: h  reason: collision with root package name */
    public final e f8606h;

    /* renamed from: i  reason: collision with root package name */
    public final TrackGroupArray f8607i;

    /* renamed from: j  reason: collision with root package name */
    public final a[] f8608j;

    /* renamed from: k  reason: collision with root package name */
    public final q f8609k;

    /* renamed from: l  reason: collision with root package name */
    public final k f8610l;
    public final IdentityHashMap<g<c>, k.c> m = new IdentityHashMap<>();
    public final w.a n;
    public u.a o;
    public g<c>[] p = b(0);
    public j[] q = new j[0];
    public D r;
    public b s;
    public int t;
    public List<c.e.a.a.j.c.a.e> u;
    public boolean v;

    /* compiled from: DashMediaPeriod */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int[] f8611a;

        /* renamed from: b  reason: collision with root package name */
        public final int f8612b;

        /* renamed from: c  reason: collision with root package name */
        public final int f8613c;

        /* renamed from: d  reason: collision with root package name */
        public final int f8614d;

        /* renamed from: e  reason: collision with root package name */
        public final int f8615e;

        /* renamed from: f  reason: collision with root package name */
        public final int f8616f;

        /* renamed from: g  reason: collision with root package name */
        public final int f8617g;

        public a(int i2, int i3, int[] iArr, int i4, int i5, int i6, int i7) {
            this.f8612b = i2;
            this.f8611a = iArr;
            this.f8613c = i3;
            this.f8615e = i4;
            this.f8616f = i5;
            this.f8617g = i6;
            this.f8614d = i7;
        }

        public static a a(int i2, int[] iArr, int i3, int i4, int i5) {
            a aVar = new a(i2, 0, iArr, i3, i4, i5, -1);
            return aVar;
        }

        public static a b(int[] iArr, int i2) {
            a aVar = new a(4, 1, iArr, i2, -1, -1, -1);
            return aVar;
        }

        public static a a(int[] iArr, int i2) {
            a aVar = new a(3, 1, iArr, i2, -1, -1, -1);
            return aVar;
        }

        public static a a(int i2) {
            a aVar = new a(4, 2, new int[0], -1, -1, -1, i2);
            return aVar;
        }
    }

    public d(int i2, b bVar, int i3, c.a aVar, A a2, v vVar, w.a aVar2, long j2, x xVar, e eVar, q qVar, k.b bVar2) {
        this.f8600b = i2;
        this.s = bVar;
        this.t = i3;
        this.f8601c = aVar;
        this.f8602d = a2;
        this.f8603e = vVar;
        this.n = aVar2;
        this.f8604f = j2;
        this.f8605g = xVar;
        this.f8606h = eVar;
        this.f8609k = qVar;
        this.f8610l = new k(bVar, bVar2, eVar);
        this.r = qVar.a(this.p);
        f a3 = bVar.a(i3);
        this.u = a3.f8556d;
        Pair<TrackGroupArray, a[]> a4 = a(a3.f8555c, this.u);
        this.f8607i = (TrackGroupArray) a4.first;
        this.f8608j = (a[]) a4.second;
        aVar2.a();
    }

    public boolean b(long j2) {
        return this.r.b(j2);
    }

    public void c() {
        this.f8610l.d();
        for (g<c> a2 : this.p) {
            a2.a((g.b<c>) this);
        }
        this.o = null;
        this.n.b();
    }

    public void d() {
        this.f8605g.a();
    }

    public long e() {
        if (!this.v) {
            this.n.c();
            this.v = true;
        }
        return -9223372036854775807L;
    }

    public TrackGroupArray f() {
        return this.f8607i;
    }

    public long g() {
        return this.r.g();
    }

    public void a(b bVar, int i2) {
        this.s = bVar;
        this.t = i2;
        this.f8610l.a(bVar);
        g<c>[] gVarArr = this.p;
        if (gVarArr != null) {
            for (g<c> i3 : gVarArr) {
                i3.i().a(bVar, i2);
            }
            this.o.a(this);
        }
        this.u = bVar.a(i2).f8556d;
        for (j jVar : this.q) {
            Iterator<c.e.a.a.j.c.a.e> it = this.u.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                c.e.a.a.j.c.a.e next = it.next();
                if (next.a().equals(jVar.b())) {
                    boolean z = true;
                    int a2 = bVar.a() - 1;
                    if (!bVar.f8525d || i2 != a2) {
                        z = false;
                    }
                    jVar.a(next, z);
                }
            }
        }
    }

    public long b() {
        return this.r.b();
    }

    /* renamed from: b */
    public void a(g<c> gVar) {
        this.o.a(this);
    }

    public static int[][] b(List<c.e.a.a.j.c.a.a> list) {
        int size = list.size();
        SparseIntArray sparseIntArray = new SparseIntArray(size);
        for (int i2 = 0; i2 < size; i2++) {
            sparseIntArray.put(list.get(i2).f8517a, i2);
        }
        int[][] iArr = new int[size][];
        boolean[] zArr = new boolean[size];
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            if (!zArr[i4]) {
                zArr[i4] = true;
                c.e.a.a.j.c.a.d a2 = a(list.get(i4).f8521e);
                if (a2 == null) {
                    iArr[i3] = new int[]{i4};
                    i3++;
                } else {
                    String[] a3 = I.a(a2.f8546b, ",");
                    int[] iArr2 = new int[(a3.length + 1)];
                    iArr2[0] = i4;
                    int i5 = 1;
                    for (String parseInt : a3) {
                        int i6 = sparseIntArray.get(Integer.parseInt(parseInt), -1);
                        if (i6 != -1) {
                            zArr[i6] = true;
                            iArr2[i5] = i6;
                            i5++;
                        }
                    }
                    if (i5 < iArr2.length) {
                        iArr2 = Arrays.copyOf(iArr2, i5);
                    }
                    iArr[i3] = iArr2;
                    i3++;
                }
            }
        }
        return i3 < size ? (int[][]) Arrays.copyOf(iArr, i3) : iArr;
    }

    public void c(long j2) {
        this.r.c(j2);
    }

    public synchronized void a(g<c> gVar) {
        k.c remove = this.m.remove(gVar);
        if (remove != null) {
            remove.c();
        }
    }

    public void a(u.a aVar, long j2) {
        this.o = aVar;
        aVar.a(this);
    }

    public long a(n[] nVarArr, boolean[] zArr, C[] cArr, boolean[] zArr2, long j2) {
        int[] a2 = a(nVarArr);
        a(nVarArr, zArr, cArr);
        a(nVarArr, cArr, a2);
        a(nVarArr, cArr, zArr2, j2, a2);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (g gVar : cArr) {
            if (gVar instanceof g) {
                arrayList.add(gVar);
            } else if (gVar instanceof j) {
                arrayList2.add((j) gVar);
            }
        }
        this.p = b(arrayList.size());
        arrayList.toArray(this.p);
        this.q = new j[arrayList2.size()];
        arrayList2.toArray(this.q);
        this.r = this.f8609k.a(this.p);
        return j2;
    }

    public static boolean b(List<c.e.a.a.j.c.a.a> list, int[] iArr) {
        for (int i2 : iArr) {
            List<j> list2 = list.get(i2).f8519c;
            for (int i3 = 0; i3 < list2.size(); i3++) {
                if (!list2.get(i3).f8570e.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static g<c>[] b(int i2) {
        return new g[i2];
    }

    public void a(long j2, boolean z) {
        for (g<c> a2 : this.p) {
            a2.a(j2, z);
        }
    }

    public long a(long j2) {
        for (g<c> a2 : this.p) {
            a2.a(j2);
        }
        for (j a3 : this.q) {
            a3.a(j2);
        }
        return j2;
    }

    public long a(long j2, V v2) {
        for (g<c> gVar : this.p) {
            if (gVar.f8485a == 2) {
                return gVar.a(j2, v2);
            }
        }
        return j2;
    }

    public final int[] a(n[] nVarArr) {
        int[] iArr = new int[nVarArr.length];
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if (nVarArr[i2] != null) {
                iArr[i2] = this.f8607i.a(nVarArr[i2].a());
            } else {
                iArr[i2] = -1;
            }
        }
        return iArr;
    }

    public final void a(n[] nVarArr, boolean[] zArr, C[] cArr) {
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if (nVarArr[i2] == null || !zArr[i2]) {
                if (cArr[i2] instanceof g) {
                    cArr[i2].a(this);
                } else if (cArr[i2] instanceof g.a) {
                    cArr[i2].d();
                }
                cArr[i2] = null;
            }
        }
    }

    public final void a(n[] nVarArr, C[] cArr, int[] iArr) {
        boolean z;
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if ((cArr[i2] instanceof s) || (cArr[i2] instanceof g.a)) {
                int a2 = a(i2, iArr);
                if (a2 == -1) {
                    z = cArr[i2] instanceof s;
                } else {
                    z = (cArr[i2] instanceof g.a) && cArr[i2].f8497a == cArr[a2];
                }
                if (!z) {
                    if (cArr[i2] instanceof g.a) {
                        cArr[i2].d();
                    }
                    cArr[i2] = null;
                }
            }
        }
    }

    public final void a(n[] nVarArr, C[] cArr, boolean[] zArr, long j2, int[] iArr) {
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if (cArr[i2] == null && nVarArr[i2] != null) {
                zArr[i2] = true;
                a aVar = this.f8608j[iArr[i2]];
                int i3 = aVar.f8613c;
                if (i3 == 0) {
                    cArr[i2] = a(aVar, nVarArr[i2], j2);
                } else if (i3 == 2) {
                    cArr[i2] = new j(this.u.get(aVar.f8614d), nVarArr[i2].a().a(0), this.s.f8525d);
                }
            }
        }
        for (int i4 = 0; i4 < nVarArr.length; i4++) {
            if (cArr[i4] == null && nVarArr[i4] != null) {
                a aVar2 = this.f8608j[iArr[i4]];
                if (aVar2.f8613c == 1) {
                    int a2 = a(i4, iArr);
                    if (a2 == -1) {
                        cArr[i4] = new s();
                    } else {
                        cArr[i4] = cArr[a2].a(j2, aVar2.f8612b);
                    }
                }
            }
        }
    }

    public final int a(int i2, int[] iArr) {
        int i3 = iArr[i2];
        if (i3 == -1) {
            return -1;
        }
        int i4 = this.f8608j[i3].f8615e;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = iArr[i5];
            if (i6 == i4 && this.f8608j[i6].f8613c == 0) {
                return i5;
            }
        }
        return -1;
    }

    public static Pair<TrackGroupArray, a[]> a(List<c.e.a.a.j.c.a.a> list, List<c.e.a.a.j.c.a.e> list2) {
        int[][] b2 = b(list);
        int length = b2.length;
        boolean[] zArr = new boolean[length];
        Format[][] formatArr = new Format[length][];
        int a2 = a(length, list, b2, zArr, formatArr) + length + list2.size();
        TrackGroup[] trackGroupArr = new TrackGroup[a2];
        a[] aVarArr = new a[a2];
        a(list2, trackGroupArr, aVarArr, a(list, b2, length, zArr, formatArr, trackGroupArr, aVarArr));
        return Pair.create(new TrackGroupArray(trackGroupArr), aVarArr);
    }

    public static int a(int i2, List<c.e.a.a.j.c.a.a> list, int[][] iArr, boolean[] zArr, Format[][] formatArr) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (b(list, iArr[i4])) {
                zArr[i4] = true;
                i3++;
            }
            formatArr[i4] = a(list, iArr[i4]);
            if (formatArr[i4].length != 0) {
                i3++;
            }
        }
        return i3;
    }

    public static int a(List<c.e.a.a.j.c.a.a> list, int[][] iArr, int i2, boolean[] zArr, Format[][] formatArr, TrackGroup[] trackGroupArr, a[] aVarArr) {
        int i3;
        int i4;
        List<c.e.a.a.j.c.a.a> list2 = list;
        int i5 = i2;
        int i6 = 0;
        int i7 = 0;
        while (i6 < i5) {
            int[] iArr2 = iArr[i6];
            ArrayList arrayList = new ArrayList();
            for (int i8 : iArr2) {
                arrayList.addAll(list.get(i8).f8519c);
            }
            Format[] formatArr2 = new Format[arrayList.size()];
            for (int i9 = 0; i9 < formatArr2.length; i9++) {
                formatArr2[i9] = ((j) arrayList.get(i9)).f8567b;
            }
            c.e.a.a.j.c.a.a aVar = list.get(iArr2[0]);
            int i10 = i7 + 1;
            if (zArr[i6]) {
                i3 = i10 + 1;
            } else {
                i3 = i10;
                i10 = -1;
            }
            if (formatArr[i6].length != 0) {
                i4 = i3 + 1;
            } else {
                i4 = i3;
                i3 = -1;
            }
            trackGroupArr[i7] = new TrackGroup(formatArr2);
            aVarArr[i7] = a.a(aVar.f8518b, iArr2, i7, i10, i3);
            if (i10 != -1) {
                trackGroupArr[i10] = new TrackGroup(Format.a(aVar.f8517a + ":emsg", "application/x-emsg", (String) null, -1, (DrmInitData) null));
                aVarArr[i10] = a.b(iArr2, i7);
            }
            if (i3 != -1) {
                trackGroupArr[i3] = new TrackGroup(formatArr[i6]);
                aVarArr[i3] = a.a(iArr2, i7);
            }
            i6++;
            i7 = i4;
        }
        return i7;
    }

    public static void a(List<c.e.a.a.j.c.a.e> list, TrackGroup[] trackGroupArr, a[] aVarArr, int i2) {
        int i3 = i2;
        int i4 = 0;
        while (i4 < list.size()) {
            trackGroupArr[i3] = new TrackGroup(Format.a(list.get(i4).a(), "application/x-emsg", (String) null, -1, (DrmInitData) null));
            aVarArr[i3] = a.a(i4);
            i4++;
            i3++;
        }
    }

    public final g<c> a(a aVar, n nVar, long j2) {
        TrackGroup trackGroup;
        int i2;
        TrackGroup trackGroup2;
        int i3;
        a aVar2 = aVar;
        boolean z = aVar2.f8616f != -1;
        k.c cVar = null;
        if (z) {
            trackGroup = this.f8607i.a(aVar2.f8616f);
            i2 = 1;
        } else {
            trackGroup = null;
            i2 = 0;
        }
        boolean z2 = aVar2.f8617g != -1;
        if (z2) {
            trackGroup2 = this.f8607i.a(aVar2.f8617g);
            i2 += trackGroup2.f12695a;
        } else {
            trackGroup2 = null;
        }
        Format[] formatArr = new Format[i2];
        int[] iArr = new int[i2];
        if (z) {
            formatArr[0] = trackGroup.a(0);
            iArr[0] = 4;
            i3 = 1;
        } else {
            i3 = 0;
        }
        ArrayList arrayList = new ArrayList();
        if (z2) {
            for (int i4 = 0; i4 < trackGroup2.f12695a; i4++) {
                formatArr[i3] = trackGroup2.a(i4);
                iArr[i3] = 3;
                arrayList.add(formatArr[i3]);
                i3++;
            }
        }
        if (this.s.f8525d && z) {
            cVar = this.f8610l.b();
        }
        k.c cVar2 = cVar;
        k.c cVar3 = cVar2;
        g gVar = new g(aVar2.f8612b, iArr, formatArr, this.f8601c.a(this.f8605g, this.s, this.t, aVar2.f8611a, nVar, aVar2.f8612b, this.f8604f, z, arrayList, cVar2, this.f8602d), this, this.f8606h, j2, this.f8603e, this.n);
        synchronized (this) {
            this.m.put(gVar, cVar3);
        }
        return gVar;
    }

    public static c.e.a.a.j.c.a.d a(List<c.e.a.a.j.c.a.d> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            c.e.a.a.j.c.a.d dVar = list.get(i2);
            if ("urn:mpeg:dash:adaptation-set-switching:2016".equals(dVar.f8545a)) {
                return dVar;
            }
        }
        return null;
    }

    public static Format[] a(List<c.e.a.a.j.c.a.a> list, int[] iArr) {
        for (int i2 : iArr) {
            c.e.a.a.j.c.a.a aVar = list.get(i2);
            List<c.e.a.a.j.c.a.d> list2 = list.get(i2).f8520d;
            for (int i3 = 0; i3 < list2.size(); i3++) {
                c.e.a.a.j.c.a.d dVar = list2.get(i3);
                if ("urn:scte:dash:cc:cea-608:2015".equals(dVar.f8545a)) {
                    String str = dVar.f8546b;
                    if (str == null) {
                        return new Format[]{a(aVar.f8517a)};
                    }
                    String[] a2 = I.a(str, ";");
                    Format[] formatArr = new Format[a2.length];
                    for (int i4 = 0; i4 < a2.length; i4++) {
                        Matcher matcher = f8599a.matcher(a2[i4]);
                        if (!matcher.matches()) {
                            return new Format[]{a(aVar.f8517a)};
                        }
                        formatArr[i4] = a(aVar.f8517a, matcher.group(2), Integer.parseInt(matcher.group(1)));
                    }
                    return formatArr;
                }
            }
        }
        return new Format[0];
    }

    public static Format a(int i2) {
        return a(i2, (String) null, -1);
    }

    public static Format a(int i2, String str, int i3) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append(i2);
        sb.append(":cea608");
        if (i3 != -1) {
            str2 = ":" + i3;
        } else {
            str2 = "";
        }
        sb.append(str2);
        return Format.a(sb.toString(), "application/cea-608", (String) null, -1, 0, str, i3, (DrmInitData) null, Long.MAX_VALUE, (List<byte[]>) null);
    }
}
