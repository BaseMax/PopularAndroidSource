package io.fabric.sdk.android.services.c;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.i;
import java.io.File;

public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6575a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6576b;
    private final String c;

    public b(i iVar) {
        if (iVar.getContext() != null) {
            this.f6575a = iVar.getContext();
            this.f6576b = iVar.getPath();
            this.c = "Android/" + this.f6575a.getPackageName();
            return;
        }
        throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }

    public final File getCacheDir() {
        return a(this.f6575a.getCacheDir());
    }

    public final File getExternalCacheDir() {
        File file;
        if (!a()) {
            file = null;
        } else if (Build.VERSION.SDK_INT >= 8) {
            file = this.f6575a.getExternalCacheDir();
        } else {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            file = new File(externalStorageDirectory, this.c + "/cache/" + this.f6576b);
        }
        return a(file);
    }

    public final File getFilesDir() {
        return a(this.f6575a.getFilesDir());
    }

    public final File getExternalFilesDir() {
        File file = null;
        if (a()) {
            if (Build.VERSION.SDK_INT >= 8) {
                file = this.f6575a.getExternalFilesDir(null);
            } else {
                File externalStorageDirectory = Environment.getExternalStorageDirectory();
                file = new File(externalStorageDirectory, this.c + "/files/" + this.f6576b);
            }
        }
        return a(file);
    }

    private static File a(File file) {
        if (file == null) {
            c.getLogger().d(c.TAG, "Null File");
        } else if (file.exists() || file.mkdirs()) {
            return file;
        } else {
            c.getLogger().w(c.TAG, "Couldn't create file");
        }
        return null;
    }

    private static boolean a() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            return true;
        }
        c.getLogger().w(c.TAG, "External Storage is not mounted and/or writable\nHave you declared android.permission.WRITE_EXTERNAL_STORAGE in the manifest?");
        return false;
    }
}
