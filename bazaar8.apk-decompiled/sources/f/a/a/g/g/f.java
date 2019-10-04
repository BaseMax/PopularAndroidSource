package f.a.a.g.g;

import android.view.View;
import f.a.a.e.g;
import java.util.HashSet;
import java.util.List;

/* compiled from: RequestPermissionsDialog */
class f implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f14489a;

    public f(h hVar) {
        this.f14489a = hVar;
    }

    public void onClick(View view) {
        HashSet hashSet = new HashSet();
        for (e b2 : this.f14489a.f14491c) {
            hashSet.add(b2.b());
        }
        this.f14489a.c().h().j().b().a((g) this.f14489a.c().f(), (List<e>) this.f14489a.f14491c);
        this.f14489a.c().h().j().b().a().a(this.f14489a.c(), hashSet);
        this.f14489a.d().dismiss();
    }
}
