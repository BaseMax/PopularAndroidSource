package c.b.a.d;

import c.b.a.i.k;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: ActivityFragmentLifecycle */
public class a implements i {

    /* renamed from: a  reason: collision with root package name */
    public final Set<j> f4279a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    public boolean f4280b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4281c;

    public void a(j jVar) {
        this.f4279a.add(jVar);
        if (this.f4281c) {
            jVar.onDestroy();
        } else if (this.f4280b) {
            jVar.a();
        } else {
            jVar.b();
        }
    }

    public void b(j jVar) {
        this.f4279a.remove(jVar);
    }

    public void c() {
        this.f4280b = false;
        for (T b2 : k.a(this.f4279a)) {
            b2.b();
        }
    }

    public void b() {
        this.f4280b = true;
        for (T a2 : k.a(this.f4279a)) {
            a2.a();
        }
    }

    public void a() {
        this.f4281c = true;
        for (T onDestroy : k.a(this.f4279a)) {
            onDestroy.onDestroy();
        }
    }
}
