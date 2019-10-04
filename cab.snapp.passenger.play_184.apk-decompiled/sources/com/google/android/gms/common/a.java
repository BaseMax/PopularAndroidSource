package com.google.android.gms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.ap;

public final class a extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f2727a = null;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnCancelListener f2728b = null;

    public static a newInstance(Dialog dialog) {
        return newInstance(dialog, null);
    }

    public static a newInstance(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        a aVar = new a();
        Dialog dialog2 = (Dialog) ap.checkNotNull(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        aVar.f2727a = dialog2;
        if (onCancelListener != null) {
            aVar.f2728b = onCancelListener;
        }
        return aVar;
    }

    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f2728b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    public final Dialog onCreateDialog(Bundle bundle) {
        if (this.f2727a == null) {
            setShowsDialog(false);
        }
        return this.f2727a;
    }

    public final void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
