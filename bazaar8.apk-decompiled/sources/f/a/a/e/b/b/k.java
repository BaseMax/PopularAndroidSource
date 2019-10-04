package f.a.a.e.b.b;

import android.view.View;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import f.a.a.d;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

/* compiled from: ChoicesInflater */
class k implements View.OnFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TextView f14170a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater.InputController f14171b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ o f14172c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f14173d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ l f14174e;

    public k(l lVar, TextView textView, ControllableInputInflater.InputController inputController, o oVar, g gVar) {
        this.f14174e = lVar;
        this.f14170a = textView;
        this.f14171b = inputController;
        this.f14172c = oVar;
        this.f14173d = gVar;
    }

    public void onFocusChange(View view, boolean z) {
        if (z) {
            if (this.f14170a.getText().toString().isEmpty()) {
                this.f14171b.a(ControllableInputInflater.InputController.Placeholder.UP, true);
            }
            this.f14170a.setBackgroundResource(d.inline_edittext_background_forced_focus);
            this.f14172c.a((NestedScrollView) this.f14173d.k().aa(), (View) this.f14170a);
            return;
        }
        if (this.f14170a.getText().toString().isEmpty()) {
            this.f14171b.a(ControllableInputInflater.InputController.Placeholder.DOWN, true);
        }
        this.f14170a.setBackgroundResource(d.inline_edittext_background);
        this.f14172c.a();
    }
}
