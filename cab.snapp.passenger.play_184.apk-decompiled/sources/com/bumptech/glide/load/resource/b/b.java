package com.bumptech.glide.load.resource.b;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.b.r;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.resource.d.c;

public abstract class b<T extends Drawable> implements r, v<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f2333a;

    public b(T t) {
        this.f2333a = (Drawable) j.checkNotNull(t);
    }

    public final T get() {
        Drawable.ConstantState constantState = this.f2333a.getConstantState();
        if (constantState == null) {
            return this.f2333a;
        }
        return constantState.newDrawable();
    }

    public void initialize() {
        T t = this.f2333a;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
            return;
        }
        if (t instanceof c) {
            ((c) t).getFirstFrame().prepareToDraw();
        }
    }
}
