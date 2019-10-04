package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Intent;
import java.util.Arrays;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final String f2967a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2968b;
    private final ComponentName c;
    private final int d;

    public i(ComponentName componentName, int i) {
        this.f2967a = null;
        this.f2968b = null;
        this.c = (ComponentName) ap.checkNotNull(componentName);
        this.d = 129;
    }

    public i(String str, String str2, int i) {
        this.f2967a = ap.zzgm(str);
        this.f2968b = ap.zzgm(str2);
        this.c = null;
        this.d = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return ag.equal(this.f2967a, iVar.f2967a) && ag.equal(this.f2968b, iVar.f2968b) && ag.equal(this.c, iVar.c) && this.d == iVar.d;
    }

    public final ComponentName getComponentName() {
        return this.c;
    }

    public final String getPackage() {
        return this.f2968b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2967a, this.f2968b, this.c, Integer.valueOf(this.d)});
    }

    public final String toString() {
        String str = this.f2967a;
        return str == null ? this.c.flattenToString() : str;
    }

    public final int zzalk() {
        return this.d;
    }

    public final Intent zzall() {
        String str = this.f2967a;
        return str != null ? new Intent(str).setPackage(this.f2968b) : new Intent().setComponent(this.c);
    }
}
