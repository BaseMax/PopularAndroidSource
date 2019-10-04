package com.farsitel.bazaar.analytics.model.what;

import com.crashlytics.android.answers.SessionEventTransform;
import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ClickEvent.kt */
public abstract class ClickEvent extends ReferrerNeededEvent {
    public final String name = "click";

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ClickEvent(String str) {
        super(str);
        j.b(str, "referrer");
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        Map<String, Object> c2 = c();
        c2.putAll(z.a(f.a(SessionEventTransform.TYPE_KEY, d())));
        return c2;
    }

    public abstract String d();
}
