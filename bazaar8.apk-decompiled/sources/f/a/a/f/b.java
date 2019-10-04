package f.a.a.f;

import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* compiled from: BitmapDrawablePlaceholder */
public class b extends BitmapDrawable {

    /* renamed from: a  reason: collision with root package name */
    public Drawable f14326a;

    public void a(Drawable drawable) {
        this.f14326a = drawable;
    }

    public void draw(Canvas canvas) {
        Drawable drawable = this.f14326a;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }
}
