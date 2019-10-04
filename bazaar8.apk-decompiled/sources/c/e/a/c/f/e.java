package c.e.a.c.f;

import android.os.Bundle;
import android.view.View;
import b.i.k.C0258a;
import b.i.k.a.d;

/* compiled from: BottomSheetDialog */
class e extends C0258a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f11277d;

    public e(h hVar) {
        this.f11277d = hVar;
    }

    public void a(View view, d dVar) {
        super.a(view, dVar);
        if (this.f11277d.f11281d) {
            dVar.a(1048576);
            dVar.e(true);
            return;
        }
        dVar.e(false);
    }

    public boolean a(View view, int i2, Bundle bundle) {
        if (i2 == 1048576) {
            h hVar = this.f11277d;
            if (hVar.f11281d) {
                hVar.cancel();
                return true;
            }
        }
        return super.a(view, i2, bundle);
    }
}
