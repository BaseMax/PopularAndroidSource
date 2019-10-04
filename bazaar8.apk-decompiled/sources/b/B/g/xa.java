package b.b.g;

import android.os.Build;
import android.view.View;

/* compiled from: TooltipCompat */
public class xa {
    public static void a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            Aa.a(view, charSequence);
        }
    }
}
