package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import androidx.collection.LruCache;

public final class ei extends LruCache<Object, Drawable> {
    public ei() {
        super(10);
    }
}
