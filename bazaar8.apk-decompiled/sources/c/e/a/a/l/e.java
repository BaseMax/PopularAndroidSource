package c.e.a.a.l;

import android.os.SystemClock;
import c.e.a.a.j.b.l;
import c.e.a.a.j.b.n;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* compiled from: BaseTrackSelection */
public abstract class e implements n {

    /* renamed from: a  reason: collision with root package name */
    public final TrackGroup f9315a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9316b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f9317c;

    /* renamed from: d  reason: collision with root package name */
    public final Format[] f9318d;

    /* renamed from: e  reason: collision with root package name */
    public final long[] f9319e;

    /* renamed from: f  reason: collision with root package name */
    public int f9320f;

    /* compiled from: BaseTrackSelection */
    private static final class a implements Comparator<Format> {
        public a() {
        }

        /* renamed from: a */
        public int compare(Format format, Format format2) {
            return format2.f12510e - format.f12510e;
        }
    }

    public e(TrackGroup trackGroup, int... iArr) {
        int i2 = 0;
        C0737e.b(iArr.length > 0);
        C0737e.a(trackGroup);
        this.f9315a = trackGroup;
        this.f9316b = iArr.length;
        this.f9318d = new Format[this.f9316b];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.f9318d[i3] = trackGroup.a(iArr[i3]);
        }
        Arrays.sort(this.f9318d, new a());
        this.f9317c = new int[this.f9316b];
        while (true) {
            int i4 = this.f9316b;
            if (i2 < i4) {
                this.f9317c[i2] = trackGroup.a(this.f9318d[i2]);
                i2++;
            } else {
                this.f9319e = new long[i4];
                return;
            }
        }
    }

    public final TrackGroup a() {
        return this.f9315a;
    }

    public void a(float f2) {
    }

    @Deprecated
    public /* synthetic */ void a(long j2, long j3, long j4) {
        m.a(this, j2, j3, j4);
    }

    public /* synthetic */ void a(long j2, long j3, long j4, List<? extends l> list, n[] nVarArr) {
        m.a(this, j2, j3, j4, list, nVarArr);
    }

    public final int b(int i2) {
        return this.f9317c[i2];
    }

    public final int c(int i2) {
        for (int i3 = 0; i3 < this.f9316b; i3++) {
            if (this.f9317c[i3] == i2) {
                return i3;
            }
        }
        return -1;
    }

    public void c() {
    }

    public final int d() {
        return this.f9317c[b()];
    }

    public void e() {
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f9315a != eVar.f9315a || !Arrays.equals(this.f9317c, eVar.f9317c)) {
            z = false;
        }
        return z;
    }

    public final Format f() {
        return this.f9318d[b()];
    }

    public int hashCode() {
        if (this.f9320f == 0) {
            this.f9320f = (System.identityHashCode(this.f9315a) * 31) + Arrays.hashCode(this.f9317c);
        }
        return this.f9320f;
    }

    public /* synthetic */ void i() {
        m.a(this);
    }

    public final int length() {
        return this.f9317c.length;
    }

    public final Format a(int i2) {
        return this.f9318d[i2];
    }

    public final boolean b(int i2, long j2) {
        return this.f9319e[i2] > j2;
    }

    public final int a(Format format) {
        for (int i2 = 0; i2 < this.f9316b; i2++) {
            if (this.f9318d[i2] == format) {
                return i2;
            }
        }
        return -1;
    }

    public int a(long j2, List<? extends l> list) {
        return list.size();
    }

    public final boolean a(int i2, long j2) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean b2 = b(i2, elapsedRealtime);
        int i3 = 0;
        while (i3 < this.f9316b && !b2) {
            b2 = i3 != i2 && !b(i3, elapsedRealtime);
            i3++;
        }
        if (!b2) {
            return false;
        }
        long[] jArr = this.f9319e;
        jArr[i2] = Math.max(jArr[i2], I.a(elapsedRealtime, j2, Long.MAX_VALUE));
        return true;
    }
}
