package com.google.android.gms.internal;

import java.io.IOException;

public class py extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private qr f3461a = null;

    public py(String str) {
        super(str);
    }

    static py a() {
        return new py("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    static py b() {
        return new py("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static py c() {
        return new py("CodedInputStream encountered a malformed varint.");
    }

    static py d() {
        return new py("Protocol message contained an invalid tag (zero).");
    }

    static py e() {
        return new py("Protocol message end-group tag did not match expected tag.");
    }

    static pz f() {
        return new pz("Protocol message tag had invalid wire type.");
    }

    static py g() {
        return new py("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    static py h() {
        return new py("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    static py i() {
        return new py("Protocol message had invalid UTF-8.");
    }

    public final py zzi(qr qrVar) {
        this.f3461a = qrVar;
        return this;
    }
}
