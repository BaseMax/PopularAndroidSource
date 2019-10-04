package com.google.android.gms.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.a;
import com.google.android.gms.common.api.Status;

public final class cr implements a {

    /* renamed from: a  reason: collision with root package name */
    private final Status f3120a;

    /* renamed from: b  reason: collision with root package name */
    private final Credential f3121b;

    public cr(Status status, Credential credential) {
        this.f3120a = status;
        this.f3121b = credential;
    }

    public static cr zzf(Status status) {
        return new cr(status, null);
    }

    public final Credential getCredential() {
        return this.f3121b;
    }

    public final Status getStatus() {
        return this.f3120a;
    }
}
