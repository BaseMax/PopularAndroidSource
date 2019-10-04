package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.k;

public final class z {
    public static b zzy(Status status) {
        return status.hasResolution() ? new k(status) : new b(status);
    }
}
