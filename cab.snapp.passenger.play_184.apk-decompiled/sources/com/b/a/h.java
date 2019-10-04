package com.b.a;

import android.content.Context;

public final class h {

    /* renamed from: a  reason: collision with root package name */
    Context f1965a;

    /* renamed from: b  reason: collision with root package name */
    r f1966b;
    b c;
    o d;
    e e;
    p f;
    private m g;

    public h(Context context) {
        l.checkNull("Context", context);
        this.f1965a = context.getApplicationContext();
    }

    public final h setStorage(r rVar) {
        this.f1966b = rVar;
        return this;
    }

    public final h setParser(o oVar) {
        this.d = oVar;
        return this;
    }

    public final h setSerializer(p pVar) {
        this.f = pVar;
        return this;
    }

    public final h setLogInterceptor(m mVar) {
        this.g = mVar;
        return this;
    }

    public final h setConverter(b bVar) {
        this.c = bVar;
        return this;
    }

    public final h setEncryption(e eVar) {
        this.e = eVar;
        return this;
    }

    /* access modifiers changed from: package-private */
    public final m a() {
        if (this.g == null) {
            this.g = new m() {
                public final void onLog(String str) {
                }
            };
        }
        return this.g;
    }

    public final void build() {
        g.a(this);
    }
}
