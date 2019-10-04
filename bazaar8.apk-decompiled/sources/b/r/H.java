package b.r;

import java.util.HashMap;

/* compiled from: ViewModelStore */
public class H {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap<String, E> f3155a = new HashMap<>();

    public final void a(String str, E e2) {
        E put = this.f3155a.put(str, e2);
        if (put != null) {
            put.d();
        }
    }

    public final E a(String str) {
        return this.f3155a.get(str);
    }

    public final void a() {
        for (E c2 : this.f3155a.values()) {
            c2.c();
        }
        this.f3155a.clear();
    }
}
