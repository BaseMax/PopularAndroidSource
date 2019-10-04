package com.getkeepsafe.taptargetview;

import android.os.Build;
import android.view.View;
import android.view.ViewManager;
import android.view.ViewTreeObserver;

final class g {
    g() {
    }

    static void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (Build.VERSION.SDK_INT >= 16) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        } else {
            viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
    }

    static void a(ViewManager viewManager, View view) {
        if (viewManager != null) {
            try {
                viewManager.removeView(view);
            } catch (Exception unused) {
            }
        }
    }
}
