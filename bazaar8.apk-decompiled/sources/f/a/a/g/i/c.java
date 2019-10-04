package f.a.a.g.i;

import android.view.View;
import com.crashlytics.android.core.MetaDataStore;
import f.a.a.a.a.a;
import f.a.a.a.a.b;

/* compiled from: ShortcutDialog */
class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f14507a;

    public c(e eVar) {
        this.f14507a = eVar;
    }

    public void onClick(View view) {
        f.a(this.f14507a.c().f(), this.f14507a.c().h().d());
        this.f14507a.d().dismiss();
        b a2 = b.a();
        a aVar = new a();
        aVar.a(MetaDataStore.USERDATA_SUFFIX);
        aVar.d(this.f14507a.c().h().j().d());
        aVar.b("inlineapp_action");
        aVar.a("button", "never");
        aVar.c("shortcut_dialog");
        aVar.a(System.currentTimeMillis());
        a2.a(aVar);
    }
}
