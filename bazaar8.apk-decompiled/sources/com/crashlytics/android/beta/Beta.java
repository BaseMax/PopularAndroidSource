package com.crashlytics.android.beta;

import e.a.a.a.a.b.o;
import e.a.a.a.f;
import e.a.a.a.l;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.Collections;
import java.util.Map;

public class Beta extends l<Boolean> implements o {
    public static final String TAG = "Beta";

    public static Beta getInstance() {
        return (Beta) f.a(Beta.class);
    }

    public Map<IdManager.DeviceIdentifierType, String> getDeviceIdentifiers() {
        return Collections.emptyMap();
    }

    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    public String getVersion() {
        return "1.2.10.27";
    }

    public Boolean doInBackground() {
        f.e().d(TAG, "Beta kit initializing...");
        return true;
    }
}
