package c.e.a.c.s;

import android.os.Bundle;
import android.view.View;
import b.i.k.C0258a;
import b.i.k.a.d;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class e extends C0258a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11434d;

    public e(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11434d = baseTransientBottomBar;
    }

    public void a(View view, d dVar) {
        super.a(view, dVar);
        dVar.a(1048576);
        dVar.e(true);
    }

    public boolean a(View view, int i2, Bundle bundle) {
        if (i2 != 1048576) {
            return super.a(view, i2, bundle);
        }
        this.f11434d.c();
        return true;
    }
}
