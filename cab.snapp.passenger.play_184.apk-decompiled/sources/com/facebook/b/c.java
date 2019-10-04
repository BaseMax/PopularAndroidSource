package com.facebook.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;

public final class c extends l {

    /* renamed from: a  reason: collision with root package name */
    private Context f2426a;

    /* renamed from: b  reason: collision with root package name */
    private int f2427b;
    private d c;

    public c(Context context, int i) {
        this.f2426a = context.getApplicationContext();
        if (this.f2426a == null) {
            this.f2426a = context;
        }
        this.f2427b = i;
        this.c = new d(new File(this.f2426a.getApplicationInfo().nativeLibraryDir), i);
    }

    public final boolean checkAndMaybeUpdate() throws IOException {
        try {
            File file = this.c.f2428b;
            Context createPackageContext = this.f2426a.createPackageContext(this.f2426a.getPackageName(), 0);
            File file2 = new File(createPackageContext.getApplicationInfo().nativeLibraryDir);
            if (file.equals(file2)) {
                return false;
            }
            StringBuilder sb = new StringBuilder("Native library directory updated from ");
            sb.append(file);
            sb.append(" to ");
            sb.append(file2);
            this.f2427b |= 1;
            this.c = new d(file2, this.f2427b);
            this.c.a(this.f2427b);
            this.f2426a = createPackageContext;
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public final int loadLibrary(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return this.c.loadLibrary(str, i, threadPolicy);
    }

    @Nullable
    public final String getLibraryPath(String str) throws IOException {
        return this.c.getLibraryPath(str);
    }

    @Nullable
    public final File unpackLibrary(String str) throws IOException {
        return this.c.unpackLibrary(str);
    }

    /* access modifiers changed from: protected */
    public final void a(int i) throws IOException {
        this.c.a(i);
    }

    public final void addToLdLibraryPath(Collection<String> collection) {
        this.c.addToLdLibraryPath(collection);
    }

    public final String toString() {
        return this.c.toString();
    }
}
