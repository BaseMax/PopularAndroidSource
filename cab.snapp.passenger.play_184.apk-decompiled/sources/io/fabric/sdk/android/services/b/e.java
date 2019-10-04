package io.fabric.sdk.android.services.b;

import java.io.IOException;

public interface e {
    void cancelTimeBasedFileRollOver();

    boolean rollFileOver() throws IOException;

    void scheduleTimeBasedRollOverIfNeeded();
}
