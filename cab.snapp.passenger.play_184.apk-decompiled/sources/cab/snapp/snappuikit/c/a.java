package cab.snapp.snappuikit.c;

import android.app.Activity;
import android.graphics.Color;
import android.os.Build;
import android.view.Window;
import cab.snapp.snappuikit.a;

public final class a {
    public static void setStatusBarColorRes(Activity activity, int i) {
        setStatusBarColor(activity, activity.getResources().getColor(i));
    }

    public static void setStatusBarColor(Activity activity, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = activity.getWindow();
            if (window != null) {
                int red = Color.red(i);
                int green = Color.green(i);
                int blue = Color.blue(i);
                double d = (double) red;
                Double.isNaN(d);
                double d2 = (double) green;
                Double.isNaN(d2);
                double d3 = (double) blue;
                Double.isNaN(d3);
                boolean z = ((((d * 0.299d) + ((d2 * 0.587d) + (d3 * 0.114d))) > 186.0d ? 1 : (((d * 0.299d) + ((d2 * 0.587d) + (d3 * 0.114d))) == 186.0d ? 0 : -1)) > 0 ? (char) 0 : 65535) == 65535;
                if (Build.VERSION.SDK_INT >= 23) {
                    int systemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
                    activity.getWindow().getDecorView().setSystemUiVisibility(z ? systemUiVisibility & -8193 : systemUiVisibility | 8192);
                }
                if (Build.VERSION.SDK_INT < 23 && i == -1) {
                    i = activity.getResources().getColor(a.b.scorpion);
                }
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(i);
            }
        }
    }

    public static int getStatusBarColor(Activity activity) {
        if (Build.VERSION.SDK_INT < 21) {
            return -1;
        }
        Window window = activity.getWindow();
        if (window == null) {
            return -1;
        }
        window.addFlags(Integer.MIN_VALUE);
        return window.getStatusBarColor();
    }
}
