package io.fabric.sdk.android.services.network;

import java.io.InputStream;

public interface f {
    public static final long PIN_CREATION_TIME_UNDEFINED = -1;

    String getKeyStorePassword();

    InputStream getKeyStoreStream();

    long getPinCreationTimeInMillis();

    String[] getPins();
}
