package c.e.c.d;

import android.os.Bundle;

/* renamed from: c.e.c.d.p  reason: case insensitive filesystem */
public final class C0996p extends C0994n<Bundle> {
    public C0996p(int i2, int i3, Bundle bundle) {
        super(i2, 1, bundle);
    }

    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        a(bundle2);
    }

    public final boolean a() {
        return false;
    }
}
