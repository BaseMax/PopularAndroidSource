package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ItemClick.kt */
public final class ScheduleUpdateItemClick extends ItemClick {
    public final boolean checked;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ScheduleUpdateItemClick(boolean z, String str) {
        super("schedule_update", str, null);
        j.b(str, "referrer");
        this.checked = z;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("checked", Boolean.valueOf(this.checked))));
        return b2;
    }
}
