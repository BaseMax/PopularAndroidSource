package com.github.ybq.android.spinkit.a;

import android.util.Property;

public abstract class c<T> extends Property<T, Integer> {
    public abstract void setValue(T t, int i);

    public c(String str) {
        super(Integer.class, str);
    }

    public final void set(T t, Integer num) {
        setValue(t, num.intValue());
    }
}
