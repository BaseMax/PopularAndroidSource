package com.yandex.metrica.impl.ob;

import android.content.Context;

@Deprecated
public class ja extends ix {
    private static final je c = new je("SERVICE_API_LEVEL");
    private static final je d = new je("CLIENT_API_LEVEL");
    private je e = new je(c.a());
    private je f = new je(d.a());

    /* access modifiers changed from: protected */
    public String f() {
        return "_migrationpreferences";
    }

    public ja(Context context) {
        super(context, null);
    }

    public int a() {
        return this.f6173b.getInt(this.e.b(), -1);
    }

    public ja b() {
        h(this.e.b());
        return this;
    }

    public ja c() {
        h(this.f.b());
        return this;
    }
}
