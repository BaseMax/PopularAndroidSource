package com.google.android.gms.internal.measurement;

import c.e.a.b.g.f.Sb;
import java.io.IOException;

public class zzfh extends IOException {
    public Sb zzahn = null;

    public zzfh(String str) {
        super(str);
    }

    public static zzfh b() {
        return new zzfh("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzfh c() {
        return new zzfh("CodedInputStream encountered a malformed varint.");
    }

    public static zzfh d() {
        return new zzfh("Protocol message contained an invalid tag (zero).");
    }

    public static zzfh e() {
        return new zzfh("Protocol message end-group tag did not match expected tag.");
    }

    public static zzfi f() {
        return new zzfi("Protocol message tag had invalid wire type.");
    }

    public static zzfh g() {
        return new zzfh("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    public static zzfh h() {
        return new zzfh("Failed to parse the message.");
    }

    public static zzfh i() {
        return new zzfh("Protocol message had invalid UTF-8.");
    }

    public final zzfh a(Sb sb) {
        this.zzahn = sb;
        return this;
    }

    public static zzfh a() {
        return new zzfh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
