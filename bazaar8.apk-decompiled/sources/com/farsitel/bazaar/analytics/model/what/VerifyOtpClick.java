package com.farsitel.bazaar.analytics.model.what;

import c.c.a.c.d.e;
import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class VerifyOtpClick extends ButtonClick {
    public final boolean isAutomatic;

    public VerifyOtpClick(boolean z) {
        super("verify_otp", e.a(), null);
        this.isAutomatic = z;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("is_automatic", Boolean.valueOf(this.isAutomatic))));
        return b2;
    }
}
