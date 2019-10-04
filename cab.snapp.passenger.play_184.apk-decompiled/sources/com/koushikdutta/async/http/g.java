package com.koushikdutta.async.http;

import com.koushikdutta.async.http.b;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;

public interface g {
    void configureEngine(SSLEngine sSLEngine, b.a aVar, String str, int i);

    SSLEngine createEngine(SSLContext sSLContext, String str, int i);
}
