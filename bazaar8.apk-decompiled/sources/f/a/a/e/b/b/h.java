package f.a.a.e.b.b;

import android.content.res.ColorStateList;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import b.i.k.z;
import f.a.a.a;
import f.a.a.d.e;
import f.a.a.e.b.b.B;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

/* compiled from: ChoicesInflater */
class h implements B.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14158a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TextView f14159b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater.InputController f14160c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ColorStateList f14161d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ColorStateList f14162e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ l f14163f;

    public h(l lVar, g gVar, TextView textView, ControllableInputInflater.InputController inputController, ColorStateList colorStateList, ColorStateList colorStateList2) {
        this.f14163f = lVar;
        this.f14158a = gVar;
        this.f14159b = textView;
        this.f14160c = inputController;
        this.f14161d = colorStateList;
        this.f14162e = colorStateList2;
    }

    public String a() {
        String b2 = this.f14163f.f14176h == -1 ? this.f14158a.k().b(f.a.a.g.select_something) : null;
        if (b2 != null) {
            this.f14159b.startAnimation(AnimationUtils.loadAnimation(this.f14158a.k().E(), a.wrong_field));
            this.f14160c.a(b2);
            z.a((View) this.f14159b, this.f14161d);
        } else {
            this.f14160c.a();
            z.a((View) this.f14159b, this.f14162e);
        }
        return b2;
    }

    public Object b() {
        if (this.f14163f.f14176h != -1) {
            return ((e) this.f14163f.f14175g.get(this.f14163f.f14176h)).b();
        }
        return null;
    }
}
