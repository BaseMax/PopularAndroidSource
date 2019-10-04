package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.a;
import com.webengage.sdk.android.l;
import java.util.Map;

class p extends a {

    /* renamed from: b  reason: collision with root package name */
    Context f5371b = null;

    p(Context context) {
        super(context);
        this.f5371b = context.getApplicationContext();
    }

    public Object a(Object obj) {
        l lVar;
        Map map = (Map) obj;
        if (map == null) {
            return null;
        }
        Object obj2 = map.get("action_data");
        if (obj2 instanceof l) {
            lVar = (l) obj2;
            lVar.b(WebEngage.get().getWebEngageConfig().getWebEngageKey());
            lVar.a(e());
        } else {
            lVar = null;
        }
        ((s) map.get("strategy")).a(lVar);
        return null;
    }

    public Object a(Map<String, Object> map) {
        return map;
    }

    public void b(Object obj) {
    }
}
