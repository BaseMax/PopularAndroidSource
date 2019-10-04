package c.c.a.d.h.b;

import android.util.Property;

/* compiled from: IntProperty */
public abstract class e<T> extends Property<T, Integer> {
    public e(String str) {
        super(Integer.class, str);
    }

    public abstract void a(T t, int i2);

    /* renamed from: a */
    public final void set(T t, Integer num) {
        a(t, num.intValue());
    }
}
