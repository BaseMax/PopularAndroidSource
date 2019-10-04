package com.mapbox.android.telemetry;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.mapbox.android.telemetry.ai;
import java.util.HashMap;
import java.util.Map;

final class ah {

    /* renamed from: a  reason: collision with root package name */
    final String f4952a;

    /* renamed from: b  reason: collision with root package name */
    final w f4953b;
    final e c;
    private final String d;
    private final Map<o, ag> e = new HashMap<o, ag>() {
        {
            put(o.CHINA, new ag() {
                public final af build(ab abVar) {
                    return ah.this.a(o.CHINA, ah.this.c);
                }
            });
            put(o.STAGING, new ag() {
                public final af build(ab abVar) {
                    ah ahVar = ah.this;
                    e eVar = ah.this.c;
                    o oVar = abVar.f4942a;
                    String str = abVar.f4943b;
                    String str2 = abVar.c;
                    ai.a aVar = new ai.a();
                    aVar.f4960a = oVar;
                    af afVar = new af(str2, ahVar.f4952a, aVar.a(ai.a(str)).a(), ahVar.f4953b, eVar);
                    return afVar;
                }
            });
            put(o.COM, new ag() {
                public final af build(ab abVar) {
                    return ah.this.a(o.COM, ah.this.c);
                }
            });
        }
    };

    ah(String str, String str2, w wVar, e eVar) {
        this.d = str;
        this.f4952a = str2;
        this.f4953b = wVar;
        this.c = eVar;
    }

    /* access modifiers changed from: package-private */
    public final af a(Context context) {
        new p();
        q a2 = p.a();
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                ab obtainServerInformation = a2.obtainServerInformation(applicationInfo.metaData);
                return this.e.get(obtainServerInformation.f4942a).build(obtainServerInformation);
            }
        } catch (Exception e2) {
            String.format("Failed when retrieving app meta-data: %s", new Object[]{e2.getMessage()});
        }
        return a(o.COM, this.c);
    }

    /* access modifiers changed from: package-private */
    public final af a(o oVar, e eVar) {
        ai.a aVar = new ai.a();
        aVar.f4960a = oVar;
        af afVar = new af(this.d, this.f4952a, aVar.a(), this.f4953b, eVar);
        return afVar;
    }
}
