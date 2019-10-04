package b.b.a;

import android.app.Dialog;
import android.os.Bundle;
import b.o.a.C0280d;

/* compiled from: AppCompatDialogFragment */
public class C extends C0280d {
    public void a(Dialog dialog, int i2) {
        if (dialog instanceof B) {
            B b2 = (B) dialog;
            if (!(i2 == 1 || i2 == 2)) {
                if (i2 == 3) {
                    dialog.getWindow().addFlags(24);
                } else {
                    return;
                }
            }
            b2.a(1);
            return;
        }
        super.a(dialog, i2);
    }

    public Dialog n(Bundle bundle) {
        return new B(E(), Oa());
    }
}
