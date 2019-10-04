package com.google.firebase.iid;

import android.os.Bundle;

final class u extends s<Bundle> {
    u(int i, Bundle bundle) {
        super(i, 1, bundle);
    }

    /* access modifiers changed from: package-private */
    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        a(bundle2);
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        return false;
    }
}
