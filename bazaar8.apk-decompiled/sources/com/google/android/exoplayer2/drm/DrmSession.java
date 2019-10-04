package com.google.android.exoplayer2.drm;

import c.e.a.a.d.n;
import java.util.Map;

public interface DrmSession<T extends n> {

    public static class DrmSessionException extends Exception {
        public DrmSessionException(Throwable th) {
            super(th);
        }
    }

    Map<String, String> a();

    T b();

    DrmSessionException c();

    int getState();
}
