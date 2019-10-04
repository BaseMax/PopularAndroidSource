package com.bumptech.glide.e.b;

import android.graphics.drawable.Drawable;
import android.view.View;

public interface b<R> {

    public interface a {
        Drawable getCurrentDrawable();

        View getView();

        void setDrawable(Drawable drawable);
    }

    boolean transition(R r, a aVar);
}
