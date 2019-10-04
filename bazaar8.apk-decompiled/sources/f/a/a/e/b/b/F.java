package f.a.a.e.b.b;

import android.content.res.ColorStateList;
import android.os.Build;
import android.view.View;
import android.widget.RatingBar;
import f.a.a.e;
import f.a.a.e.b.b.B;
import f.a.a.e.g;
import f.a.a.f;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

/* compiled from: RatingInputInflater */
public class F extends ControllableInputInflater {

    /* renamed from: g  reason: collision with root package name */
    public static final Float f14124g;

    /* renamed from: h  reason: collision with root package name */
    public static final Float f14125h;

    static {
        Float valueOf = Float.valueOf(1.0f);
        f14124g = valueOf;
        f14125h = valueOf;
    }

    public B.a a(View view, g gVar, ControllableInputInflater.InputController inputController) {
        RatingBar ratingBar = (RatingBar) view.findViewById(e.inline_rating_bar);
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{gVar.g().h()});
        if (Build.VERSION.SDK_INT >= 21) {
            ratingBar.setProgressTintList(colorStateList);
        }
        C c2 = new C(this, inputController, ratingBar);
        ratingBar.setOnTouchListener(new D(this, ratingBar));
        ratingBar.setOnRatingBarChangeListener(new E(this));
        ratingBar.setStepSize(f14124g.floatValue());
        ratingBar.setIsIndicator(false);
        ratingBar.setNumStars(5);
        return c2;
    }

    public void a(Object obj) {
    }

    public int f() {
        return f.inline_rating;
    }
}
