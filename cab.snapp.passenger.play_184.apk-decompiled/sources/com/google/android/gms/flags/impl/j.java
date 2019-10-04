package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.fv;

public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f3038a;

    public static SharedPreferences zzdi(Context context) throws Exception {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            if (f3038a == null) {
                f3038a = (SharedPreferences) fv.zzb(new k(context));
            }
            sharedPreferences = f3038a;
        }
        return sharedPreferences;
    }
}
