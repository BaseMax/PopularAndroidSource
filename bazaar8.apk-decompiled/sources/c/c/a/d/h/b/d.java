package c.c.a.d.h.b;

import android.util.Property;

/* compiled from: FloatProperty */
public abstract class d<T> extends Property<T, Float> {
    public d(String str) {
        super(Float.class, str);
    }

    public abstract void a(T t, float f2);

    /* renamed from: a */
    public final void set(T t, Float f2) {
        a(t, f2.floatValue());
    }
}
