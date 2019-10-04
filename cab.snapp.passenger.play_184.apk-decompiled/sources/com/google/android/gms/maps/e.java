package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.a.bn;
import com.google.android.gms.maps.a.bq;
import com.google.android.gms.maps.model.b;
import com.google.android.gms.maps.model.j;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3706a = false;

    private e() {
    }

    public static synchronized int initialize(Context context) {
        synchronized (e.class) {
            ap.checkNotNull(context, "Context is null");
            if (f3706a) {
                return 0;
            }
            try {
                bq zzdt = bn.zzdt(context);
                try {
                    b.zza(zzdt.zzawc());
                    b.zza(zzdt.zzawd());
                    f3706a = true;
                    return 0;
                } catch (RemoteException e) {
                    throw new j(e);
                }
            } catch (c e2) {
                return e2.errorCode;
            }
        }
    }
}
