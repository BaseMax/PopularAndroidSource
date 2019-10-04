package io.fabric.sdk.android.services.settings;

import android.content.SharedPreferences;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.c.c;
import io.fabric.sdk.android.services.c.d;
import io.fabric.sdk.android.services.common.k;
import org.a.b;

final class j implements r {

    /* renamed from: a  reason: collision with root package name */
    private final v f6684a;

    /* renamed from: b  reason: collision with root package name */
    private final u f6685b;
    private final k c;
    private final g d;
    private final w e;
    private final i f;
    private final c g = new d(this.f);

    public j(i iVar, v vVar, k kVar, u uVar, g gVar, w wVar) {
        this.f = iVar;
        this.f6684a = vVar;
        this.c = kVar;
        this.f6685b = uVar;
        this.d = gVar;
        this.e = wVar;
    }

    public final s loadSettingsData() {
        return loadSettingsData(SettingsCacheBehavior.USE_CACHE);
    }

    public final s loadSettingsData(SettingsCacheBehavior settingsCacheBehavior) {
        s sVar = null;
        try {
            if (!io.fabric.sdk.android.c.isDebuggable()) {
                if (!(!this.g.get().getString("existing_instance_identifier", "").equals(a()))) {
                    sVar = a(settingsCacheBehavior);
                }
            }
            if (sVar == null) {
                org.a.c invoke = this.e.invoke(this.f6684a);
                if (invoke != null) {
                    sVar = this.f6685b.buildFromJson(this.c, invoke);
                    this.d.writeCachedSettings(sVar.expiresAtMillis, invoke);
                    a(invoke, "Loaded settings: ");
                    String a2 = a();
                    SharedPreferences.Editor edit = this.g.edit();
                    edit.putString("existing_instance_identifier", a2);
                    this.g.save(edit);
                }
            }
            if (sVar == null) {
                return a(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
            }
            return sVar;
        } catch (Exception e2) {
            io.fabric.sdk.android.c.getLogger().e(io.fabric.sdk.android.c.TAG, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", e2);
            return null;
        }
    }

    private s a(SettingsCacheBehavior settingsCacheBehavior) {
        s sVar = null;
        try {
            if (SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                return null;
            }
            org.a.c readCachedSettings = this.d.readCachedSettings();
            if (readCachedSettings != null) {
                s buildFromJson = this.f6685b.buildFromJson(this.c, readCachedSettings);
                if (buildFromJson != null) {
                    a(readCachedSettings, "Loaded cached settings: ");
                    long currentTimeMillis = this.c.getCurrentTimeMillis();
                    if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior)) {
                        if (buildFromJson.isExpired(currentTimeMillis)) {
                            io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Cached settings have expired.");
                            return null;
                        }
                    }
                    try {
                        io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Returning cached settings.");
                        return buildFromJson;
                    } catch (Exception e2) {
                        e = e2;
                        sVar = buildFromJson;
                        io.fabric.sdk.android.c.getLogger().e(io.fabric.sdk.android.c.TAG, "Failed to get cached settings", e);
                        return sVar;
                    }
                } else {
                    io.fabric.sdk.android.c.getLogger().e(io.fabric.sdk.android.c.TAG, "Failed to transform cached settings data.", null);
                    return null;
                }
            } else {
                io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "No cached settings data found.");
                return null;
            }
        } catch (Exception e3) {
            e = e3;
            io.fabric.sdk.android.c.getLogger().e(io.fabric.sdk.android.c.TAG, "Failed to get cached settings", e);
            return sVar;
        }
    }

    private static void a(org.a.c cVar, String str) throws b {
        l logger = io.fabric.sdk.android.c.getLogger();
        logger.d(io.fabric.sdk.android.c.TAG, str + cVar.toString());
    }

    private String a() {
        return io.fabric.sdk.android.services.common.i.createInstanceIdFrom(io.fabric.sdk.android.services.common.i.resolveBuildId(this.f.getContext()));
    }
}
