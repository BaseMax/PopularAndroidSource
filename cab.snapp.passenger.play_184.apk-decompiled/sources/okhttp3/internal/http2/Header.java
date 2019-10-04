package okhttp3.internal.http2;

import b.f;
import okhttp3.Headers;
import okhttp3.internal.Util;

public final class Header {
    public static final f PSEUDO_PREFIX = f.encodeUtf8(":");
    public static final f RESPONSE_STATUS = f.encodeUtf8(RESPONSE_STATUS_UTF8);
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    public static final f TARGET_AUTHORITY = f.encodeUtf8(TARGET_AUTHORITY_UTF8);
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    public static final f TARGET_METHOD = f.encodeUtf8(TARGET_METHOD_UTF8);
    public static final String TARGET_METHOD_UTF8 = ":method";
    public static final f TARGET_PATH = f.encodeUtf8(TARGET_PATH_UTF8);
    public static final String TARGET_PATH_UTF8 = ":path";
    public static final f TARGET_SCHEME = f.encodeUtf8(TARGET_SCHEME_UTF8);
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    final int hpackSize;
    public final f name;
    public final f value;

    interface Listener {
        void onHeaders(Headers headers);
    }

    public Header(String str, String str2) {
        this(f.encodeUtf8(str), f.encodeUtf8(str2));
    }

    public Header(f fVar, String str) {
        this(fVar, f.encodeUtf8(str));
    }

    public Header(f fVar, f fVar2) {
        this.name = fVar;
        this.value = fVar2;
        this.hpackSize = fVar.size() + 32 + fVar2.size();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Header) {
            Header header = (Header) obj;
            if (this.name.equals(header.name) && this.value.equals(header.value)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.name.hashCode() + 527) * 31) + this.value.hashCode();
    }

    public final String toString() {
        return Util.format("%s: %s", this.name.utf8(), this.value.utf8());
    }
}
