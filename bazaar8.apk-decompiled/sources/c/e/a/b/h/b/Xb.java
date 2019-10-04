package c.e.a.b.h.b;

import com.google.android.gms.measurement.internal.zzm;
import java.util.concurrent.Callable;

public final class Xb implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ zzm f10791a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Tb f10792b;

    public Xb(Tb tb, zzm zzm) {
        this.f10792b = tb;
        this.f10791a = zzm;
    }

    public final /* synthetic */ Object call() {
        _b _bVar;
        if (this.f10792b.i().n(this.f10791a.f13244a)) {
            _bVar = this.f10792b.d(this.f10791a);
        } else {
            _bVar = this.f10792b.l().b(this.f10791a.f13244a);
        }
        if (_bVar != null) {
            return _bVar.a();
        }
        this.f10792b.e().w().a("App info was null when attempting to get app instance id");
        return null;
    }
}
