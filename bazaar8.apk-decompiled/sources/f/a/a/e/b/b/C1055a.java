package f.a.a.e.b.b;

import android.content.res.ColorStateList;
import android.view.View;
import android.view.animation.AnimationUtils;
import b.i.k.z;
import f.a.a.a;
import f.a.a.e.b.b.B;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.inflaters.inputs.AddressInputInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

/* renamed from: f.a.a.e.b.b.a  reason: case insensitive filesystem */
/* compiled from: AddressInputInflater */
class C1055a implements B.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14126a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f14127b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater.InputController f14128c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ColorStateList f14129d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ColorStateList f14130e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ AddressInputInflater f14131f;

    public C1055a(AddressInputInflater addressInputInflater, g gVar, View view, ControllableInputInflater.InputController inputController, ColorStateList colorStateList, ColorStateList colorStateList2) {
        this.f14131f = addressInputInflater;
        this.f14126a = gVar;
        this.f14127b = view;
        this.f14128c = inputController;
        this.f14129d = colorStateList;
        this.f14130e = colorStateList2;
    }

    public String a() {
        String b2 = this.f14131f.f15023g == null ? this.f14126a.k().b(f.a.a.g.select_something) : null;
        if (b2 != null) {
            this.f14127b.startAnimation(AnimationUtils.loadAnimation(this.f14126a.k().E(), a.wrong_field));
            this.f14128c.a(b2);
            z.a(this.f14127b, this.f14129d);
        } else {
            this.f14128c.a();
            z.a(this.f14127b, this.f14130e);
        }
        return b2;
    }

    public Object b() {
        if (this.f14131f.f15023g != null) {
            return this.f14131f.f15023g.a();
        }
        return null;
    }
}
