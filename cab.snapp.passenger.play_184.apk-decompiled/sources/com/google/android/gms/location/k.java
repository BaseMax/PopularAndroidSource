package com.google.android.gms.location;

import com.google.android.gms.common.api.Status;

@Deprecated
public final class k {
    public static final int ERROR = 1;
    public static final int GEOFENCE_NOT_AVAILABLE = 1000;
    public static final int GEOFENCE_TOO_MANY_GEOFENCES = 1001;
    public static final int GEOFENCE_TOO_MANY_PENDING_INTENTS = 1002;
    public static final int SUCCESS = 0;

    private k() {
    }

    public static int zzdv(int i) {
        if ((i < 0 || i > 1) && (1000 > i || i > 1002)) {
            return 1;
        }
        return i;
    }

    public static Status zzdw(int i) {
        if (i == 1) {
            i = 13;
        }
        return new Status(i);
    }
}
