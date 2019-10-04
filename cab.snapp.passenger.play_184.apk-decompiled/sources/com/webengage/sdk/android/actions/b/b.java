package com.webengage.sdk.android.actions.b;

import android.content.Context;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.l;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class b implements ab {

    /* renamed from: a  reason: collision with root package name */
    static AtomicBoolean f5339a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    public static final ab.a f5340b = new ab.a() {
        public final ab a(Context context) {
            if (b.d == null) {
                b unused = b.d = new b(context);
            }
            return b.d;
        }
    };
    /* access modifiers changed from: private */
    public static b d = null;
    private Context c;

    private b(Context context) {
        this.c = null;
        this.c = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        if (WebEngage.get().getWebEngageConfig().getAutoGCMRegistrationFlag()) {
            l lVar = (l) obj;
            a aVar = new a(this.c);
            if (afVar != null && ((af.BOOT_UP.equals(afVar) || (af.EVENT.equals(afVar) && lVar != null && ("app_upgraded".equals(lVar.h()) || "visitor_new_session".equals(lVar.h())))) && f5339a.compareAndSet(false, true))) {
                aVar.c(b(afVar, obj));
            }
        }
    }

    public Map<String, Object> b(af afVar, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put("action_data", obj);
        return hashMap;
    }
}
