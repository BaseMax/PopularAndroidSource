package c.b.a.g.a;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import c.b.a.g.b.b;

/* compiled from: ImageViewTarget */
public abstract class d<Z> extends i<ImageView, Z> implements b.a {

    /* renamed from: i  reason: collision with root package name */
    public Animatable f4364i;

    public d(ImageView imageView) {
        super(imageView);
    }

    public void a(Drawable drawable) {
        super.a(drawable);
        d((Object) null);
        d(drawable);
    }

    public void b(Drawable drawable) {
        super.b(drawable);
        d((Object) null);
        d(drawable);
    }

    public void c(Drawable drawable) {
        super.c(drawable);
        Animatable animatable = this.f4364i;
        if (animatable != null) {
            animatable.stop();
        }
        d((Object) null);
        d(drawable);
    }

    public abstract void c(Z z);

    public void d(Drawable drawable) {
        ((ImageView) this.f4369d).setImageDrawable(drawable);
    }

    public final void d(Z z) {
        c(z);
        b(z);
    }

    public void a(Z z, b<? super Z> bVar) {
        if (bVar == null || !bVar.a(z, this)) {
            d(z);
        } else {
            b(z);
        }
    }

    public void b() {
        Animatable animatable = this.f4364i;
        if (animatable != null) {
            animatable.stop();
        }
    }

    public final void b(Z z) {
        if (z instanceof Animatable) {
            this.f4364i = (Animatable) z;
            this.f4364i.start();
            return;
        }
        this.f4364i = null;
    }

    public void a() {
        Animatable animatable = this.f4364i;
        if (animatable != null) {
            animatable.start();
        }
    }
}
