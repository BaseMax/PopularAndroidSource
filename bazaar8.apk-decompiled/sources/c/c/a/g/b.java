package c.c.a.g;

import android.app.Application;
import h.f.b.j;
import java.util.List;

/* compiled from: DeveloperTools.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final List<a> f5550a;

    /* compiled from: DeveloperTools.kt */
    public interface a {
        void a(Application application);
    }

    public b(List<? extends a> list) {
        j.b(list, "proxies");
        this.f5550a = list;
    }

    public final void a(Application application) {
        j.b(application, "application");
        for (a a2 : this.f5550a) {
            a2.a(application);
        }
    }
}
