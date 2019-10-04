package com.koushikdutta.async;

import java.security.cert.X509Certificate;
import javax.net.ssl.SSLEngine;

public interface e extends j {
    X509Certificate[] getPeerCertificates();

    SSLEngine getSSLEngine();
}
