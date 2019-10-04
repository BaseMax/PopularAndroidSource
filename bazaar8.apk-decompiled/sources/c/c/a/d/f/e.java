package c.c.a.d.f;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import b.r.F;
import c.c.a.d.d.c;
import c.c.a.d.g;
import c.e.a.c.f.i;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import d.a.a.a;
import h.f.b.j;

/* compiled from: BaseDaggerBottomSheetDialogFragment.kt */
public abstract class e extends i {
    public F.b ja;
    public c ka;

    public abstract void Qa();

    public final c Ra() {
        c cVar = this.ka;
        if (cVar != null) {
            return cVar;
        }
        j.c("messageManager");
        throw null;
    }

    public final F.b Sa() {
        F.b bVar = this.ja;
        if (bVar != null) {
            return bVar;
        }
        j.c("viewModelFactory");
        throw null;
    }

    public void Ta() {
        Ma();
    }

    public void a(Context context) {
        j.b(context, "context");
        a.b(this);
        super.a(context);
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        b(0, g.CustomBottomSheetDialog);
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public final void a(BottomSheetBehavior<View> bottomSheetBehavior) {
        j.b(bottomSheetBehavior, "sheetBehavior");
        bottomSheetBehavior.c(3);
        bottomSheetBehavior.b(true);
        bottomSheetBehavior.b(0);
        bottomSheetBehavior.a((BottomSheetBehavior.a) new d(this));
    }
}
