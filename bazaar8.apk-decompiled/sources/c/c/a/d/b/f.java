package c.c.a.d.b;

import android.content.Context;
import android.os.IBinder;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import h.f.b.j;

/* compiled from: FragmentExt.kt */
public final class f {
    public static /* synthetic */ void a(Fragment fragment, IBinder iBinder, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            iBinder = null;
        }
        a(fragment, iBinder);
    }

    public static final void a(Fragment fragment, IBinder iBinder) {
        j.b(fragment, "$this$hideKeyboard");
        C0285i x = fragment.x();
        if (x != null) {
            a.a(x, iBinder);
        }
    }

    public static /* synthetic */ void a(Fragment fragment, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i3 = 0;
        }
        a(fragment, i2, i3);
    }

    public static final void a(Fragment fragment, int i2, int i3) {
        j.b(fragment, "$this$toastMessage");
        Context E = fragment.E();
        if (E != null) {
            Toast.makeText(E, i2, i3).show();
        }
    }
}
