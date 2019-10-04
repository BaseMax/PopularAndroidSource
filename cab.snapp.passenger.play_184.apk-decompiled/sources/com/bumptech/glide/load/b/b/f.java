package com.bumptech.glide.load.b.b;

import android.content.Context;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.b.b.d;
import java.io.File;

public final class f extends d {
    public f(Context context) {
        this(context, a.C0040a.DEFAULT_DISK_CACHE_DIR, 262144000);
    }

    public f(Context context, long j) {
        this(context, a.C0040a.DEFAULT_DISK_CACHE_DIR, j);
    }

    public f(final Context context, final String str, long j) {
        super((d.a) new d.a() {
            public final File getCacheDirectory() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    return null;
                }
                String str = str;
                return str != null ? new File(cacheDir, str) : cacheDir;
            }
        }, j);
    }
}
