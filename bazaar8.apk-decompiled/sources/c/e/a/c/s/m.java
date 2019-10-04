package c.e.a.c.s;

import b.i.k.a.c;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class m implements c.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar.e f11444a;

    public m(BaseTransientBottomBar.e eVar) {
        this.f11444a = eVar;
    }

    public void onTouchExplorationStateChanged(boolean z) {
        this.f11444a.setClickableOrFocusableBasedOnAccessibility(z);
    }
}
