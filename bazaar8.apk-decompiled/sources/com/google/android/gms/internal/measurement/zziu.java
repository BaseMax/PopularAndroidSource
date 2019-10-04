package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zziu extends IOException {
    public zziu(String str) {
        super(str);
    }

    public static zziu a() {
        return new zziu("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zziu b() {
        return new zziu("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zziu c() {
        return new zziu("CodedInputStream encountered a malformed varint.");
    }

    public zziu(String str, Exception exc) {
        super(str, exc);
    }
}
