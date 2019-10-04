package b.i.k;

import android.os.Build;
import android.view.ViewGroup;
import b.i.d;

/* compiled from: ViewGroupCompat */
public final class B {
    public static boolean a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(d.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && z.r(viewGroup) == null) ? false : true;
    }
}
