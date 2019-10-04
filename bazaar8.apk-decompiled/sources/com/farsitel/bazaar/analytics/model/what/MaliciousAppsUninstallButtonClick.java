package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class MaliciousAppsUninstallButtonClick extends ButtonClick {
    public final String entityId;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public MaliciousAppsUninstallButtonClick(String str, String str2) {
        super("malicious_app_uninstall", str2, null);
        j.b(str, "entityId");
        j.b(str2, "referrer");
        this.entityId = str;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("entity_id", this.entityId)));
        return b2;
    }
}
