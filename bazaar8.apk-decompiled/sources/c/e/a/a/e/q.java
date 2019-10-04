package c.e.a.a.e;

import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;

/* compiled from: TrackOutput */
public interface q {

    /* compiled from: TrackOutput */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f8328a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f8329b;

        /* renamed from: c  reason: collision with root package name */
        public final int f8330c;

        /* renamed from: d  reason: collision with root package name */
        public final int f8331d;

        public a(int i2, byte[] bArr, int i3, int i4) {
            this.f8328a = i2;
            this.f8329b = bArr;
            this.f8330c = i3;
            this.f8331d = i4;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (!(this.f8328a == aVar.f8328a && this.f8330c == aVar.f8330c && this.f8331d == aVar.f8331d && Arrays.equals(this.f8329b, aVar.f8329b))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f8328a * 31) + Arrays.hashCode(this.f8329b)) * 31) + this.f8330c) * 31) + this.f8331d;
        }
    }

    int a(h hVar, int i2, boolean z);

    void a(long j2, int i2, int i3, int i4, a aVar);

    void a(v vVar, int i2);

    void a(Format format);
}
