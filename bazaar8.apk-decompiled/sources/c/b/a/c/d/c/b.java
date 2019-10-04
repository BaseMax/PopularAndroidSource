package c.b.a.c.d.c;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import c.b.a.c.b.D;
import c.b.a.c.b.y;
import c.b.a.c.d.e.c;
import c.b.a.i.i;

/* compiled from: DrawableResource */
public abstract class b<T extends Drawable> implements D<T>, y {

    /* renamed from: a  reason: collision with root package name */
    public final T f4215a;

    public b(T t) {
        i.a(t);
        this.f4215a = (Drawable) t;
    }

    public void d() {
        T t = this.f4215a;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (t instanceof c) {
            ((c) t).e().prepareToDraw();
        }
    }

    public final T get() {
        Drawable.ConstantState constantState = this.f4215a.getConstantState();
        if (constantState == null) {
            return this.f4215a;
        }
        return constantState.newDrawable();
    }
}
