package b.i.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* compiled from: WrappedDrawableState */
public final class g extends Drawable.ConstantState {

    /* renamed from: a  reason: collision with root package name */
    public int f2632a;

    /* renamed from: b  reason: collision with root package name */
    public Drawable.ConstantState f2633b;

    /* renamed from: c  reason: collision with root package name */
    public ColorStateList f2634c = null;

    /* renamed from: d  reason: collision with root package name */
    public PorterDuff.Mode f2635d = e.f2624a;

    public g(g gVar) {
        if (gVar != null) {
            this.f2632a = gVar.f2632a;
            this.f2633b = gVar.f2633b;
            this.f2634c = gVar.f2634c;
            this.f2635d = gVar.f2635d;
        }
    }

    public boolean a() {
        return this.f2633b != null;
    }

    public int getChangingConfigurations() {
        int i2 = this.f2632a;
        Drawable.ConstantState constantState = this.f2633b;
        return i2 | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    public Drawable newDrawable() {
        return newDrawable(null);
    }

    public Drawable newDrawable(Resources resources) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new f(this, resources);
        }
        return new e(this, resources);
    }
}
