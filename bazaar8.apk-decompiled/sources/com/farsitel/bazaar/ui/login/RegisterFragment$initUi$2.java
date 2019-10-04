package com.farsitel.bazaar.ui.login;

import b.a.d;
import c.c.a.n.p.C0674a;
import com.farsitel.bazaar.analytics.model.what.BackPressedEvent;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: RegisterFragment.kt */
final class RegisterFragment$initUi$2 extends Lambda implements b<d, h> {
    public final /* synthetic */ RegisterFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public RegisterFragment$initUi$2(RegisterFragment registerFragment) {
        super(1);
        this.this$0 = registerFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((d) obj);
        return h.f14579a;
    }

    public final void a(d dVar) {
        j.b(dVar, "$receiver");
        c.c.a.n.c.a.b.a(this.this$0, new BackPressedEvent(), null, null, 6, null);
        C0674a b2 = this.this$0.na;
        if (b2 != null) {
            b2.l();
        }
    }
}
