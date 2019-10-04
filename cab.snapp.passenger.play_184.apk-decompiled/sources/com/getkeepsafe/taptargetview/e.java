package com.getkeepsafe.taptargetview;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;

final class e {
    e() {
    }

    static int a(Context context, int i) {
        return (int) TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
    }

    static int b(Context context, int i) {
        return (int) TypedValue.applyDimension(2, (float) i, context.getResources().getDisplayMetrics());
    }

    static int a(Context context, String str) {
        Resources.Theme theme = context.getTheme();
        if (theme == null) {
            return -1;
        }
        TypedValue typedValue = new TypedValue();
        int identifier = context.getResources().getIdentifier(str, "attr", context.getPackageName());
        if (identifier == 0) {
            return -1;
        }
        theme.resolveAttribute(identifier, typedValue, true);
        return typedValue.data;
    }
}
