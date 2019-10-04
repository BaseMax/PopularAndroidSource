package com.bumptech.glide.load.resource.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f2332a = true;

    private a() {
    }

    public static Drawable getDrawable(Context context, Context context2, int i) {
        return a(context, context2, i, null);
    }

    public static Drawable getDrawable(Context context, int i, Resources.Theme theme) {
        return a(context, context, i, theme);
    }

    private static Drawable a(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (f2332a) {
                return AppCompatResources.getDrawable(theme != null ? new ContextThemeWrapper(context2, theme) : context2, i);
            }
        } catch (NoClassDefFoundError unused) {
            f2332a = false;
        } catch (IllegalStateException e) {
            if (!context.getPackageName().equals(context2.getPackageName())) {
                return ContextCompat.getDrawable(context2, i);
            }
            throw e;
        } catch (Resources.NotFoundException unused2) {
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return ResourcesCompat.getDrawable(context2.getResources(), i, theme);
    }
}
