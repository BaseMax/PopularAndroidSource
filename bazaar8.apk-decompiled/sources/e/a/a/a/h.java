package e.a.a.a;

import android.os.SystemClock;
import android.text.TextUtils;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: FabricKitsFinder */
public class h implements Callable<Map<String, n>> {

    /* renamed from: a  reason: collision with root package name */
    public final String f13897a;

    public h(String str) {
        this.f13897a = str;
    }

    public final Map<String, n> a() {
        HashMap hashMap = new HashMap();
        try {
            Class.forName("com.google.android.gms.ads.AdView");
            n nVar = new n("com.google.firebase.firebase-ads", "0.0.0", "binary");
            hashMap.put(nVar.b(), nVar);
            f.e().c("Fabric", "Found kit: com.google.firebase.firebase-ads");
        } catch (Exception unused) {
        }
        return hashMap;
    }

    public final Map<String, n> b() {
        HashMap hashMap = new HashMap();
        ZipFile c2 = c();
        Enumeration<? extends ZipEntry> entries = c2.entries();
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
            if (zipEntry.getName().startsWith("fabric/") && zipEntry.getName().length() > 7) {
                n a2 = a(zipEntry, c2);
                if (a2 != null) {
                    hashMap.put(a2.b(), a2);
                    f.e().c("Fabric", String.format("Found kit:[%s] version:[%s]", new Object[]{a2.b(), a2.c()}));
                }
            }
        }
        if (c2 != null) {
            try {
                c2.close();
            } catch (IOException unused) {
            }
        }
        return hashMap;
    }

    public ZipFile c() {
        return new ZipFile(this.f13897a);
    }

    public Map<String, n> call() {
        HashMap hashMap = new HashMap();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        hashMap.putAll(a());
        hashMap.putAll(b());
        o e2 = f.e();
        e2.c("Fabric", "finish scanning in " + (SystemClock.elapsedRealtime() - elapsedRealtime));
        return hashMap;
    }

    public final n a(ZipEntry zipEntry, ZipFile zipFile) {
        InputStream inputStream;
        try {
            inputStream = zipFile.getInputStream(zipEntry);
            try {
                Properties properties = new Properties();
                properties.load(inputStream);
                String property = properties.getProperty("fabric-identifier");
                String property2 = properties.getProperty("fabric-version");
                String property3 = properties.getProperty("fabric-build-type");
                if (TextUtils.isEmpty(property) || TextUtils.isEmpty(property2)) {
                    throw new IllegalStateException("Invalid format of fabric file," + zipEntry.getName());
                }
                n nVar = new n(property, property2, property3);
                CommonUtils.a((Closeable) inputStream);
                return nVar;
            } catch (IOException e2) {
                e = e2;
                try {
                    f.e().b("Fabric", "Error when parsing fabric properties " + zipEntry.getName(), e);
                    CommonUtils.a((Closeable) inputStream);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    CommonUtils.a((Closeable) inputStream);
                    throw th;
                }
            }
        } catch (IOException e3) {
            e = e3;
            inputStream = null;
            f.e().b("Fabric", "Error when parsing fabric properties " + zipEntry.getName(), e);
            CommonUtils.a((Closeable) inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            CommonUtils.a((Closeable) inputStream);
            throw th;
        }
    }
}
