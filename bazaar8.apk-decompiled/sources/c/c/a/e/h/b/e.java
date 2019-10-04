package c.c.a.e.h.b;

import h.a.u;
import h.f.b.j;
import h.h.g;
import h.j.o;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ReferrerInterceptor.kt */
public final class e {
    public static final Iterator<JSONObject> a(JSONArray jSONArray) {
        j.b(jSONArray, "$this$iterator");
        return o.b(o.a(u.a(g.d(0, jSONArray.length())), new ReferrerInterceptorKt$iterator$1(jSONArray)), new ReferrerInterceptorKt$iterator$2(jSONArray)).iterator();
    }
}
