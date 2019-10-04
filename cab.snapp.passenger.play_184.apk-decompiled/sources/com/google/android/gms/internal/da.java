package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.common.internal.ap;

public final class da {
    public static PendingIntent zza(Context context, a.C0061a aVar, HintRequest hintRequest) {
        ap.checkNotNull(context, "context must not be null");
        ap.checkNotNull(hintRequest, "request must not be null");
        PasswordSpecification zzaas = (aVar == null || aVar.zzaas() == null) ? PasswordSpecification.zzeft : aVar.zzaas();
        Intent putExtra = new Intent("com.google.android.gms.auth.api.credentials.PICKER").putExtra("com.google.android.gms.credentials.hintRequestVersion", 2).putExtra("com.google.android.gms.credentials.RequestType", "Hints").putExtra("com.google.android.gms.credentials.ClaimedCallingPackage", null);
        em.zza(zzaas, putExtra, "com.google.android.gms.credentials.PasswordSpecification");
        em.zza(hintRequest, putExtra, "com.google.android.gms.credentials.HintRequest");
        return PendingIntent.getActivity(context, 2000, putExtra, 134217728);
    }
}
