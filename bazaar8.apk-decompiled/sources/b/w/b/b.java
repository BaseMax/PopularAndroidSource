package b.w.b;

import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.NavHostFragment;
import b.w.C0313j;
import h.f.b.j;

/* compiled from: Fragment.kt */
public final class b {
    public static final C0313j a(Fragment fragment) {
        j.b(fragment, "$this$findNavController");
        C0313j b2 = NavHostFragment.b(fragment);
        j.a((Object) b2, "NavHostFragment.findNavController(this)");
        return b2;
    }
}
