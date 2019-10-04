package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.google.android.gms.a.a;
import com.google.android.gms.a.m;
import com.google.android.gms.internal.ft;

public class FlagProviderImpl extends ft {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3028a = false;

    /* renamed from: b  reason: collision with root package name */
    private SharedPreferences f3029b;

    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        return !this.f3028a ? z : b.zza(this.f3029b, str, Boolean.valueOf(z)).booleanValue();
    }

    public int getIntFlagValue(String str, int i, int i2) {
        return !this.f3028a ? i : d.zza(this.f3029b, str, Integer.valueOf(i)).intValue();
    }

    public long getLongFlagValue(String str, long j, int i) {
        return !this.f3028a ? j : f.zza(this.f3029b, str, Long.valueOf(j)).longValue();
    }

    public String getStringFlagValue(String str, String str2, int i) {
        return !this.f3028a ? str2 : h.zza(this.f3029b, str, str2);
    }

    public void init(a aVar) {
        Context context = (Context) m.zzx(aVar);
        if (!this.f3028a) {
            try {
                this.f3029b = j.zzdi(context.createPackageContext("com.google.android.gms", 0));
                this.f3028a = true;
            } catch (PackageManager.NameNotFoundException unused) {
            } catch (Exception e) {
                String valueOf = String.valueOf(e.getMessage());
                if (valueOf.length() != 0) {
                    "Could not retrieve sdk flags, continuing with defaults: ".concat(valueOf);
                } else {
                    new String("Could not retrieve sdk flags, continuing with defaults: ");
                }
            }
        }
    }
}
