package com.farsitel.bazaar.data.network.interceptor;

import h.f.a.b;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ReferrerInterceptor.kt */
final class ReferrerInterceptorKt$iterator$1 extends Lambda implements b<Integer, Boolean> {
    public final /* synthetic */ JSONArray $this_iterator;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ReferrerInterceptorKt$iterator$1(JSONArray jSONArray) {
        super(1);
        this.$this_iterator = jSONArray;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Boolean.valueOf(a(((Number) obj).intValue()));
    }

    public final boolean a(int i2) {
        return this.$this_iterator.get(i2) instanceof JSONObject;
    }
}
