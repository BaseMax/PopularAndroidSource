package f.a.a.g.d.a;

import android.view.View;
import f.a.a.e.C1083c;
import f.a.a.e.g;
import f.a.a.f.f;
import java.util.Map;

/* compiled from: RemoteAction */
public abstract class l extends t {

    /* renamed from: b  reason: collision with root package name */
    public boolean f14448b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f14449c;

    public l(String str, boolean z, boolean z2) {
        super(str);
        this.f14448b = z;
        this.f14449c = z2;
    }

    public void a(g gVar, View view) {
        f.a(gVar.f().getApplicationContext(), gVar.f().getWindow().getDecorView().getWindowToken());
        if (gVar.k() instanceof C1083c) {
            ((C1083c) gVar.k()).Oa().b(gVar.f().x());
            if (this.f14449c) {
                ((C1083c) gVar.k()).Oa().a(gVar.f().x());
            }
        }
    }

    public Map<String, Object> a(g gVar) {
        if (gVar.k() instanceof C1083c) {
            return ((C1083c) gVar.k()).Oa().b();
        }
        return null;
    }
}
