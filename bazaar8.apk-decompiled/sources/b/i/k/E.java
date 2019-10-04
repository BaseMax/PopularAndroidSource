package b.i.k;

import android.view.View;
import android.view.ViewGroup;
import h.f.b.j;
import h.j.d;
import java.util.Iterator;

/* compiled from: ViewGroup.kt */
public final class E {
    public static final d<View> a(ViewGroup viewGroup) {
        j.b(viewGroup, "$receiver");
        return new C(viewGroup);
    }

    public static final Iterator<View> b(ViewGroup viewGroup) {
        j.b(viewGroup, "$receiver");
        return new D(viewGroup);
    }
}
