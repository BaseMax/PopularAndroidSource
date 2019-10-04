package e.a.a.a.a.g;

import e.a.a.a.a.f.b;
import e.a.a.a.f;
import e.a.a.a.l;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import org.json.JSONObject;

/* compiled from: DefaultCachedSettingsIo */
public class j implements h {

    /* renamed from: a  reason: collision with root package name */
    public final l f13808a;

    public j(l lVar) {
        this.f13808a = lVar;
    }

    public JSONObject a() {
        Throwable th;
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        f.e().d("Fabric", "Reading cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            File file = new File(new b(this.f13808a).a(), "com.crashlytics.settings.json");
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    jSONObject = new JSONObject(CommonUtils.b((InputStream) fileInputStream));
                    fileInputStream2 = fileInputStream;
                } catch (Exception e2) {
                    e = e2;
                    try {
                        f.e().b("Fabric", "Failed to fetch cached settings", e);
                        CommonUtils.a((Closeable) fileInputStream, "Error while closing settings cache file.");
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream2 = fileInputStream;
                        CommonUtils.a((Closeable) fileInputStream2, "Error while closing settings cache file.");
                        throw th;
                    }
                }
            } else {
                f.e().d("Fabric", "No cached settings found.");
                jSONObject = null;
            }
            CommonUtils.a((Closeable) fileInputStream2, "Error while closing settings cache file.");
            return jSONObject;
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            f.e().b("Fabric", "Failed to fetch cached settings", e);
            CommonUtils.a((Closeable) fileInputStream, "Error while closing settings cache file.");
            return null;
        } catch (Throwable th3) {
            th = th3;
            CommonUtils.a((Closeable) fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
    }

    public void a(long j2, JSONObject jSONObject) {
        f.e().d("Fabric", "Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter = null;
            try {
                jSONObject.put("expires_at", j2);
                FileWriter fileWriter2 = new FileWriter(new File(new b(this.f13808a).a(), "com.crashlytics.settings.json"));
                try {
                    fileWriter2.write(jSONObject.toString());
                    fileWriter2.flush();
                    CommonUtils.a((Closeable) fileWriter2, "Failed to close settings writer.");
                } catch (Exception e2) {
                    e = e2;
                    fileWriter = fileWriter2;
                    try {
                        f.e().b("Fabric", "Failed to cache settings", e);
                        CommonUtils.a((Closeable) fileWriter, "Failed to close settings writer.");
                    } catch (Throwable th) {
                        th = th;
                        CommonUtils.a((Closeable) fileWriter, "Failed to close settings writer.");
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileWriter = fileWriter2;
                    CommonUtils.a((Closeable) fileWriter, "Failed to close settings writer.");
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                f.e().b("Fabric", "Failed to cache settings", e);
                CommonUtils.a((Closeable) fileWriter, "Failed to close settings writer.");
            }
        }
    }
}
