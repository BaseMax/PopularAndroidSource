package c.b.a.c.d.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import b.b.f.d;
import b.i.b.a.h;

/* compiled from: DrawableDecoderCompat */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f4214a = true;

    public static Drawable a(Context context, Context context2, int i2) {
        return a(context, context2, i2, null);
    }

    public static Drawable b(Context context, int i2, Resources.Theme theme) {
        return h.a(context.getResources(), i2, theme);
    }

    public static Drawable c(Context context, int i2, Resources.Theme theme) {
        if (theme != null) {
            context = new d(context, theme);
        }
        return b.b.b.a.a.c(context, i2);
    }

    public static Drawable a(Context context, int i2, Resources.Theme theme) {
        return a(context, context, i2, theme);
    }

    public static Drawable a(Context context, Context context2, int i2, Resources.Theme theme) {
        try {
            if (f4214a) {
                return c(context2, i2, theme);
            }
        } catch (NoClassDefFoundError unused) {
            f4214a = false;
        } catch (IllegalStateException e2) {
            if (!context.getPackageName().equals(context2.getPackageName())) {
                return b.i.b.a.c(context2, i2);
            }
            throw e2;
        } catch (Resources.NotFoundException unused2) {
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return b(context2, i2, theme);
    }
}
