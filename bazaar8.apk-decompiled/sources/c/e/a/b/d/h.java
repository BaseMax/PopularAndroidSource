package c.e.a.b.d;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import b.o.a.C0280d;
import b.o.a.C0290n;
import c.e.a.b.d.d.r;

public class h extends C0280d {
    public Dialog ja = null;
    public DialogInterface.OnCancelListener ka = null;

    public static h a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        h hVar = new h();
        r.a(dialog, (Object) "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        hVar.ja = dialog2;
        if (onCancelListener != null) {
            hVar.ka = onCancelListener;
        }
        return hVar;
    }

    public Dialog n(Bundle bundle) {
        if (this.ja == null) {
            l(false);
        }
        return this.ja;
    }

    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.ka;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    public void a(C0290n nVar, String str) {
        super.a(nVar, str);
    }
}
