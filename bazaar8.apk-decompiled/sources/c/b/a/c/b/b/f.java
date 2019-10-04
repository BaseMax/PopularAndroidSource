package c.b.a.c.b.b;

import android.content.Context;
import c.b.a.c.b.b.d;
import java.io.File;

/* compiled from: InternalCacheDiskCacheFactory */
class f implements d.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f3903a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f3904b;

    public f(Context context, String str) {
        this.f3903a = context;
        this.f3904b = str;
    }

    public File a() {
        File cacheDir = this.f3903a.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = this.f3904b;
        return str != null ? new File(cacheDir, str) : cacheDir;
    }
}
