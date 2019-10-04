package io.fabric.sdk.android.services.settings;

import android.content.Context;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.g;
import io.fabric.sdk.android.services.network.d;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public final class q {
    public static final String SETTINGS_CACHE_FILENAME = "com.crashlytics.settings.json";

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<s> f6686a;

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f6687b;
    private r c;
    private boolean d;

    static class a {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public static final q f6688a = new q((byte) 0);

        a() {
        }
    }

    public interface b<T> {
        T usingSettings(s sVar);
    }

    /* synthetic */ q(byte b2) {
        this();
    }

    public static q getInstance() {
        return a.f6688a;
    }

    private q() {
        this.f6686a = new AtomicReference<>();
        this.f6687b = new CountDownLatch(1);
        this.d = false;
    }

    public final synchronized q initialize(i iVar, IdManager idManager, d dVar, String str, String str2, String str3) {
        i iVar2 = iVar;
        synchronized (this) {
            if (this.d) {
                return this;
            }
            if (this.c == null) {
                Context context = iVar.getContext();
                String appIdentifier = idManager.getAppIdentifier();
                String value = new g().getValue(context);
                String installerPackageName = idManager.getInstallerPackageName();
                io.fabric.sdk.android.services.common.q qVar = new io.fabric.sdk.android.services.common.q();
                k kVar = new k();
                i iVar3 = new i(iVar2);
                String appIconHashOrNull = io.fabric.sdk.android.services.common.i.getAppIconHashOrNull(context);
                String str4 = str3;
                l lVar = new l(iVar2, str4, String.format(Locale.US, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings", new Object[]{appIdentifier}), dVar);
                String modelName = idManager.getModelName();
                String osBuildVersionString = idManager.getOsBuildVersionString();
                String str5 = osBuildVersionString;
                String str6 = str2;
                String str7 = str;
                v vVar = new v(value, modelName, str5, idManager.getOsDisplayVersionString(), idManager.getAdvertisingId(), idManager.getAppInstallIdentifier(), idManager.getAndroidId(), io.fabric.sdk.android.services.common.i.createInstanceIdFrom(io.fabric.sdk.android.services.common.i.resolveBuildId(context)), str6, str7, DeliveryMechanism.determineFrom(installerPackageName).getId(), appIconHashOrNull);
                j jVar = new j(iVar, vVar, qVar, kVar, iVar3, lVar);
                this.c = jVar;
            }
            this.d = true;
            return this;
        }
    }

    public final void clearSettings() {
        this.f6686a.set(null);
    }

    public final void setSettingsController(r rVar) {
        this.c = rVar;
    }

    public final <T> T withSettings(b<T> bVar, T t) {
        s sVar = this.f6686a.get();
        if (sVar == null) {
            return t;
        }
        return bVar.usingSettings(sVar);
    }

    public final s awaitSettingsData() {
        try {
            this.f6687b.await();
            return this.f6686a.get();
        } catch (InterruptedException unused) {
            c.getLogger().e(c.TAG, "Interrupted while waiting for settings data.");
            return null;
        }
    }

    public final synchronized boolean loadSettingsData() {
        boolean z;
        s loadSettingsData = this.c.loadSettingsData();
        a(loadSettingsData);
        if (loadSettingsData != null) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public final synchronized boolean loadSettingsSkippingCache() {
        boolean z;
        s loadSettingsData = this.c.loadSettingsData(SettingsCacheBehavior.SKIP_CACHE_LOOKUP);
        a(loadSettingsData);
        if (loadSettingsData == null) {
            c.getLogger().e(c.TAG, "Failed to force reload of settings from Crashlytics.", null);
        }
        if (loadSettingsData != null) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    private void a(s sVar) {
        this.f6686a.set(sVar);
        this.f6687b.countDown();
    }
}
