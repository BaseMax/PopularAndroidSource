package f.a.a.g.g;

import android.view.View;
import ir.cafebazaar.inline.ux.permission.Permission;
import java.util.ArrayList;
import java.util.List;

/* compiled from: RequestPermissionsDialog */
class g implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f14490a;

    public g(h hVar) {
        this.f14490a = hVar;
    }

    public void onClick(View view) {
        ArrayList arrayList = new ArrayList();
        for (e b2 : this.f14490a.f14491c) {
            arrayList.add(b2.b());
        }
        this.f14490a.c().h().j().b().a((List<Permission>) arrayList);
        this.f14490a.d().dismiss();
    }
}
