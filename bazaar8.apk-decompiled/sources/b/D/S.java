package b.D;

import android.os.Build;
import android.view.ViewGroup;

/* compiled from: ViewGroupUtils */
public class S {
    public static Q a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new P(viewGroup);
        }
        return O.a(viewGroup);
    }

    public static void a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 18) {
            V.a(viewGroup, z);
        } else {
            U.a(viewGroup, z);
        }
    }
}
