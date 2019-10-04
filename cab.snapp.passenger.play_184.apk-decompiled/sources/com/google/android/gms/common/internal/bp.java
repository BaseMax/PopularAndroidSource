package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.bd;

public abstract class bp implements DialogInterface.OnClickListener {
    public static bp zza(Activity activity, Intent intent, int i) {
        return new bq(intent, activity, i);
    }

    public static bp zza(Fragment fragment, Intent intent, int i) {
        return new br(intent, fragment, i);
    }

    public static bp zza(bd bdVar, Intent intent, int i) {
        return new bs(intent, bdVar);
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            zzale();
        } catch (ActivityNotFoundException unused) {
        } finally {
            dialogInterface.dismiss();
        }
    }

    /* access modifiers changed from: protected */
    public abstract void zzale();
}
