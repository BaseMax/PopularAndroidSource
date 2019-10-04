package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import java.util.Map;

public class b implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5347a = new ab.a() {
        public final ab a(Context context) {
            if (b.f5348b == null) {
                b unused = b.f5348b = new b(context);
            }
            return b.f5348b;
        }
    };
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static volatile b f5348b;
    private Context c;

    private b(Context context) {
        this.c = null;
        this.c = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        new a(this.c).b((Map<String, Object>) null);
    }
}
