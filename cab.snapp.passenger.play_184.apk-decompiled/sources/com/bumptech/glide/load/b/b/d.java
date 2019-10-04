package com.bumptech.glide.load.b.b;

import com.bumptech.glide.load.b.b.a;
import java.io.File;

public class d implements a.C0040a {

    /* renamed from: a  reason: collision with root package name */
    private final long f2150a;

    /* renamed from: b  reason: collision with root package name */
    private final a f2151b;

    public interface a {
        File getCacheDirectory();
    }

    public d(final String str, long j) {
        this((a) new a() {
            public final File getCacheDirectory() {
                return new File(str);
            }
        }, j);
    }

    public d(final String str, final String str2, long j) {
        this((a) new a() {
            public final File getCacheDirectory() {
                return new File(str, str2);
            }
        }, j);
    }

    public d(a aVar, long j) {
        this.f2150a = j;
        this.f2151b = aVar;
    }

    public a build() {
        File cacheDirectory = this.f2151b.getCacheDirectory();
        if (cacheDirectory == null) {
            return null;
        }
        if (cacheDirectory.mkdirs() || (cacheDirectory.exists() && cacheDirectory.isDirectory())) {
            return e.create(cacheDirectory, this.f2150a);
        }
        return null;
    }
}
