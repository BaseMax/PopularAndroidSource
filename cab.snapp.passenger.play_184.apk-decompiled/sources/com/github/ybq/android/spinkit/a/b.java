package com.github.ybq.android.spinkit.a;

import android.util.Property;

public abstract class b<T> extends Property<T, Float> {
    public abstract void setValue(T t, float f);

    public b(String str) {
        super(Float.class, str);
    }

    public final void set(T t, Float f) {
        setValue(t, f.floatValue());
    }
}
