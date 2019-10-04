package d.a.a;

import android.util.Log;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import d.a.b;
import d.b.h;

/* compiled from: AndroidSupportInjection */
public final class a {
    public static h a(Fragment fragment) {
        Fragment fragment2 = fragment;
        do {
            fragment2 = fragment2.Q();
            if (fragment2 == null) {
                C0285i x = fragment.x();
                if (x instanceof h) {
                    return (h) x;
                }
                if (x.getApplication() instanceof h) {
                    return (h) x.getApplication();
                }
                throw new IllegalArgumentException(String.format("No injector was found for %s", new Object[]{fragment.getClass().getCanonicalName()}));
            }
        } while (!(fragment2 instanceof h));
        return (h) fragment2;
    }

    public static void b(Fragment fragment) {
        h.a(fragment, "fragment");
        h a2 = a(fragment);
        if (Log.isLoggable("dagger.android.support", 3)) {
            Log.d("dagger.android.support", String.format("An injector for %s was found in %s", new Object[]{fragment.getClass().getCanonicalName(), a2.getClass().getCanonicalName()}));
        }
        b<Fragment> i2 = a2.i();
        h.a(i2, "%s.supportFragmentInjector() returned null", a2.getClass());
        i2.a(fragment);
    }
}
