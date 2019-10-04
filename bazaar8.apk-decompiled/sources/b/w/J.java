package b.w;

import android.app.Activity;
import android.view.View;
import android.view.ViewParent;
import b.i.a.b;
import java.lang.ref.WeakReference;

/* compiled from: Navigation */
public final class J {
    public static C0313j a(Activity activity, int i2) {
        C0313j b2 = b(b.a(activity, i2));
        if (b2 != null) {
            return b2;
        }
        throw new IllegalStateException("Activity " + activity + " does not have a NavController set on " + i2);
    }

    public static C0313j b(View view) {
        while (view != null) {
            C0313j c2 = c(view);
            if (c2 != null) {
                return c2;
            }
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    public static C0313j c(View view) {
        Object tag = view.getTag(M.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            return (C0313j) ((WeakReference) tag).get();
        }
        if (tag instanceof C0313j) {
            return (C0313j) tag;
        }
        return null;
    }

    public static C0313j a(View view) {
        C0313j b2 = b(view);
        if (b2 != null) {
            return b2;
        }
        throw new IllegalStateException("View " + view + " does not have a NavController set");
    }

    public static void a(View view, C0313j jVar) {
        view.setTag(M.nav_controller_view_tag, jVar);
    }
}
