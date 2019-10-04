package com.farsitel.bazaar.analytics.model.where;

import com.crashlytics.android.answers.LoginEvent;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: Flowskt.kt */
public final class LoginFlow extends Flow {
    public final String dealerId;
    public final int loginType;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LoginFlow(String str, int i2) {
        super(LoginEvent.TYPE, null);
        j.b(str, "dealerId");
        this.dealerId = str;
        this.loginType = i2;
    }

    public Map<String, Object> b() {
        return A.b(f.a("dealerId", this.dealerId), f.a("loginType", Integer.valueOf(this.loginType)));
    }
}
