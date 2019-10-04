package b.o.a;

import androidx.lifecycle.Lifecycle;
import b.r.k;
import b.r.m;

/* compiled from: FragmentViewLifecycleOwner */
public class S implements k {

    /* renamed from: a  reason: collision with root package name */
    public m f3059a = null;

    public void a() {
        if (this.f3059a == null) {
            this.f3059a = new m(this);
        }
    }

    public Lifecycle b() {
        a();
        return this.f3059a;
    }

    public boolean e() {
        return this.f3059a != null;
    }

    public void a(Lifecycle.Event event) {
        this.f3059a.b(event);
    }
}
