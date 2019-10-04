package com.a.a.c;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.l;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class ai implements af {

    /* renamed from: a  reason: collision with root package name */
    private final File f1739a;

    /* renamed from: b  reason: collision with root package name */
    private final File[] f1740b;
    private final Map<String, String> c;

    public ai(File file) {
        this(file, Collections.emptyMap());
    }

    public ai(File file, Map<String, String> map) {
        this.f1739a = file;
        this.f1740b = new File[]{file};
        this.c = new HashMap(map);
        if (this.f1739a.length() == 0) {
            this.c.putAll(ag.f1733a);
        }
    }

    public final File getFile() {
        return this.f1739a;
    }

    public final File[] getFiles() {
        return this.f1740b;
    }

    public final String getFileName() {
        return getFile().getName();
    }

    public final String getIdentifier() {
        String fileName = getFileName();
        return fileName.substring(0, fileName.lastIndexOf(46));
    }

    public final Map<String, String> getCustomHeaders() {
        return Collections.unmodifiableMap(this.c);
    }

    public final void remove() {
        l logger = c.getLogger();
        logger.d(j.TAG, "Removing report at " + this.f1739a.getPath());
        this.f1739a.delete();
    }
}
