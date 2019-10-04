package b.b.g;

import android.view.View;
import android.view.Window;
import b.b.f.a.C0203a;

/* compiled from: ToolbarWidgetWrapper */
class ua implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final C0203a f2242a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ wa f2243b;

    public ua(wa waVar) {
        this.f2243b = waVar;
        C0203a aVar = new C0203a(this.f2243b.f2250a.getContext(), 0, 16908332, 0, 0, this.f2243b.f2258i);
        this.f2242a = aVar;
    }

    public void onClick(View view) {
        wa waVar = this.f2243b;
        Window.Callback callback = waVar.f2261l;
        if (callback != null && waVar.m) {
            callback.onMenuItemSelected(0, this.f2242a);
        }
    }
}
