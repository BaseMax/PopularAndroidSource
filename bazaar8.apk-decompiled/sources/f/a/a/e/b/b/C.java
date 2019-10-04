package f.a.a.e.b.b;

import android.widget.RatingBar;
import f.a.a.e.b.b.B;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

/* compiled from: RatingInputInflater */
class C implements B.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater.InputController f14118a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ RatingBar f14119b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ F f14120c;

    public C(F f2, ControllableInputInflater.InputController inputController, RatingBar ratingBar) {
        this.f14120c = f2;
        this.f14118a = inputController;
        this.f14119b = ratingBar;
    }

    public String a() {
        this.f14118a.a();
        return null;
    }

    public Object b() {
        return String.valueOf(this.f14119b.getRating());
    }
}
