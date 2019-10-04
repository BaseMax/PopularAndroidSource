package com.webengage.sdk.android.actions.a;

import android.content.Context;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import java.util.HashMap;
import java.util.Map;

public class b implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5336a = new ab.a() {
        public final ab a(Context context) {
            if (b.f5337b == null) {
                b unused = b.f5337b = new b(context);
            }
            return b.f5337b;
        }
    };
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static volatile b f5337b;
    private Context c;

    private b(Context context) {
        this.c = null;
        this.c = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        if (obj != null) {
            new a(this.c).b(b(afVar, obj));
        }
    }

    public Map<String, Object> b(af afVar, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put("action_data", obj);
        return hashMap;
    }
}
