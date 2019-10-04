package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import java.util.HashMap;
import java.util.Map;

public class l implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5366a = new ab.a() {
        public final ab a(Context context) {
            if (l.c == null) {
                l unused = l.c = new l(context);
            }
            return l.c;
        }
    };
    /* access modifiers changed from: private */
    public static l c;

    /* renamed from: b  reason: collision with root package name */
    private Context f5367b;

    private l(Context context) {
        this.f5367b = null;
        this.f5367b = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        new k(this.f5367b).b(b(afVar, obj));
    }

    public Map<String, Object> b(af afVar, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put("topic", afVar);
        hashMap.put("data", obj);
        return hashMap;
    }
}
