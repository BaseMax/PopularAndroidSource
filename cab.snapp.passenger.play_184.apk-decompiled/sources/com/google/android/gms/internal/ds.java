package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.auth.api.proxy.a;
import com.google.android.gms.common.api.Status;

final class ds implements a.C0063a {

    /* renamed from: a  reason: collision with root package name */
    private Status f3130a;

    /* renamed from: b  reason: collision with root package name */
    private ProxyResponse f3131b;

    public ds(ProxyResponse proxyResponse) {
        this.f3131b = proxyResponse;
        this.f3130a = Status.zzfni;
    }

    public ds(Status status) {
        this.f3130a = status;
    }

    public final ProxyResponse getResponse() {
        return this.f3131b;
    }

    public final Status getStatus() {
        return this.f3130a;
    }
}
