package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import java.util.HashMap;
import java.util.Map;

public class aa implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5345a = new ab.a() {
        public final ab a(Context context) {
            if (aa.c == null) {
                aa unused = aa.c = new aa(context);
            }
            return aa.c;
        }
    };
    /* access modifiers changed from: private */
    public static aa c;

    /* renamed from: b  reason: collision with root package name */
    private Context f5346b;

    private aa(Context context) {
        this.f5346b = null;
        this.f5346b = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        new z(this.f5346b).b(b(afVar, obj));
    }

    public Map<String, Object> b(af afVar, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put("topic", afVar);
        hashMap.put("data", obj);
        return hashMap;
    }
}
