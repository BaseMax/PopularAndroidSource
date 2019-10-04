package f.a.a.e.b.b;

import android.content.res.ColorStateList;
import android.view.View;
import android.view.animation.AnimationUtils;
import b.i.k.z;
import f.a.a.a;
import f.a.a.e.b.b.B;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.EditTextInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.views.FormattableEditText;

/* compiled from: EditTextInflater */
class s implements B.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ FormattableEditText f14195a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f14196b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater.InputController f14197c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ColorStateList f14198d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ColorStateList f14199e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ EditTextInflater f14200f;

    public s(EditTextInflater editTextInflater, FormattableEditText formattableEditText, g gVar, ControllableInputInflater.InputController inputController, ColorStateList colorStateList, ColorStateList colorStateList2) {
        this.f14200f = editTextInflater;
        this.f14195a = formattableEditText;
        this.f14196b = gVar;
        this.f14197c = inputController;
        this.f14198d = colorStateList;
        this.f14199e = colorStateList2;
    }

    public String a() {
        String a2 = f.a.a.d.g.a(this.f14195a.getText().toString(), this.f14200f.f15031g);
        if (a2 != null) {
            this.f14195a.startAnimation(AnimationUtils.loadAnimation(this.f14196b.k().E(), a.wrong_field));
            this.f14197c.a(a2);
            z.a((View) this.f14195a, this.f14198d);
        } else {
            this.f14197c.a();
            z.a((View) this.f14195a, this.f14199e);
        }
        return a2;
    }

    public Object b() {
        return this.f14195a.getText().toString();
    }
}
