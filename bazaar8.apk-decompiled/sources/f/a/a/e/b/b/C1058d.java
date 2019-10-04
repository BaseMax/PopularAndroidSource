package f.a.a.e.b.b;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import f.a.a.d;
import f.a.a.e.g;
import f.a.a.g.a.n;
import ir.cafebazaar.inline.ui.inflaters.inputs.AddressInputInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

/* renamed from: f.a.a.e.b.b.d  reason: case insensitive filesystem */
/* compiled from: AddressInputInflater */
class C1058d implements View.OnFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatTextView f14142a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppCompatTextView f14143b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater.InputController f14144c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View f14145d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ n f14146e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ g f14147f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ AddressInputInflater f14148g;

    public C1058d(AddressInputInflater addressInputInflater, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ControllableInputInflater.InputController inputController, View view, n nVar, g gVar) {
        this.f14148g = addressInputInflater;
        this.f14142a = appCompatTextView;
        this.f14143b = appCompatTextView2;
        this.f14144c = inputController;
        this.f14145d = view;
        this.f14146e = nVar;
        this.f14147f = gVar;
    }

    public void onFocusChange(View view, boolean z) {
        if (z) {
            if (this.f14142a.getText().toString().isEmpty() && this.f14143b.getText().toString().isEmpty()) {
                this.f14144c.a(ControllableInputInflater.InputController.Placeholder.UP, true);
            }
            this.f14145d.setBackgroundResource(d.inline_edittext_background_forced_focus);
            this.f14146e.a((NestedScrollView) this.f14147f.k().aa(), (View) this.f14142a);
            return;
        }
        if (this.f14142a.getText().toString().isEmpty() && this.f14143b.getText().toString().isEmpty()) {
            this.f14144c.a(ControllableInputInflater.InputController.Placeholder.DOWN, true);
        }
        this.f14145d.setBackgroundResource(d.inline_edittext_background);
        this.f14146e.a();
    }
}
