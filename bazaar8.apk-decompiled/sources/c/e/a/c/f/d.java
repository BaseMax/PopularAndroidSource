package c.e.a.c.f;

import android.view.View;

/* compiled from: BottomSheetDialog */
class d implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f11276a;

    public d(h hVar) {
        this.f11276a = hVar;
    }

    public void onClick(View view) {
        h hVar = this.f11276a;
        if (hVar.f11281d && hVar.isShowing() && this.f11276a.b()) {
            this.f11276a.cancel();
        }
    }
}
