package com.a.a.c;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.l;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class u implements af {

    /* renamed from: a  reason: collision with root package name */
    private final File[] f1821a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f1822b = new HashMap(ag.f1733a);
    private final String c;

    public u(String str, File[] fileArr) {
        this.f1821a = fileArr;
        this.c = str;
    }

    public final String getFileName() {
        return this.f1821a[0].getName();
    }

    public final String getIdentifier() {
        return this.c;
    }

    public final File getFile() {
        return this.f1821a[0];
    }

    public final File[] getFiles() {
        return this.f1821a;
    }

    public final Map<String, String> getCustomHeaders() {
        return Collections.unmodifiableMap(this.f1822b);
    }

    public final void remove() {
        for (File path : this.f1821a) {
            l logger = c.getLogger();
            logger.d(j.TAG, "Removing invalid report file at " + path.getPath());
            r0[r2].delete();
        }
    }
}
