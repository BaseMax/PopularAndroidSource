package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import c.e.a.a.j.d.a.f;
import c.e.a.a.j.d.g;
import c.e.a.a.j.d.h;
import c.e.a.a.j.d.r;
import c.e.a.a.l.e;
import c.e.a.a.l.n;
import c.e.a.a.n.A;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.H;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class HlsChunkSource {

    /* renamed from: a  reason: collision with root package name */
    public final h f12702a;

    /* renamed from: b  reason: collision with root package name */
    public final j f12703b;

    /* renamed from: c  reason: collision with root package name */
    public final j f12704c;

    /* renamed from: d  reason: collision with root package name */
    public final r f12705d;

    /* renamed from: e  reason: collision with root package name */
    public final Uri[] f12706e;

    /* renamed from: f  reason: collision with root package name */
    public final Format[] f12707f;

    /* renamed from: g  reason: collision with root package name */
    public final HlsPlaylistTracker f12708g;

    /* renamed from: h  reason: collision with root package name */
    public final TrackGroup f12709h;

    /* renamed from: i  reason: collision with root package name */
    public final List<Format> f12710i;

    /* renamed from: j  reason: collision with root package name */
    public final FullSegmentEncryptionKeyCache f12711j = new FullSegmentEncryptionKeyCache();

    /* renamed from: k  reason: collision with root package name */
    public boolean f12712k;

    /* renamed from: l  reason: collision with root package name */
    public byte[] f12713l;
    public IOException m;
    public Uri n;
    public boolean o;
    public n p;
    public long q = -9223372036854775807L;
    public boolean r;

    private static final class FullSegmentEncryptionKeyCache extends LinkedHashMap<Uri, byte[]> {
        public FullSegmentEncryptionKeyCache() {
            super(8, 1.0f, false);
        }

        /* renamed from: a */
        public byte[] put(Uri uri, byte[] bArr) {
            C0737e.a(bArr);
            return (byte[]) super.put(uri, bArr);
        }

        public boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
            return size() > 4;
        }

        public byte[] get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (byte[]) super.get(obj);
        }
    }

    private static final class a extends c.e.a.a.j.b.j {

        /* renamed from: k  reason: collision with root package name */
        public byte[] f12714k;

        public a(j jVar, l lVar, Format format, int i2, Object obj, byte[] bArr) {
            super(jVar, lVar, 3, format, i2, obj, bArr);
        }

        public void a(byte[] bArr, int i2) {
            this.f12714k = Arrays.copyOf(bArr, i2);
        }

        public byte[] h() {
            return this.f12714k;
        }
    }

    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public c.e.a.a.j.b.d f12715a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f12716b;

        /* renamed from: c  reason: collision with root package name */
        public Uri f12717c;

        public b() {
            a();
        }

        public void a() {
            this.f12715a = null;
            this.f12716b = false;
            this.f12717c = null;
        }
    }

    private static final class c extends c.e.a.a.j.b.b {

        /* renamed from: d  reason: collision with root package name */
        public final f f12718d;

        /* renamed from: e  reason: collision with root package name */
        public final long f12719e;

        public c(f fVar, long j2, int i2) {
            super((long) i2, (long) (fVar.o.size() - 1));
            this.f12718d = fVar;
            this.f12719e = j2;
        }
    }

    private static final class d extends e {

        /* renamed from: g  reason: collision with root package name */
        public int f12720g;

        public d(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.f12720g = a(trackGroup.a(0));
        }

        public void a(long j2, long j3, long j4, List<? extends c.e.a.a.j.b.l> list, c.e.a.a.j.b.n[] nVarArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (b(this.f12720g, elapsedRealtime)) {
                for (int i2 = this.f9316b - 1; i2 >= 0; i2--) {
                    if (!b(i2, elapsedRealtime)) {
                        this.f12720g = i2;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        public int b() {
            return this.f12720g;
        }

        public int g() {
            return 0;
        }

        public Object h() {
            return null;
        }
    }

    public HlsChunkSource(h hVar, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, g gVar, A a2, r rVar, List<Format> list) {
        this.f12702a = hVar;
        this.f12708g = hlsPlaylistTracker;
        this.f12706e = uriArr;
        this.f12707f = formatArr;
        this.f12705d = rVar;
        this.f12710i = list;
        this.f12703b = gVar.a(1);
        if (a2 != null) {
            this.f12703b.a(a2);
        }
        this.f12704c = gVar.a(3);
        this.f12709h = new TrackGroup(formatArr);
        int[] iArr = new int[uriArr.length];
        for (int i2 = 0; i2 < uriArr.length; i2++) {
            iArr[i2] = i2;
        }
        this.p = new d(this.f12709h, iArr);
    }

    public TrackGroup a() {
        return this.f12709h;
    }

    public n b() {
        return this.p;
    }

    public void c() {
        IOException iOException = this.m;
        if (iOException == null) {
            Uri uri = this.n;
            if (uri != null && this.r) {
                this.f12708g.b(uri);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void d() {
        this.m = null;
    }

    public void a(n nVar) {
        this.p = nVar;
    }

    public void a(boolean z) {
        this.f12712k = z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x006f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x007e  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x008e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(long r29, long r31, java.util.List<c.e.a.a.j.d.j> r33, com.google.android.exoplayer2.source.hls.HlsChunkSource.b r34) {
        /*
            r28 = this;
            r8 = r28
            r6 = r31
            r9 = r34
            boolean r0 = r33.isEmpty()
            r11 = 1
            if (r0 == 0) goto L_0x0011
            r1 = r33
            r4 = 0
            goto L_0x001f
        L_0x0011:
            int r0 = r33.size()
            int r0 = r0 - r11
            r1 = r33
            java.lang.Object r0 = r1.get(r0)
            c.e.a.a.j.d.j r0 = (c.e.a.a.j.d.j) r0
            r4 = r0
        L_0x001f:
            if (r4 != 0) goto L_0x0024
            r0 = -1
            r5 = -1
            goto L_0x002d
        L_0x0024:
            com.google.android.exoplayer2.source.TrackGroup r0 = r8.f12709h
            com.google.android.exoplayer2.Format r2 = r4.f8461c
            int r0 = r0.a((com.google.android.exoplayer2.Format) r2)
            r5 = r0
        L_0x002d:
            long r2 = r6 - r29
            long r12 = r28.a((long) r29)
            if (r4 == 0) goto L_0x0056
            boolean r0 = r8.o
            if (r0 != 0) goto L_0x0056
            long r14 = r4.d()
            long r2 = r2 - r14
            r10 = 0
            long r2 = java.lang.Math.max(r10, r2)
            r16 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r0 == 0) goto L_0x0056
            long r12 = r12 - r14
            long r10 = java.lang.Math.max(r10, r12)
            r15 = r2
            r17 = r10
            goto L_0x0059
        L_0x0056:
            r15 = r2
            r17 = r12
        L_0x0059:
            c.e.a.a.j.b.n[] r20 = r8.a((c.e.a.a.j.d.j) r4, (long) r6)
            c.e.a.a.l.n r12 = r8.p
            r13 = r29
            r19 = r33
            r12.a(r13, r15, r17, r19, r20)
            c.e.a.a.l.n r0 = r8.p
            int r10 = r0.d()
            r11 = 0
            if (r5 == r10) goto L_0x0071
            r12 = 1
            goto L_0x0072
        L_0x0071:
            r12 = 0
        L_0x0072:
            android.net.Uri[] r0 = r8.f12706e
            r13 = r0[r10]
            com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker r0 = r8.f12708g
            boolean r0 = r0.a((android.net.Uri) r13)
            if (r0 != 0) goto L_0x008e
            r9.f12717c = r13
            boolean r0 = r8.r
            android.net.Uri r1 = r8.n
            boolean r1 = r13.equals(r1)
            r0 = r0 & r1
            r8.r = r0
            r8.n = r13
            return
        L_0x008e:
            com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker r0 = r8.f12708g
            r1 = 1
            c.e.a.a.j.d.a.f r14 = r0.a(r13, r1)
            boolean r0 = r14.f8771c
            r8.o = r0
            r8.a((c.e.a.a.j.d.a.f) r14)
            long r0 = r14.f8750f
            com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker r2 = r8.f12708g
            long r2 = r2.a()
            long r15 = r0 - r2
            r0 = r28
            r1 = r4
            r2 = r12
            r3 = r14
            r25 = r4
            r17 = r5
            r4 = r15
            r6 = r31
            long r0 = r0.a(r1, r2, r3, r4, r6)
            long r2 = r14.f8753i
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L_0x00df
            if (r25 == 0) goto L_0x00df
            if (r12 == 0) goto L_0x00df
            android.net.Uri[] r0 = r8.f12706e
            r0 = r0[r17]
            com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker r1 = r8.f12708g
            r2 = 1
            c.e.a.a.j.d.a.f r1 = r1.a(r0, r2)
            long r2 = r1.f8750f
            com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker r4 = r8.f12708g
            long r4 = r4.a()
            long r2 = r2 - r4
            long r4 = r25.g()
            r15 = r2
            r10 = r17
            r3 = r0
            r2 = r1
            r0 = r4
            goto L_0x00e1
        L_0x00df:
            r3 = r13
            r2 = r14
        L_0x00e1:
            long r4 = r2.f8753i
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 >= 0) goto L_0x00ef
            com.google.android.exoplayer2.source.BehindLiveWindowException r0 = new com.google.android.exoplayer2.source.BehindLiveWindowException
            r0.<init>()
            r8.m = r0
            return
        L_0x00ef:
            long r0 = r0 - r4
            int r1 = (int) r0
            java.util.List<c.e.a.a.j.d.a.f$a> r0 = r2.o
            int r0 = r0.size()
            if (r1 < r0) goto L_0x0111
            boolean r0 = r2.f8756l
            if (r0 == 0) goto L_0x0101
            r0 = 1
            r9.f12716b = r0
            goto L_0x0110
        L_0x0101:
            r9.f12717c = r3
            boolean r0 = r8.r
            android.net.Uri r1 = r8.n
            boolean r1 = r3.equals(r1)
            r0 = r0 & r1
            r8.r = r0
            r8.n = r3
        L_0x0110:
            return
        L_0x0111:
            r8.r = r11
            r0 = 0
            r8.n = r0
            java.util.List<c.e.a.a.j.d.a.f$a> r0 = r2.o
            java.lang.Object r0 = r0.get(r1)
            c.e.a.a.j.d.a.f$a r0 = (c.e.a.a.j.d.a.f.a) r0
            c.e.a.a.j.d.a.f$a r4 = r0.f8758b
            android.net.Uri r4 = a((c.e.a.a.j.d.a.f) r2, (c.e.a.a.j.d.a.f.a) r4)
            c.e.a.a.j.b.d r5 = r8.a((android.net.Uri) r4, (int) r10)
            r9.f12715a = r5
            c.e.a.a.j.b.d r5 = r9.f12715a
            if (r5 == 0) goto L_0x012f
            return
        L_0x012f:
            android.net.Uri r0 = a((c.e.a.a.j.d.a.f) r2, (c.e.a.a.j.d.a.f.a) r0)
            c.e.a.a.j.b.d r5 = r8.a((android.net.Uri) r0, (int) r10)
            r9.f12715a = r5
            c.e.a.a.j.b.d r5 = r9.f12715a
            if (r5 == 0) goto L_0x013e
            return
        L_0x013e:
            c.e.a.a.j.d.h r12 = r8.f12702a
            c.e.a.a.n.j r13 = r8.f12703b
            com.google.android.exoplayer2.Format[] r5 = r8.f12707f
            r14 = r5[r10]
            java.util.List<com.google.android.exoplayer2.Format> r5 = r8.f12710i
            c.e.a.a.l.n r6 = r8.p
            int r21 = r6.g()
            c.e.a.a.l.n r6 = r8.p
            java.lang.Object r22 = r6.h()
            boolean r6 = r8.f12712k
            c.e.a.a.j.d.r r7 = r8.f12705d
            com.google.android.exoplayer2.source.hls.HlsChunkSource$FullSegmentEncryptionKeyCache r10 = r8.f12711j
            byte[] r26 = r10.get((java.lang.Object) r0)
            com.google.android.exoplayer2.source.hls.HlsChunkSource$FullSegmentEncryptionKeyCache r0 = r8.f12711j
            byte[] r27 = r0.get((java.lang.Object) r4)
            r17 = r2
            r18 = r1
            r19 = r3
            r20 = r5
            r23 = r6
            r24 = r7
            c.e.a.a.j.d.j r0 = c.e.a.a.j.d.j.a(r12, r13, r14, r15, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27)
            r9.f12715a = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsChunkSource.a(long, long, java.util.List, com.google.android.exoplayer2.source.hls.HlsChunkSource$b):void");
    }

    public void a(c.e.a.a.j.b.d dVar) {
        if (dVar instanceof a) {
            a aVar = (a) dVar;
            this.f12713l = aVar.g();
            this.f12711j.put(aVar.f8459a.f9466a, aVar.h());
        }
    }

    public boolean a(c.e.a.a.j.b.d dVar, long j2) {
        n nVar = this.p;
        return nVar.a(nVar.c(this.f12709h.a(dVar.f8461c)), j2);
    }

    public boolean a(Uri uri, long j2) {
        boolean z = false;
        int i2 = 0;
        while (true) {
            Uri[] uriArr = this.f12706e;
            if (i2 >= uriArr.length) {
                i2 = -1;
                break;
            } else if (uriArr[i2].equals(uri)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1) {
            return true;
        }
        int c2 = this.p.c(i2);
        if (c2 == -1) {
            return true;
        }
        this.r = uri.equals(this.n) | this.r;
        if (j2 == -9223372036854775807L || this.p.a(c2, j2)) {
            z = true;
        }
        return z;
    }

    public c.e.a.a.j.b.n[] a(c.e.a.a.j.d.j jVar, long j2) {
        c.e.a.a.j.d.j jVar2 = jVar;
        int a2 = jVar2 == null ? -1 : this.f12709h.a(jVar2.f8461c);
        c.e.a.a.j.b.n[] nVarArr = new c.e.a.a.j.b.n[this.p.length()];
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            int b2 = this.p.b(i2);
            Uri uri = this.f12706e[b2];
            if (!this.f12708g.a(uri)) {
                nVarArr[i2] = c.e.a.a.j.b.n.f8509a;
            } else {
                f a3 = this.f12708g.a(uri, false);
                long a4 = a3.f8750f - this.f12708g.a();
                long j3 = a4;
                long a5 = a(jVar, b2 != a2, a3, a4, j2);
                long j4 = a3.f8753i;
                if (a5 < j4) {
                    nVarArr[i2] = c.e.a.a.j.b.n.f8509a;
                } else {
                    nVarArr[i2] = new c(a3, j3, (int) (a5 - j4));
                }
            }
        }
        return nVarArr;
    }

    public final long a(c.e.a.a.j.d.j jVar, boolean z, f fVar, long j2, long j3) {
        long a2;
        long j4;
        if (jVar != null && !z) {
            return jVar.g();
        }
        long j5 = fVar.p + j2;
        if (jVar != null && !this.o) {
            j3 = jVar.f8464f;
        }
        if (fVar.f8756l || j3 < j5) {
            a2 = (long) I.a(fVar.o, Long.valueOf(j3 - j2), true, !this.f12708g.b() || jVar == null);
            j4 = fVar.f8753i;
        } else {
            a2 = fVar.f8753i;
            j4 = (long) fVar.o.size();
        }
        return a2 + j4;
    }

    public final long a(long j2) {
        if (this.q != -9223372036854775807L) {
            return this.q - j2;
        }
        return -9223372036854775807L;
    }

    public final void a(f fVar) {
        long j2;
        if (fVar.f8756l) {
            j2 = -9223372036854775807L;
        } else {
            j2 = fVar.b() - this.f12708g.a();
        }
        this.q = j2;
    }

    public final c.e.a.a.j.b.d a(Uri uri, int i2) {
        if (uri == null) {
            return null;
        }
        if (this.f12711j.containsKey(uri)) {
            FullSegmentEncryptionKeyCache fullSegmentEncryptionKeyCache = this.f12711j;
            fullSegmentEncryptionKeyCache.put(uri, (byte[]) fullSegmentEncryptionKeyCache.remove(uri));
            return null;
        }
        l lVar = new l(uri, 0, -1, null, 1);
        a aVar = new a(this.f12704c, lVar, this.f12707f[i2], this.p.g(), this.p.h(), this.f12713l);
        return aVar;
    }

    public static Uri a(f fVar, f.a aVar) {
        if (aVar != null) {
            String str = aVar.f8764h;
            if (str != null) {
                return H.b(fVar.f8769a, str);
            }
        }
        return null;
    }
}
