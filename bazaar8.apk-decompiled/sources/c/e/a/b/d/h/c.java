package c.e.a.b.d.h;

import android.content.Context;

public class c {

    /* renamed from: a  reason: collision with root package name */
    public static c f10075a = new c();

    /* renamed from: b  reason: collision with root package name */
    public b f10076b = null;

    public static b a(Context context) {
        return f10075a.b(context);
    }

    public final synchronized b b(Context context) {
        if (this.f10076b == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.f10076b = new b(context);
        }
        return this.f10076b;
    }
}
