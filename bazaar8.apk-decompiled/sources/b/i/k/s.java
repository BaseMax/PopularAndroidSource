package b.i.k;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;

/* compiled from: PointerIconCompat */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public Object f2827a;

    public s(Object obj) {
        this.f2827a = obj;
    }

    public Object a() {
        return this.f2827a;
    }

    public static s a(Context context, int i2) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new s(PointerIcon.getSystemIcon(context, i2));
        }
        return new s(null);
    }
}
