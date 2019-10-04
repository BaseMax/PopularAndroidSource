package f.a.a.g.d.b;

import f.a.a.e.g;
import ir.cafebazaar.inline.ux.flow.pull.Puller;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: PullerManager */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public g f14465a;

    /* renamed from: b  reason: collision with root package name */
    public Collection<Puller> f14466b = new ArrayList();

    public f(g gVar) {
        this.f14465a = gVar;
    }

    public void a() {
        for (Puller a2 : this.f14466b) {
            a2.a(this.f14465a);
        }
    }

    public void b() {
        for (Puller a2 : this.f14466b) {
            a2.a();
        }
    }

    public void a(Collection<Puller> collection) {
        this.f14466b.addAll(collection);
    }
}
