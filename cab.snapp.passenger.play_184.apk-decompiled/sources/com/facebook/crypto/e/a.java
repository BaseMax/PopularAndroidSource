package com.facebook.crypto.e;

import java.io.IOException;

public final class a {
    public static void checkState(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    public static void checkArgumentForIO(boolean z, String str) throws IOException {
        if (!z) {
            throw new IOException(str);
        }
    }
}
