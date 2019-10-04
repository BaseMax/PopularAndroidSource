package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.s;

public class bh extends ay {

    /* renamed from: a  reason: collision with root package name */
    private final hw f5888a;

    /* renamed from: b  reason: collision with root package name */
    private final mw f5889b;

    bh(Context context, ar arVar) {
        this(context, arVar, hw.a(context), mw.a(context));
    }

    bh(Context context, ar arVar, hw hwVar, mw mwVar) {
        super(context, arVar);
        this.f5888a = hwVar;
        this.f5888a.a((Object) this);
        this.f5889b = mwVar;
        this.f5889b.a();
    }

    /* access modifiers changed from: protected */
    public void b(i iVar, t tVar) {
        a(nt.a(tVar.b().g(), true));
        if (!s.a(iVar.e())) {
            b().a(tVar);
        }
        b().a(iVar);
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f5888a.a(z);
    }

    public void a() {
        super.a();
        this.f5888a.b((Object) this);
        this.f5889b.b();
    }
}
