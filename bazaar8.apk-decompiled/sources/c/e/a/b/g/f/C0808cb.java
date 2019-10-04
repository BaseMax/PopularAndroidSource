package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.cb  reason: case insensitive filesystem */
public class C0808cb {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<?> f10358a = b();

    /* renamed from: b  reason: collision with root package name */
    public static volatile C0808cb f10359b;

    /* renamed from: c  reason: collision with root package name */
    public static final C0808cb f10360c = new C0808cb(true);

    /* renamed from: d  reason: collision with root package name */
    public final Map<a, C0852nb.d<?, ?>> f10361d;

    /* renamed from: c.e.a.b.g.f.cb$a */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Object f10362a;

        /* renamed from: b  reason: collision with root package name */
        public final int f10363b;

        public a(Object obj, int i2) {
            this.f10362a = obj;
            this.f10363b = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f10362a == aVar.f10362a && this.f10363b == aVar.f10363b) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f10362a) * 65535) + this.f10363b;
        }
    }

    public C0808cb() {
        this.f10361d = new HashMap();
    }

    public static C0808cb a() {
        return C0844lb.a(C0808cb.class);
    }

    public static Class<?> b() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static C0808cb c() {
        return C0804bb.b();
    }

    public static C0808cb d() {
        C0808cb cbVar = f10359b;
        if (cbVar == null) {
            synchronized (C0808cb.class) {
                cbVar = f10359b;
                if (cbVar == null) {
                    cbVar = C0804bb.c();
                    f10359b = cbVar;
                }
            }
        }
        return cbVar;
    }

    public final <ContainingType extends Sb> C0852nb.d<ContainingType, ?> a(ContainingType containingtype, int i2) {
        return this.f10361d.get(new a(containingtype, i2));
    }

    public C0808cb(boolean z) {
        this.f10361d = Collections.emptyMap();
    }
}
