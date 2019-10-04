package com.google.android.gms.auth.api.proxy;

import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.m;

public interface a {

    /* renamed from: com.google.android.gms.auth.api.proxy.a$a  reason: collision with other inner class name */
    public interface C0063a extends m {
        ProxyResponse getResponse();
    }

    h<C0063a> performProxyRequest(f fVar, ProxyRequest proxyRequest);
}
