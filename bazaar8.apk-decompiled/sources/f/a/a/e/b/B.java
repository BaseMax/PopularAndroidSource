package f.a.a.e.b;

import android.content.res.ColorStateList;
import android.os.Build;
import android.view.View;
import android.widget.RatingBar;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;

/* compiled from: RatingInflater */
public class B extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public static final Float f14050c = Float.valueOf(0.5f);

    /* renamed from: d  reason: collision with root package name */
    public Float f14051d;

    public void a(Float f2) {
        this.f14051d = f2;
    }

    public int b() {
        return f.inline_rating;
    }

    public View a(g gVar, View view) {
        RatingBar ratingBar = (RatingBar) view.findViewById(e.inline_rating_bar);
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[0]}, new int[]{gVar.g().h()});
        if (Build.VERSION.SDK_INT >= 21) {
            ratingBar.setProgressTintList(colorStateList);
        }
        ratingBar.setIsIndicator(true);
        ratingBar.setStepSize(f14050c.floatValue());
        ratingBar.setRating(this.f14051d.floatValue());
        ratingBar.setNumStars(5);
        return view;
    }
}
