package c.e.a.a.j.d.a;

import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.offline.StreamKey;
import java.util.Collections;
import java.util.List;

/* compiled from: HlsMediaPlaylist */
public final class f extends g {

    /* renamed from: d  reason: collision with root package name */
    public final int f8748d;

    /* renamed from: e  reason: collision with root package name */
    public final long f8749e;

    /* renamed from: f  reason: collision with root package name */
    public final long f8750f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f8751g;

    /* renamed from: h  reason: collision with root package name */
    public final int f8752h;

    /* renamed from: i  reason: collision with root package name */
    public final long f8753i;

    /* renamed from: j  reason: collision with root package name */
    public final int f8754j;

    /* renamed from: k  reason: collision with root package name */
    public final long f8755k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f8756l;
    public final boolean m;
    public final DrmInitData n;
    public final List<a> o;
    public final long p;

    /* compiled from: HlsMediaPlaylist */
    public static final class a implements Comparable<Long> {

        /* renamed from: a  reason: collision with root package name */
        public final String f8757a;

        /* renamed from: b  reason: collision with root package name */
        public final a f8758b;

        /* renamed from: c  reason: collision with root package name */
        public final long f8759c;

        /* renamed from: d  reason: collision with root package name */
        public final String f8760d;

        /* renamed from: e  reason: collision with root package name */
        public final int f8761e;

        /* renamed from: f  reason: collision with root package name */
        public final long f8762f;

        /* renamed from: g  reason: collision with root package name */
        public final DrmInitData f8763g;

        /* renamed from: h  reason: collision with root package name */
        public final String f8764h;

        /* renamed from: i  reason: collision with root package name */
        public final String f8765i;

        /* renamed from: j  reason: collision with root package name */
        public final long f8766j;

        /* renamed from: k  reason: collision with root package name */
        public final long f8767k;

        /* renamed from: l  reason: collision with root package name */
        public final boolean f8768l;

        public a(String str, long j2, long j3, String str2, String str3) {
            this(str, null, "", 0, -1, -9223372036854775807L, null, str2, str3, j2, j3, false);
        }

        /* renamed from: a */
        public int compareTo(Long l2) {
            if (this.f8762f > l2.longValue()) {
                return 1;
            }
            return this.f8762f < l2.longValue() ? -1 : 0;
        }

        public a(String str, a aVar, String str2, long j2, int i2, long j3, DrmInitData drmInitData, String str3, String str4, long j4, long j5, boolean z) {
            this.f8757a = str;
            this.f8758b = aVar;
            this.f8760d = str2;
            this.f8759c = j2;
            this.f8761e = i2;
            this.f8762f = j3;
            this.f8763g = drmInitData;
            this.f8764h = str3;
            this.f8765i = str4;
            this.f8766j = j4;
            this.f8767k = j5;
            this.f8768l = z;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(int i2, String str, List<String> list, long j2, long j3, boolean z, int i3, long j4, int i4, long j5, boolean z2, boolean z3, boolean z4, DrmInitData drmInitData, List<a> list2) {
        super(str, list, z2);
        String str2 = str;
        List<String> list3 = list;
        this.f8748d = i2;
        this.f8750f = j3;
        this.f8751g = z;
        this.f8752h = i3;
        this.f8753i = j4;
        this.f8754j = i4;
        this.f8755k = j5;
        this.f8756l = z3;
        this.m = z4;
        this.n = drmInitData;
        this.o = Collections.unmodifiableList(list2);
        if (!list2.isEmpty()) {
            a aVar = list2.get(list2.size() - 1);
            this.p = aVar.f8762f + aVar.f8759c;
        } else {
            this.p = 0;
        }
        this.f8749e = j2 == -9223372036854775807L ? -9223372036854775807L : j2 >= 0 ? j2 : this.p + j2;
    }

    public f a(List<StreamKey> list) {
        return this;
    }

    public long b() {
        return this.f8750f + this.p;
    }

    public boolean a(f fVar) {
        boolean z = true;
        if (fVar != null) {
            long j2 = this.f8753i;
            long j3 = fVar.f8753i;
            if (j2 <= j3) {
                if (j2 < j3) {
                    return false;
                }
                int size = this.o.size();
                int size2 = fVar.o.size();
                if (size <= size2 && (size != size2 || !this.f8756l || fVar.f8756l)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public f a(long j2, int i2) {
        f fVar = new f(this.f8748d, this.f8769a, this.f8770b, this.f8749e, j2, true, i2, this.f8753i, this.f8754j, this.f8755k, this.f8771c, this.f8756l, this.m, this.n, this.o);
        return fVar;
    }

    public f a() {
        if (this.f8756l) {
            return this;
        }
        f fVar = r2;
        f fVar2 = new f(this.f8748d, this.f8769a, this.f8770b, this.f8749e, this.f8750f, this.f8751g, this.f8752h, this.f8753i, this.f8754j, this.f8755k, this.f8771c, true, this.m, this.n, this.o);
        return fVar;
    }
}
