package c.c.a.d.b;

import android.app.Activity;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: ActivityExt.kt */
public final class a {
    public static final void a(Activity activity, IBinder iBinder) {
        j.b(activity, "$this$hideKeyboard");
        Object systemService = activity.getSystemService("input_method");
        if (systemService != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) systemService;
            View currentFocus = activity.getCurrentFocus();
            if (currentFocus == null) {
                currentFocus = new View(activity);
            }
            if (iBinder == null) {
                iBinder = currentFocus.getWindowToken();
            }
            inputMethodManager.hideSoftInputFromWindow(iBinder, 0);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
    }
}
