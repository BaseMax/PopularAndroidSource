package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.utils.WebEngageConstant;
import java.util.HashMap;
import java.util.Map;

public class v implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5379a = new ab.a() {
        public final ab a(Context context) {
            if (v.c == null) {
                v unused = v.c = new v(context);
            }
            return v.c;
        }
    };
    /* access modifiers changed from: private */
    public static v c;

    /* renamed from: b  reason: collision with root package name */
    private Context f5380b;

    private v(Context context) {
        this.f5380b = null;
        this.f5380b = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        new u(this.f5380b).b(b(afVar, obj));
    }

    public Map<String, Object> b(af afVar, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put("server_url", WebEngageConstant.d.UPLOAD_EVENTS_URL.toString());
        hashMap.put("action_data", obj);
        return hashMap;
    }
}
