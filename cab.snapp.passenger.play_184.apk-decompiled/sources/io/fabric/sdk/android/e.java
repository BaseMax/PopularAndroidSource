package io.fabric.sdk.android;

import android.os.SystemClock;
import android.text.TextUtils;
import io.fabric.sdk.android.services.common.i;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

final class e implements Callable<Map<String, k>> {

    /* renamed from: a  reason: collision with root package name */
    final String f6558a;

    e(String str) {
        this.f6558a = str;
    }

    public final Map<String, k> call() throws Exception {
        HashMap hashMap = new HashMap();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        hashMap.putAll(a());
        hashMap.putAll(b());
        l logger = c.getLogger();
        logger.v(c.TAG, "finish scanning in " + (SystemClock.elapsedRealtime() - elapsedRealtime));
        return hashMap;
    }

    private static Map<String, k> a() {
        HashMap hashMap = new HashMap();
        try {
            Class.forName("com.google.android.gms.ads.AdView");
            k kVar = new k("com.google.firebase.firebase-ads", "0.0.0", "binary");
            hashMap.put(kVar.getIdentifier(), kVar);
            c.getLogger().v(c.TAG, "Found kit: com.google.firebase.firebase-ads");
        } catch (Exception unused) {
        }
        return hashMap;
    }

    private Map<String, k> b() throws Exception {
        HashMap hashMap = new HashMap();
        ZipFile zipFile = new ZipFile(this.f6558a);
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
            if (zipEntry.getName().startsWith("fabric/") && zipEntry.getName().length() > 7) {
                k a2 = a(zipEntry, zipFile);
                if (a2 != null) {
                    hashMap.put(a2.getIdentifier(), a2);
                    c.getLogger().v(c.TAG, String.format("Found kit:[%s] version:[%s]", new Object[]{a2.getIdentifier(), a2.getVersion()}));
                }
            }
        }
        try {
            zipFile.close();
        } catch (IOException unused) {
        }
        return hashMap;
    }

    private static k a(ZipEntry zipEntry, ZipFile zipFile) {
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
                k kVar = new k(property, property2, property3);
                i.closeQuietly(inputStream);
                return kVar;
            } catch (IOException e) {
                e = e;
                try {
                    c.getLogger().e(c.TAG, "Error when parsing fabric properties " + zipEntry.getName(), e);
                    i.closeQuietly(inputStream);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    i.closeQuietly(inputStream);
                    throw th;
                }
            }
        } catch (IOException e2) {
            e = e2;
            inputStream = null;
            c.getLogger().e(c.TAG, "Error when parsing fabric properties " + zipEntry.getName(), e);
            i.closeQuietly(inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            i.closeQuietly(inputStream);
            throw th;
        }
    }
}
