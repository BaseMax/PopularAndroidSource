package f.a.a.f;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;

/* compiled from: BackgroundUtil */
public class a {
    public static void a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
