package b.l.a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;

/* compiled from: ViewBindingAdapter */
public class g {
    public static void a(View view, View.OnClickListener onClickListener, boolean z) {
        view.setOnClickListener(onClickListener);
        view.setClickable(z);
    }

    public static void a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
