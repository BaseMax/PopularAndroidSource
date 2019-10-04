package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.actions.database.n;
import com.webengage.sdk.android.actions.database.o;
import java.util.List;

class f extends h implements n {
    public f(Context context) {
        super(context);
    }

    public void a(int i) {
        a("com.webengage.static.version_code", (Object) Integer.valueOf(i));
    }

    public void a(String str) {
        a("com.webengage.session.suid", (Object) str);
    }

    public void a(List<Object> list, Object obj, String str, o oVar) {
    }

    public void a(boolean z) {
        a("webengage_volatile_prefs.txt", "com.webengage.static.app_crashed", Boolean.valueOf(z), true);
    }

    public void b(String str) {
        a("com.webengage.static.cuid", (Object) str);
    }

    public void c(String str) {
        a("com.webengage.static.luid", (Object) str);
    }

    public void d(String str) {
        a("com.webengage.static.interfaceID", (Object) str);
    }
}
