package com.webengage.sdk.android.actions.database;

import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import java.util.HashMap;
import java.util.Map;

public class g implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5356a = new ab.a() {
        public final ab a(Context context) {
            if (g.f5357b == null) {
                g unused = g.f5357b = new g(context);
            }
            return g.f5357b;
        }
    };
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static volatile g f5357b;
    private Context c;

    /* renamed from: com.webengage.sdk.android.actions.database.g$2  reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5358a = new int[af.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                com.webengage.sdk.android.af[] r0 = com.webengage.sdk.android.af.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5358a = r0
                int[] r0 = f5358a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.GCM_MESSAGE     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5358a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.EVENT     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5358a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.INTERNAL_EVENT     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f5358a     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.DATA     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.g.AnonymousClass2.<clinit>():void");
        }
    }

    private g(Context context) {
        this.c = null;
        this.c = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        int i = AnonymousClass2.f5358a[afVar.ordinal()];
        if (i == 1) {
            Bundle bundle = (Bundle) obj;
            if (bundle != null && bundle.containsKey("source") && "webengage".equalsIgnoreCase(bundle.getString("source")) && bundle.containsKey("message_data") && bundle.containsKey("message_action")) {
                new h(this.c).b(b(afVar, bundle));
            }
        } else if (i == 2 || i == 3 || i == 4) {
            new h(this.c).b(b(afVar, obj));
        }
    }

    public Map<String, Object> b(af afVar, Object obj) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("action_data", obj);
        int i = AnonymousClass2.f5358a[afVar.ordinal()];
        if (i == 1) {
            str = "gcm";
        } else if (i == 2) {
            str = NotificationCompat.CATEGORY_EVENT;
        } else if (i != 3) {
            if (i == 4) {
                str = "change_data";
            }
            return hashMap;
        } else {
            str = "internal_event";
        }
        hashMap.put("action_type", str);
        return hashMap;
    }
}
