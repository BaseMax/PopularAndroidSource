package c.c.a.d.f;

import android.view.View;
import c.c.a.c.c.a;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;

/* compiled from: BaseDaggerBottomSheetDialogFragment.kt */
public final class d extends BottomSheetBehavior.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f4791a;

    public d(e eVar) {
        this.f4791a = eVar;
    }

    public void a(View view, float f2) {
        j.b(view, "bottomSheet");
    }

    public void a(View view, int i2) {
        j.b(view, "bottomSheet");
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 6:
                a aVar = a.f4699b;
                a.a(aVar, "state", new Throwable("state is " + i2), null, 4, null);
                return;
            case 4:
            case 5:
                this.f4791a.Ta();
                return;
            default:
                a.f4699b.a(new Throwable("Illegal state in setBottomSheetCallback.onStateChanged"));
                return;
        }
    }
}
