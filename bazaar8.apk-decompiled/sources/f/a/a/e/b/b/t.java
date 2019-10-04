package f.a.a.e.b.b;

import android.view.View;
import com.crashlytics.android.core.MetaDataStore;
import f.a.a.a.a.a;
import f.a.a.a.a.b;
import f.a.a.e.b.b.B;
import f.a.a.e.g;
import ir.cafebazaar.inline.platform.InlineApplication;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.EditTextInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.views.FormattableEditText;

/* compiled from: EditTextInflater */
class t implements View.OnFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14201a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ FormattableEditText f14202b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater.InputController f14203c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ B.a f14204d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ EditTextInflater f14205e;

    public t(EditTextInflater editTextInflater, g gVar, FormattableEditText formattableEditText, ControllableInputInflater.InputController inputController, B.a aVar) {
        this.f14205e = editTextInflater;
        this.f14201a = gVar;
        this.f14202b = formattableEditText;
        this.f14203c = inputController;
        this.f14204d = aVar;
    }

    public void onFocusChange(View view, boolean z) {
        InlineApplication h2 = this.f14201a.h();
        if (h2 != null) {
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            b a2 = b.a();
            a aVar = new a();
            aVar.a(MetaDataStore.USERDATA_SUFFIX);
            aVar.a(System.currentTimeMillis());
            aVar.b("edittext");
            aVar.a("change_focus", Boolean.valueOf(z));
            aVar.c(h2.f());
            aVar.b("path", this.f14201a.f().w().c());
            aVar.b("y-absolute", Integer.valueOf(view.getTop()));
            aVar.b("y-relative", Integer.valueOf(iArr[1]));
            a2.a(aVar);
            if (this.f14202b.getText().toString().isEmpty()) {
                this.f14203c.a(z ? ControllableInputInflater.InputController.Placeholder.UP : ControllableInputInflater.InputController.Placeholder.DOWN, true);
            }
            if (!z) {
                this.f14204d.a();
            } else {
                this.f14203c.a();
            }
        }
    }
}
