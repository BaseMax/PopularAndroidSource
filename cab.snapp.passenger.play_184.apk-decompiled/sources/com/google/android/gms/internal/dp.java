package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.auth.api.proxy.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.internal.ap;

public final class dp implements a {
    public final h<a.C0063a> performProxyRequest(f fVar, ProxyRequest proxyRequest) {
        ap.checkNotNull(fVar);
        ap.checkNotNull(proxyRequest);
        return fVar.zze(new dq(fVar, proxyRequest));
    }
}
