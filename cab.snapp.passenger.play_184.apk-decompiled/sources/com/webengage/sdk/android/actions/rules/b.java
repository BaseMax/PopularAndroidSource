package com.webengage.sdk.android.actions.rules;

import android.content.Context;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.utils.WebEngageConstant;
import java.util.HashMap;
import java.util.Map;

public class b implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5447a = new ab.a() {
        public final ab a(Context context) {
            if (b.c == null) {
                b unused = b.c = new b(context);
            }
            return b.c;
        }
    };
    /* access modifiers changed from: private */
    public static b c;

    /* renamed from: b  reason: collision with root package name */
    private Context f5448b;

    private b(Context context) {
        this.f5448b = null;
        this.f5448b = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        new a(this.f5448b).b(b(afVar, obj));
    }

    public Map<String, Object> b(af afVar, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put("config_url", WebEngageConstant.d.a(WebEngage.get().getWebEngageConfig().getWebEngageKey()));
        hashMap.put("topic", afVar);
        return hashMap;
    }
}
