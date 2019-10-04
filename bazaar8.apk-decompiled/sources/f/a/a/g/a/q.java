package f.a.a.g.a;

import android.text.TextUtils;
import f.a.a.a.c.a;
import ir.cafebazaar.inline.ui.inflaters.inputs.AddressInputInflater;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: AddressPopupPresenter */
public class q implements o {

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<p> f14372a;

    /* renamed from: b  reason: collision with root package name */
    public List<a> f14373b;

    /* renamed from: c  reason: collision with root package name */
    public a f14374c;

    public void a() {
        this.f14374c = new a();
        ((p) this.f14372a.get()).a("", false);
    }

    public void b() {
        if (d()) {
            this.f14373b = a.a(((p) this.f14372a.get()).b()).a();
            ((p) this.f14372a.get()).a(this.f14373b);
        }
    }

    public a c() {
        return this.f14374c;
    }

    public boolean d() {
        WeakReference<p> weakReference = this.f14372a;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public final void c(a aVar) {
        if (aVar.c() == -1) {
            a.a(((p) this.f14372a.get()).b()).a(aVar);
            this.f14373b.add(this.f14374c);
            return;
        }
        a.a(((p) this.f14372a.get()).b()).c(aVar);
        for (a next : this.f14373b) {
            if (next.c() == aVar.c()) {
                next.b(aVar.e());
                next.a(next.d());
            }
        }
    }

    public void a(String str) {
        this.f14374c.b(str);
        if (d()) {
            ((p) this.f14372a.get()).a(TextUtils.isEmpty(this.f14374c.d()) ? "" : this.f14374c.d());
        }
    }

    public void b(String str) {
        this.f14374c.a(str);
        if (d()) {
            c(this.f14374c);
            ((p) this.f14372a.get()).a(this.f14374c);
        }
    }

    public void a(a aVar) {
        if (d()) {
            a.a(((p) this.f14372a.get()).b()).b(aVar);
            this.f14373b.remove(this.f14374c);
            ((p) this.f14372a.get()).a(this.f14373b);
        }
    }

    public void b(a aVar) {
        this.f14374c = aVar;
        if (d()) {
            ((p) this.f14372a.get()).a(this.f14374c.e(), true);
        }
    }

    public void a(a aVar, AddressInputInflater.AddressType addressType) {
        if (d()) {
            ((p) this.f14372a.get()).a(aVar);
        }
    }

    public void a(p pVar) {
        this.f14372a = new WeakReference<>(pVar);
    }
}
