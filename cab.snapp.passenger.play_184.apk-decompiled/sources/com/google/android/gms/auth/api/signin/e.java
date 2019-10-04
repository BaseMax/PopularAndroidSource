package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;

public final class e implements m {

    /* renamed from: a  reason: collision with root package name */
    private Status f2656a;

    /* renamed from: b  reason: collision with root package name */
    private GoogleSignInAccount f2657b;

    public e(GoogleSignInAccount googleSignInAccount, Status status) {
        this.f2657b = googleSignInAccount;
        this.f2656a = status;
    }

    public final GoogleSignInAccount getSignInAccount() {
        return this.f2657b;
    }

    public final Status getStatus() {
        return this.f2656a;
    }

    public final boolean isSuccess() {
        return this.f2656a.isSuccess();
    }
}
