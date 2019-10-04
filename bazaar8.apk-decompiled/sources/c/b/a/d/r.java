package c.b.a.d;

import c.b.a.g.a.h;
import c.b.a.i.k;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: TargetTracker */
public final class r implements j {

    /* renamed from: a  reason: collision with root package name */
    public final Set<h<?>> f4308a = Collections.newSetFromMap(new WeakHashMap());

    public void a(h<?> hVar) {
        this.f4308a.add(hVar);
    }

    public void b(h<?> hVar) {
        this.f4308a.remove(hVar);
    }

    public void c() {
        this.f4308a.clear();
    }

    public List<h<?>> d() {
        return k.a(this.f4308a);
    }

    public void onDestroy() {
        for (T onDestroy : k.a(this.f4308a)) {
            onDestroy.onDestroy();
        }
    }

    public void a() {
        for (T a2 : k.a(this.f4308a)) {
            a2.a();
        }
    }

    public void b() {
        for (T b2 : k.a(this.f4308a)) {
            b2.b();
        }
    }
}
