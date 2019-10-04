package com.farsitel.bazaar.data.network.interceptor;

import h.f.a.b;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ReferrerInterceptor.kt */
final class ReferrerInterceptorKt$iterator$2 extends Lambda implements b<Integer, JSONObject> {
    public final /* synthetic */ JSONArray $this_iterator;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ReferrerInterceptorKt$iterator$2(JSONArray jSONArray) {
        super(1);
        this.$this_iterator = jSONArray;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return a(((Number) obj).intValue());
    }

    public final JSONObject a(int i2) {
        Object obj = this.$this_iterator.get(i2);
        if (obj != null) {
            return (JSONObject) obj;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.json.JSONObject");
    }
}
