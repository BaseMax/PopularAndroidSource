package com.ihsanbal.logging;

import okhttp3.internal.platform.Platform;

public interface c {
    public static final c DEFAULT = new c() {
        public final void log(int i, String str, String str2) {
            Platform.get().log(i, str2, null);
        }
    };

    void log(int i, String str, String str2);
}
