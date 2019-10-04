package com.a.a.c;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.c.a;
import java.io.File;
import java.io.IOException;

final class k {

    /* renamed from: a  reason: collision with root package name */
    private final String f1810a;

    /* renamed from: b  reason: collision with root package name */
    private final a f1811b;

    public k(String str, a aVar) {
        this.f1810a = str;
        this.f1811b = aVar;
    }

    public final boolean create() {
        try {
            return a().createNewFile();
        } catch (IOException e) {
            l logger = c.getLogger();
            logger.e(j.TAG, "Error creating marker: " + this.f1810a, e);
            return false;
        }
    }

    public final boolean isPresent() {
        return a().exists();
    }

    public final boolean remove() {
        return a().delete();
    }

    private File a() {
        return new File(this.f1811b.getFilesDir(), this.f1810a);
    }
}
