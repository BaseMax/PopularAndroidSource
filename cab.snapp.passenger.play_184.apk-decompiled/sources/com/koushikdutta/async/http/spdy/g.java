package com.koushikdutta.async.http.spdy;

import java.util.Locale;
import okhttp3.internal.http2.Header;

final class g {
    public static final c RESPONSE_STATUS = c.encodeUtf8(Header.RESPONSE_STATUS_UTF8);
    public static final c TARGET_AUTHORITY = c.encodeUtf8(Header.TARGET_AUTHORITY_UTF8);
    public static final c TARGET_HOST = c.encodeUtf8(":host");
    public static final c TARGET_METHOD = c.encodeUtf8(Header.TARGET_METHOD_UTF8);
    public static final c TARGET_PATH = c.encodeUtf8(Header.TARGET_PATH_UTF8);
    public static final c TARGET_SCHEME = c.encodeUtf8(Header.TARGET_SCHEME_UTF8);
    public static final c VERSION = c.encodeUtf8(":version");

    /* renamed from: a  reason: collision with root package name */
    final int f4786a;
    public final c name;
    public final c value;

    public g(String str, String str2) {
        this(c.encodeUtf8(str), c.encodeUtf8(str2));
    }

    public g(c cVar, String str) {
        this(cVar, c.encodeUtf8(str));
    }

    public g(c cVar, c cVar2) {
        this.name = cVar;
        this.value = cVar2;
        this.f4786a = cVar.size() + 32 + cVar2.size();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (this.name.equals(gVar.name) && this.value.equals(gVar.value)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.name.hashCode() + 527) * 31) + this.value.hashCode();
    }

    public final String toString() {
        return String.format(Locale.ENGLISH, "%s: %s", new Object[]{this.name.utf8(), this.value.utf8()});
    }
}
