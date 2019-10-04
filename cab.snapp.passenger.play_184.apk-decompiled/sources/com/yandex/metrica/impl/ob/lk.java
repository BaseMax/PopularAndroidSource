package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.b;
import com.yandex.metrica.impl.ob.ki;

public class lk {

    /* renamed from: a  reason: collision with root package name */
    private final ll f6376a;

    /* renamed from: b  reason: collision with root package name */
    private final b f6377b;

    public lk(Context context) {
        this(new ll(), lm.a(context));
    }

    public void a(ki.a.b bVar) {
        this.f6377b.a("provided_request_result", this.f6376a.a(bVar));
    }

    public void a(ki.a.C0120a aVar) {
        this.f6377b.a("provided_request_schedule", this.f6376a.a(aVar));
    }

    public void b(ki.a.C0120a aVar) {
        this.f6377b.a("provided_request_send", this.f6376a.a(aVar));
    }

    lk(ll llVar, b bVar) {
        this.f6376a = llVar;
        this.f6377b = bVar;
    }
}
