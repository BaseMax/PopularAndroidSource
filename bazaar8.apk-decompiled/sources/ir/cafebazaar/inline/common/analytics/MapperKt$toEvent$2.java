package ir.cafebazaar.inline.common.analytics;

import com.farsitel.bazaar.analytics.model.where.WhereType;
import f.a.a.a.a.a;
import h.f.b.j;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: Mapper.kt */
public final class MapperKt$toEvent$2 extends WhereType {
    public final /* synthetic */ a $this_toEvent;
    public final String name = this.$this_toEvent.i();

    public MapperKt$toEvent$2(a aVar) {
        this.$this_toEvent = aVar;
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        JSONObject j2 = this.$this_toEvent.j();
        j.a((Object) j2, "this@toEvent.whereDetails");
        return c.c.a.d.g.b.a.a(j2);
    }
}
