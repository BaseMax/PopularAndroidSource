package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import com.webengage.sdk.android.utils.f;
import com.webengage.sdk.android.utils.k;
import java.util.HashMap;
import java.util.Map;
import org.a.a;
import org.a.c;

public class u extends a {

    /* renamed from: b  reason: collision with root package name */
    private Context f5562b = null;

    protected u(Context context) {
        super(context);
        this.f5562b = context;
    }

    /* access modifiers changed from: protected */
    public Object a(Object obj) {
        g gVar = (g) obj;
        if (gVar.i()) {
            try {
                if (gVar.d() == 200) {
                    c cVar = new c(f.a(gVar.e()));
                    if ("success".equals(cVar.optString("status", ""))) {
                        c optJSONObject = cVar.optJSONObject("data");
                        if (!(optJSONObject == null || optJSONObject == c.NULL)) {
                            a(optJSONObject.optLong("next", 180) * 60000);
                            a optJSONArray = optJSONObject.optJSONArray("pushPayloads");
                            if (optJSONArray != null && optJSONArray.length() > 0) {
                                for (int i = 0; i < optJSONArray.length(); i++) {
                                    c jSONObject = optJSONArray.getJSONObject(i);
                                    c jSONObject2 = jSONObject.getJSONObject("message_data");
                                    if (!jSONObject2.has("amplified")) {
                                        jSONObject2.put("amplified", true);
                                    }
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("source", jSONObject.getString("source"));
                                    hashMap.put("message_action", jSONObject.getString("message_action"));
                                    hashMap.put("message_data", String.valueOf(jSONObject2));
                                    ad.a(this.f5562b).a(af.GCM_MESSAGE, k.c((Map<String, Object>) hashMap));
                                }
                            }
                        }
                    }
                } else {
                    gVar.m();
                }
                gVar.m();
            } catch (Exception e) {
                try {
                    Logger.e("WebEngage", "Exception while parsing push amplification data", e);
                    d(e);
                    gVar.m();
                } catch (Throwable th) {
                    Logger.e("WebEngage", "Error while closing push-amp input stream", th);
                }
            } catch (Throwable th2) {
                Logger.e("WebEngage", "Error while closing push-amp input stream", th2);
            }
        } else {
            gVar.n();
        }
        return null;
        throw th;
    }

    /* access modifiers changed from: protected */
    public Object a(Map<String, Object> map) {
        return new f.a(WebEngageConstant.d.b(WebEngage.get().getWebEngageConfig().getWebEngageKey(), i(), h()), e.GET, this.f5562b).b(3).a().i();
    }

    /* access modifiers changed from: protected */
    public void b(Object obj) {
    }
}
