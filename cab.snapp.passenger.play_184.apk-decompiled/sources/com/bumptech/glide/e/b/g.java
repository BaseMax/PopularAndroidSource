package com.bumptech.glide.e.b;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import com.bumptech.glide.e.b.b;

public final class g<R> implements b<R> {

    /* renamed from: a  reason: collision with root package name */
    private final a f2043a;

    interface a {
        Animation build(Context context);
    }

    g(a aVar) {
        this.f2043a = aVar;
    }

    public final boolean transition(R r, b.a aVar) {
        View view = aVar.getView();
        if (view != null) {
            view.clearAnimation();
            view.startAnimation(this.f2043a.build(view.getContext()));
        }
        return false;
    }
}
