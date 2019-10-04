package c.c.a.e.b;

import android.content.Context;
import h.f.b.j;

/* compiled from: DeviceDisplayInfoDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f4875a;

    public a(Context context) {
        j.b(context, "context");
        this.f4875a = context.getResources().getBoolean(c.c.a.e.a.is_tablet);
    }

    public final boolean a() {
        return this.f4875a;
    }
}
