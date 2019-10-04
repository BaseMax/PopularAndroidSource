package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;

public class hu {

    /* renamed from: a  reason: collision with root package name */
    private final fs f6128a;

    /* renamed from: b  reason: collision with root package name */
    private final hp f6129b;

    public hu(Context context) {
        this(fq.a(context).h(), new hp(context));
    }

    public void a(hv hvVar) {
        String a2 = this.f6129b.a(hvVar);
        if (!TextUtils.isEmpty(a2)) {
            this.f6128a.a(hvVar.b(), a2);
        }
    }

    hu(fs fsVar, hp hpVar) {
        this.f6128a = fsVar;
        this.f6129b = hpVar;
    }
}
