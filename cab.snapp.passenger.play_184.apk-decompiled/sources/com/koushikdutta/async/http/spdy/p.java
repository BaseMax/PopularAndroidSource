package com.koushikdutta.async.http.spdy;

import com.koushikdutta.async.http.Protocol;
import java.util.List;
import java.util.Locale;

final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f4831a = q.immutableList((T[]) new String[]{"connection", "host", "keep-alive", "proxy-connection", "transfer-encoding"});

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f4832b = q.immutableList((T[]) new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade"});

    p() {
    }

    static boolean a(Protocol protocol, String str) {
        if (protocol == Protocol.SPDY_3) {
            return f4831a.contains(str.toLowerCase(Locale.US));
        }
        if (protocol == Protocol.HTTP_2) {
            return f4832b.contains(str.toLowerCase(Locale.US));
        }
        throw new AssertionError(protocol);
    }
}
