package com.bumptech.glide.e.b;

import android.view.View;
import com.bumptech.glide.e.b.b;

public final class f<R> implements b<R> {

    /* renamed from: a  reason: collision with root package name */
    private final a f2042a;

    public interface a {
        void animate(View view);
    }

    public f(a aVar) {
        this.f2042a = aVar;
    }

    public final boolean transition(R r, b.a aVar) {
        if (aVar.getView() != null) {
            this.f2042a.animate(aVar.getView());
        }
        return false;
    }
}
