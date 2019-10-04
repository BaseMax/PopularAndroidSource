package i.a;

import h.c.e;
import h.f.b.f;
import h.f.b.j;

/* compiled from: CoroutineName.kt */
public final class G extends h.c.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f14637a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f14638b;

    /* compiled from: CoroutineName.kt */
    public static final class a implements e.c<G> {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof G) && j.a((Object) this.f14638b, (Object) ((G) obj).f14638b));
    }

    public int hashCode() {
        String str = this.f14638b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "CoroutineName(" + this.f14638b + ')';
    }

    public final String x() {
        return this.f14638b;
    }
}
