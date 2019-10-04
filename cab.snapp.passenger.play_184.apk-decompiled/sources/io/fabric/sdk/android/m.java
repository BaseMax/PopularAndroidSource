package io.fabric.sdk.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.g;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.network.b;
import io.fabric.sdk.android.services.network.d;
import io.fabric.sdk.android.services.settings.e;
import io.fabric.sdk.android.services.settings.h;
import io.fabric.sdk.android.services.settings.n;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import io.fabric.sdk.android.services.settings.x;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;

final class m extends i<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private final d f6562a = new b();

    /* renamed from: b  reason: collision with root package name */
    private PackageManager f6563b;
    private String i;
    private PackageInfo j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private final Future<Map<String, k>> p;
    private final Collection<i> q;

    public final String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    public final String getVersion() {
        return "1.3.17.dev";
    }

    public m(Future<Map<String, k>> future, Collection<i> collection) {
        this.p = future;
        this.q = collection;
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public Boolean doInBackground() {
        Map map;
        boolean z;
        String appIconHashOrNull = i.getAppIconHashOrNull(getContext());
        s b2 = b();
        boolean z2 = false;
        if (b2 != null) {
            try {
                if (this.p != null) {
                    map = this.p.get();
                } else {
                    map = new HashMap();
                }
                Map<String, k> a2 = a((Map<String, k>) map, this.q);
                e eVar = b2.appData;
                Collection<k> values = a2.values();
                if (e.STATUS_NEW.equals(eVar.status)) {
                    if (new h(this, c(), eVar.url, this.f6562a).invoke(a(n.build(getContext(), appIconHashOrNull), values))) {
                        z = q.getInstance().loadSettingsSkippingCache();
                    } else {
                        c.getLogger().e(c.TAG, "Failed to create app with Crashlytics service.", null);
                    }
                } else if (e.STATUS_CONFIGURED.equals(eVar.status)) {
                    z = q.getInstance().loadSettingsSkippingCache();
                } else {
                    if (eVar.updateRequired) {
                        c.getLogger().d(c.TAG, "Server says an update is required - forcing a full App update.");
                        new x(this, c(), eVar.url, this.f6562a).invoke(a(n.build(getContext(), appIconHashOrNull), values));
                    }
                    z2 = true;
                }
                z2 = z;
            } catch (Exception e) {
                c.getLogger().e(c.TAG, "Error performing auto configuration.", e);
            }
        }
        return Boolean.valueOf(z2);
    }

    private s b() {
        try {
            q.getInstance().initialize(this, this.g, this.f6562a, this.k, this.l, c()).loadSettingsData();
            return q.getInstance().awaitSettingsData();
        } catch (Exception e) {
            c.getLogger().e(c.TAG, "Error dealing with settings", e);
            return null;
        }
    }

    private static Map<String, k> a(Map<String, k> map, Collection<i> collection) {
        for (i next : collection) {
            if (!map.containsKey(next.getIdentifier())) {
                map.put(next.getIdentifier(), new k(next.getIdentifier(), next.getVersion(), "binary"));
            }
        }
        return map;
    }

    private io.fabric.sdk.android.services.settings.d a(n nVar, Collection<k> collection) {
        Context context = getContext();
        io.fabric.sdk.android.services.settings.d dVar = new io.fabric.sdk.android.services.settings.d(new g().getValue(context), this.g.getAppIdentifier(), this.l, this.k, i.createInstanceIdFrom(i.resolveBuildId(context)), this.n, DeliveryMechanism.determineFrom(this.m).getId(), this.o, "0", nVar, collection);
        return dVar;
    }

    private String c() {
        return i.getStringsFileValue(getContext(), "com.crashlytics.ApiEndpoint");
    }

    /* access modifiers changed from: protected */
    public final boolean onPreExecute() {
        try {
            this.m = this.g.getInstallerPackageName();
            this.f6563b = getContext().getPackageManager();
            this.i = getContext().getPackageName();
            this.j = this.f6563b.getPackageInfo(this.i, 0);
            this.k = Integer.toString(this.j.versionCode);
            this.l = this.j.versionName == null ? IdManager.DEFAULT_VERSION_NAME : this.j.versionName;
            this.n = this.f6563b.getApplicationLabel(getContext().getApplicationInfo()).toString();
            this.o = Integer.toString(getContext().getApplicationInfo().targetSdkVersion);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            c.getLogger().e(c.TAG, "Failed init", e);
            return false;
        }
    }
}
