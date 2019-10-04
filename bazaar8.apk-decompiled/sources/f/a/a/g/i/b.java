package f.a.a.g.i;

import android.view.View;
import com.crashlytics.android.core.MetaDataStore;
import f.a.a.a.a.a;

/* compiled from: ShortcutDialog */
class b implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f14506a;

    public b(e eVar) {
        this.f14506a = eVar;
    }

    public void onClick(View view) {
        this.f14506a.d().dismiss();
        f.a.a.a.a.b a2 = f.a.a.a.a.b.a();
        a aVar = new a();
        aVar.a(MetaDataStore.USERDATA_SUFFIX);
        aVar.d(this.f14506a.c().h().j().d());
        aVar.b("inlineapp_action");
        aVar.a("button", "not_now");
        aVar.c("shortcut_dialog");
        aVar.a(System.currentTimeMillis());
        a2.a(aVar);
    }
}
