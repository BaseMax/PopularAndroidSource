package b.g.a.a;

import java.util.HashSet;
import java.util.Iterator;

/* compiled from: ResolutionNode */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public HashSet<n> f2423a = new HashSet<>(2);

    /* renamed from: b  reason: collision with root package name */
    public int f2424b = 0;

    public void a(n nVar) {
        this.f2423a.add(nVar);
    }

    public void b() {
        this.f2424b = 0;
        Iterator<n> it = this.f2423a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public boolean c() {
        return this.f2424b == 1;
    }

    public void d() {
        this.f2424b = 0;
        this.f2423a.clear();
    }

    public void e() {
    }

    public void a() {
        this.f2424b = 1;
        Iterator<n> it = this.f2423a.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }
}
