package com.google.android.gms.internal;

import java.io.IOException;

public final class sw extends IOException {
    public sw(String str) {
        super(str);
    }

    static sw a() {
        return new sw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    static sw b() {
        return new sw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static sw c() {
        return new sw("CodedInputStream encountered a malformed varint.");
    }

    static sw d() {
        return new sw("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
}
