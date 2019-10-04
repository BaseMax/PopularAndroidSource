package com.google.firebase.a;

import com.google.android.gms.common.internal.ag;
import java.util.Arrays;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private String f4043a;

    public d(String str) {
        this.f4043a = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        return ag.equal(this.f4043a, ((d) obj).f4043a);
    }

    public final String getToken() {
        return this.f4043a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4043a});
    }

    public final String toString() {
        return ag.zzx(this).zzg("token", this.f4043a).toString();
    }
}
