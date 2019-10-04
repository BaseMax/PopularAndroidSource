package f.a.a.g.i;

import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.ImageView;
import com.crashlytics.android.core.MetaDataStore;
import f.a.a.a.a.b;

/* compiled from: ShortcutDialog */
class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ImageView f14504a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ e f14505b;

    public a(e eVar, ImageView imageView) {
        this.f14505b = eVar;
        this.f14504a = imageView;
    }

    public void onClick(View view) {
        this.f14505b.c().h().h().a(((BitmapDrawable) this.f14504a.getDrawable()).getBitmap());
        this.f14505b.d().dismiss();
        b a2 = b.a();
        f.a.a.a.a.a aVar = new f.a.a.a.a.a();
        aVar.a(MetaDataStore.USERDATA_SUFFIX);
        aVar.d(this.f14505b.c().h().j().d());
        aVar.b("inlineapp_action");
        aVar.a("button", "add");
        aVar.c("shortcut_dialog");
        aVar.a(System.currentTimeMillis());
        a2.a(aVar);
    }
}
