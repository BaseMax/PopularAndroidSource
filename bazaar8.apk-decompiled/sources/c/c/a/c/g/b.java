package c.c.a.c.g;

import android.content.Context;
import c.c.a.c.a;
import h.f.b.j;

/* compiled from: Currency.kt */
public final class b {
    public static /* synthetic */ String a(Context context, Long l2, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        return a(context, l2, z);
    }

    public static final String a(Context context, Long l2, boolean z) {
        j.b(context, "context");
        if (l2 == null) {
            String string = context.getString(a.free);
            j.a((Object) string, "context.getString(R.string.free)");
            return string;
        } else if (l2.longValue() > 0 || !z) {
            String string2 = context.getString(a.price_placeholder, new Object[]{Long.valueOf(l2.longValue() / ((long) 10))});
            j.a((Object) string2, "context.getString(R.stri…_placeholder, price / 10)");
            return string2;
        } else {
            String string3 = context.getString(a.free);
            j.a((Object) string3, "context.getString(R.string.free)");
            return string3;
        }
    }

    public static final String a(Context context, Long l2) {
        j.b(context, "context");
        if (l2 == null) {
            String string = context.getString(a.play);
            j.a((Object) string, "context.getString(R.string.play)");
            return string;
        } else if (l2.longValue() <= 0) {
            String string2 = context.getString(a.play);
            j.a((Object) string2, "context.getString(R.string.play)");
            return string2;
        } else {
            String string3 = context.getString(a.price_placeholder, new Object[]{Long.valueOf(l2.longValue() / ((long) 10))});
            j.a((Object) string3, "context.getString(R.stri…_placeholder, price / 10)");
            return string3;
        }
    }
}
