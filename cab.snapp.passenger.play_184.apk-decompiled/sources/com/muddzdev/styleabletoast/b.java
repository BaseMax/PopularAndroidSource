package com.muddzdev.styleabletoast;

import android.content.Context;
import android.util.TypedValue;
import androidx.core.text.TextUtilsCompat;
import java.util.Locale;

final class b {
    b() {
    }

    static int a(Context context, int i) {
        return (int) TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
    }

    static boolean a() {
        return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }
}
