package com.yandex.metrica.impl.ob;

import android.content.Context;

@Deprecated
public class jd extends ix {
    private je c;

    /* access modifiers changed from: protected */
    public String f() {
        return "_serviceproviderspreferences";
    }

    public jd(Context context) {
        this(context, null);
    }

    public jd(Context context, String str) {
        super(context, str);
        this.c = new je("LOCATION_TRACKING_ENABLED");
    }

    public boolean a() {
        return this.f6173b.getBoolean(this.c.b(), false);
    }

    public void b() {
        h(this.c.b()).j();
    }
}
