package com.google.firebase;

import com.google.android.gms.common.internal.ap;

public class c extends Exception {
    @Deprecated
    protected c() {
    }

    public c(String str) {
        super(ap.zzh(str, "Detail message must not be empty"));
    }

    public c(String str, Throwable th) {
        super(ap.zzh(str, "Detail message must not be empty"), th);
    }
}
