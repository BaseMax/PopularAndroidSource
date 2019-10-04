package com.farsitel.bazaar.analytics.model.what;

import c.c.a.c.d.e;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class ProceedRegisterClick extends ButtonClick {
    public final boolean isValid;
    public final String phoneNumber;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ProceedRegisterClick(String str, boolean z) {
        super("proceed", e.a(), null);
        j.b(str, "phoneNumber");
        this.phoneNumber = str;
        this.isValid = z;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("phone_number", this.phoneNumber), f.a("is_valid", Boolean.valueOf(this.isValid))));
        return b2;
    }
}
