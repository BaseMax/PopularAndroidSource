package b.a;

import androidx.activity.OnBackPressedDispatcher;
import b.r.k;
import h.f.a.b;
import h.f.b.j;
import h.h;

/* compiled from: OnBackPressedDispatcher.kt */
public final class f {
    public static /* synthetic */ d a(OnBackPressedDispatcher onBackPressedDispatcher, k kVar, boolean z, b bVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            kVar = null;
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        return a(onBackPressedDispatcher, kVar, z, bVar);
    }

    public static final d a(OnBackPressedDispatcher onBackPressedDispatcher, k kVar, boolean z, b<? super d, h> bVar) {
        j.b(onBackPressedDispatcher, "$this$addCallback");
        j.b(bVar, "onBackPressed");
        e eVar = new e(bVar, z, z);
        if (kVar != null) {
            onBackPressedDispatcher.a(kVar, eVar);
        } else {
            onBackPressedDispatcher.a(eVar);
        }
        return eVar;
    }
}
