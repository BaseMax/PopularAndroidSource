package f.a.a.e.a;

import android.view.View;
import f.a.a.d.a;
import f.a.a.e.g;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: ViewChangeSet */
public class o implements a {

    /* renamed from: a  reason: collision with root package name */
    public Collection<p> f14040a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public c f14041b = new n(this);

    public void a(Collection<p> collection) {
        this.f14040a = collection;
    }

    public Collection<p> a() {
        return this.f14040a;
    }

    public void a(p pVar) {
        this.f14040a.add(pVar);
    }

    public void a(c cVar) {
        this.f14041b = cVar;
    }

    public void a(View view, g gVar) {
        this.f14041b.a(this.f14040a, view, gVar);
    }
}
