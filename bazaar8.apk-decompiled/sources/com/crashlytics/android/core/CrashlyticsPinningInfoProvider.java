package com.crashlytics.android.core;

import e.a.a.a.a.e.h;
import java.io.InputStream;

public class CrashlyticsPinningInfoProvider implements h {
    public final PinningInfoProvider pinningInfo;

    public CrashlyticsPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        this.pinningInfo = pinningInfoProvider;
    }

    public String getKeyStorePassword() {
        return this.pinningInfo.getKeyStorePassword();
    }

    public InputStream getKeyStoreStream() {
        return this.pinningInfo.getKeyStoreStream();
    }

    public long getPinCreationTimeInMillis() {
        return -1;
    }

    public String[] getPins() {
        return this.pinningInfo.getPins();
    }
}
