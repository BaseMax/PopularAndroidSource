package c.e.c.d;

import android.os.Bundle;
import com.google.firebase.iid.zzak;

/* renamed from: c.e.c.d.l  reason: case insensitive filesystem */
public final class C0992l extends C0994n<Void> {
    public C0992l(int i2, int i3, Bundle bundle) {
        super(i2, 2, bundle);
    }

    public final void a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            a(null);
        } else {
            a(new zzak(4, "Invalid response to one way request"));
        }
    }

    public final boolean a() {
        return true;
    }
}
