package com.webengage.sdk.android.actions.exception;

import android.content.Context;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import com.webengage.sdk.android.utils.k;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.a.c;

public class a extends com.webengage.sdk.android.a {

    /* renamed from: b  reason: collision with root package name */
    private Context f5386b = null;

    a(Context context) {
        super(context);
        this.f5386b = context.getApplicationContext();
    }

    public Object a(Object obj) {
        try {
            Exception exc = (Exception) ((Map) obj).get("action_data");
            HashMap hashMap = new HashMap();
            hashMap.put("sdk_id", Integer.toString(2));
            hashMap.put("luid", i());
            if (!h().isEmpty()) {
                hashMap.put("cuid", h());
            }
            hashMap.put("source", "webengage");
            hashMap.put(NotificationCompat.CATEGORY_EVENT, URLEncoder.encode(exc.getClass().getSimpleName(), "UTF-8"));
            hashMap.put("type", "exception");
            hashMap.put("category", WebEngage.get().getWebEngageConfig().getWebEngageKey());
            c cVar = new c();
            cVar.put("version", (Object) WebEngage.get().getWebEngageConfig().getWebEngageVersion());
            cVar.put("text", (Object) Log.getStackTraceString(exc));
            hashMap.put("data", URLEncoder.encode(cVar.toString(), "UTF-8"));
            HashMap hashMap2 = new HashMap();
            g i = new f.a(WebEngageConstant.d.EXCEPTION_END_POINT.toString() + "/?" + k.a((Map<String, String>) hashMap), e.GET, this.f5386b).a((Map<String, String>) hashMap2).a().i();
            StringBuilder sb = new StringBuilder("Exception Logged: ");
            sb.append(Log.getStackTraceString(exc));
            Logger.e("WebEngage", sb.toString());
            if (i != null) {
                if (i.i()) {
                    i.m();
                } else {
                    i.n();
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public Object a(Map<String, Object> map) {
        return map;
    }

    public void b(Object obj) {
    }
}
