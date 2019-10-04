package c.e.a.a.j;

import android.os.Handler;
import c.e.a.a.Z;
import c.e.a.a.n.A;
import c.e.a.a.n.e;

/* compiled from: MediaSource */
public interface v {

    /* compiled from: MediaSource */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Object f8976a;

        /* renamed from: b  reason: collision with root package name */
        public final int f8977b;

        /* renamed from: c  reason: collision with root package name */
        public final int f8978c;

        /* renamed from: d  reason: collision with root package name */
        public final long f8979d;

        /* renamed from: e  reason: collision with root package name */
        public final int f8980e;

        public a(Object obj) {
            this(obj, -1);
        }

        public a a(Object obj) {
            if (this.f8976a.equals(obj)) {
                return this;
            }
            a aVar = new a(obj, this.f8977b, this.f8978c, this.f8979d, this.f8980e);
            return aVar;
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
            if (!(this.f8976a.equals(aVar.f8976a) && this.f8977b == aVar.f8977b && this.f8978c == aVar.f8978c && this.f8979d == aVar.f8979d && this.f8980e == aVar.f8980e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((((((527 + this.f8976a.hashCode()) * 31) + this.f8977b) * 31) + this.f8978c) * 31) + ((int) this.f8979d)) * 31) + this.f8980e;
        }

        public a(Object obj, long j2) {
            this(obj, -1, -1, j2, -1);
        }

        public boolean a() {
            return this.f8977b != -1;
        }

        public a(Object obj, long j2, int i2) {
            this(obj, -1, -1, j2, i2);
        }

        public a(Object obj, int i2, int i3, long j2) {
            this(obj, i2, i3, j2, -1);
        }

        public a(Object obj, int i2, int i3, long j2, int i4) {
            this.f8976a = obj;
            this.f8977b = i2;
            this.f8978c = i3;
            this.f8979d = j2;
            this.f8980e = i4;
        }
    }

    /* compiled from: MediaSource */
    public interface b {
        void a(v vVar, Z z, Object obj);
    }

    u a(a aVar, e eVar, long j2);

    void a();

    void a(Handler handler, w wVar);

    void a(u uVar);

    void a(b bVar);

    void a(b bVar, A a2);

    void a(w wVar);
}
