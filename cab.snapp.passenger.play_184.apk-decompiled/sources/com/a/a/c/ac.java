package com.a.a.c;

import io.fabric.sdk.android.services.c.c;
import io.fabric.sdk.android.services.c.d;

final class ac {

    /* renamed from: a  reason: collision with root package name */
    final c f1727a;

    public static ac create(c cVar, j jVar) {
        if (!cVar.get().getBoolean("preferences_migration_complete", false)) {
            d dVar = new d(jVar);
            if (!cVar.get().contains("always_send_reports_opt_in") && dVar.get().contains("always_send_reports_opt_in")) {
                cVar.save(cVar.edit().putBoolean("always_send_reports_opt_in", dVar.get().getBoolean("always_send_reports_opt_in", false)));
            }
            cVar.save(cVar.edit().putBoolean("preferences_migration_complete", true));
        }
        return new ac(cVar);
    }

    public ac(c cVar) {
        this.f1727a = cVar;
    }
}
