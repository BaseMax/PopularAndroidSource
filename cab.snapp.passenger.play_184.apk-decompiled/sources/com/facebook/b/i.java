package com.facebook.b;

import android.os.StrictMode;
import java.io.File;

public final class i extends l {
    public final int loadLibrary(String str, int i, StrictMode.ThreadPolicy threadPolicy) {
        return 1;
    }

    public final File unpackLibrary(String str) {
        throw new UnsupportedOperationException("unpacking not supported in test mode");
    }
}
