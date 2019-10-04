package f.a.a.f;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* compiled from: KeyboardUtils */
public class f {
    public static void a(Context context, View view) {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(view, 1);
            }
        } catch (Exception unused) {
        }
    }

    public static void a(Context context, IBinder iBinder) {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(iBinder, 2);
            }
        } catch (Exception unused) {
        }
    }
}
