package ir.cafebazaar.inline.common.analytics;

import com.farsitel.bazaar.analytics.model.what.WhatType;
import f.a.a.a.a.a;
import h.f.b.j;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: Mapper.kt */
public final class MapperKt$toEvent$1 extends WhatType {
    public final /* synthetic */ a $this_toEvent;
    public final String name = this.$this_toEvent.g();

    public MapperKt$toEvent$1(a aVar) {
        this.$this_toEvent = aVar;
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        JSONObject h2 = this.$this_toEvent.h();
        j.a((Object) h2, "this@toEvent.whatDetails");
        return c.c.a.d.g.b.a.a(h2);
    }
}
