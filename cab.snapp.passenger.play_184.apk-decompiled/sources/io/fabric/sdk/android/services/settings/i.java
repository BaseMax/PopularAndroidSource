package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.services.c.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.a.c;

final class i implements g {

    /* renamed from: a  reason: collision with root package name */
    private final io.fabric.sdk.android.i f6683a;

    public i(io.fabric.sdk.android.i iVar) {
        this.f6683a = iVar;
    }

    public final c readCachedSettings() {
        Throwable th;
        FileInputStream fileInputStream;
        c cVar;
        io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Reading cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            File file = new File(new b(this.f6683a).getFilesDir(), q.SETTINGS_CACHE_FILENAME);
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    cVar = new c(io.fabric.sdk.android.services.common.i.streamToString(fileInputStream));
                    fileInputStream2 = fileInputStream;
                } catch (Exception e) {
                    e = e;
                    try {
                        io.fabric.sdk.android.c.getLogger().e(io.fabric.sdk.android.c.TAG, "Failed to fetch cached settings", e);
                        io.fabric.sdk.android.services.common.i.closeOrLog(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream2 = fileInputStream;
                        io.fabric.sdk.android.services.common.i.closeOrLog(fileInputStream2, "Error while closing settings cache file.");
                        throw th;
                    }
                }
            } else {
                io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "No cached settings found.");
                cVar = null;
            }
            io.fabric.sdk.android.services.common.i.closeOrLog(fileInputStream2, "Error while closing settings cache file.");
            return cVar;
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
            io.fabric.sdk.android.c.getLogger().e(io.fabric.sdk.android.c.TAG, "Failed to fetch cached settings", e);
            io.fabric.sdk.android.services.common.i.closeOrLog(fileInputStream, "Error while closing settings cache file.");
            return null;
        } catch (Throwable th3) {
            th = th3;
            io.fabric.sdk.android.services.common.i.closeOrLog(fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
    }

    public final void writeCachedSettings(long j, c cVar) {
        io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Writing settings to cache file...");
        if (cVar != null) {
            FileWriter fileWriter = null;
            try {
                cVar.put(t.EXPIRES_AT_KEY, j);
                FileWriter fileWriter2 = new FileWriter(new File(new b(this.f6683a).getFilesDir(), q.SETTINGS_CACHE_FILENAME));
                try {
                    fileWriter2.write(cVar.toString());
                    fileWriter2.flush();
                    io.fabric.sdk.android.services.common.i.closeOrLog(fileWriter2, "Failed to close settings writer.");
                } catch (Exception e) {
                    e = e;
                    fileWriter = fileWriter2;
                    try {
                        io.fabric.sdk.android.c.getLogger().e(io.fabric.sdk.android.c.TAG, "Failed to cache settings", e);
                        io.fabric.sdk.android.services.common.i.closeOrLog(fileWriter, "Failed to close settings writer.");
                    } catch (Throwable th) {
                        th = th;
                        io.fabric.sdk.android.services.common.i.closeOrLog(fileWriter, "Failed to close settings writer.");
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileWriter = fileWriter2;
                    io.fabric.sdk.android.services.common.i.closeOrLog(fileWriter, "Failed to close settings writer.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                io.fabric.sdk.android.c.getLogger().e(io.fabric.sdk.android.c.TAG, "Failed to cache settings", e);
                io.fabric.sdk.android.services.common.i.closeOrLog(fileWriter, "Failed to close settings writer.");
            }
        }
    }
}
