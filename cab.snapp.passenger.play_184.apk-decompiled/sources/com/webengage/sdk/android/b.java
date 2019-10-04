package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.ab;
import java.util.Map;

public class b implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5523a = new ab.a() {
        public final ab a(Context context) {
            if (b.f5524b == null) {
                b unused = b.f5524b = new b(context);
            }
            return b.f5524b;
        }
    };
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static b f5524b;
    private Context c;

    private b(Context context) {
        this.c = null;
        this.c = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        if (afVar.equals(af.AMPLIFY) && a(obj)) {
            new u(this.c).b(b(afVar, obj));
        }
    }

    public boolean a(Object obj) {
        return true;
    }

    public Map<String, Object> b(af afVar, Object obj) {
        return null;
    }
}
