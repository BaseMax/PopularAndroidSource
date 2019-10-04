package c.e.a.a.l;

import c.e.a.a.j.b.l;
import c.e.a.a.n.f;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import java.util.List;

/* compiled from: TrackSelection */
public interface n {

    /* compiled from: TrackSelection */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final TrackGroup f9332a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f9333b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9334c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f9335d;

        public a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0, null);
        }

        public a(TrackGroup trackGroup, int[] iArr, int i2, Object obj) {
            this.f9332a = trackGroup;
            this.f9333b = iArr;
            this.f9334c = i2;
            this.f9335d = obj;
        }
    }

    /* compiled from: TrackSelection */
    public interface b {
        n[] a(a[] aVarArr, f fVar);
    }

    int a(long j2, List<? extends l> list);

    int a(Format format);

    Format a(int i2);

    TrackGroup a();

    void a(float f2);

    @Deprecated
    void a(long j2, long j3, long j4);

    void a(long j2, long j3, long j4, List<? extends l> list, c.e.a.a.j.b.n[] nVarArr);

    boolean a(int i2, long j2);

    int b();

    int b(int i2);

    int c(int i2);

    void c();

    int d();

    void e();

    Format f();

    int g();

    Object h();

    void i();

    int length();
}
