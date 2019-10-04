package c.e.a.b.d;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import c.e.a.b.d.d.r;

public class b extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    public Dialog f9933a = null;

    /* renamed from: b  reason: collision with root package name */
    public DialogInterface.OnCancelListener f9934b = null;

    public static b a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        b bVar = new b();
        r.a(dialog, (Object) "Cannot display null dialog");
        Dialog dialog2 = dialog;
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        bVar.f9933a = dialog2;
        if (onCancelListener != null) {
            bVar.f9934b = onCancelListener;
        }
        return bVar;
    }

    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f9934b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f9933a == null) {
            setShowsDialog(false);
        }
        return this.f9933a;
    }

    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
