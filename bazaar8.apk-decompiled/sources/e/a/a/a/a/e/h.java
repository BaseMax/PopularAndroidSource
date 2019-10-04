package e.a.a.a.a.e;

import java.io.InputStream;

/* compiled from: PinningInfoProvider */
public interface h {
    String getKeyStorePassword();

    InputStream getKeyStoreStream();

    long getPinCreationTimeInMillis();

    String[] getPins();
}
