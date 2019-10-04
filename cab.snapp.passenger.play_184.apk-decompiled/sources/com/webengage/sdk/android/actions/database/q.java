package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.l;
import java.util.HashMap;
import java.util.Map;

public class q implements ab {

    /* renamed from: a  reason: collision with root package name */
    protected static t f5372a;

    /* renamed from: b  reason: collision with root package name */
    public static final ab.a f5373b = new ab.a() {
        public final ab a(Context context) {
            if (q.d == null) {
                q unused = q.d = new q(context);
            }
            return q.d;
        }
    };
    /* access modifiers changed from: private */
    public static q d;
    private Context c;

    private q(Context context) {
        this.c = null;
        this.c = context.getApplicationContext();
        if (f5372a == null) {
            f5372a = new t(new r(), this.c);
        }
    }

    public void a(af afVar, Object obj) {
        if (obj == null || a(obj)) {
            new p(this.c).b(b(afVar, obj));
        }
    }

    public boolean a(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        return !WebEngage.get().getWebEngageConfig().getFilterCustomEvents() || !"application".equals(((l) obj).f());
    }

    public Map<String, Object> b(af afVar, Object obj) {
        Object obj2;
        HashMap hashMap = new HashMap();
        if (obj != null) {
            hashMap.put("action_data", obj);
            obj2 = f5372a.a((l) obj);
        } else {
            hashMap.put("action_data", null);
            obj2 = f5372a.a();
        }
        hashMap.put("strategy", obj2);
        return hashMap;
    }
}
