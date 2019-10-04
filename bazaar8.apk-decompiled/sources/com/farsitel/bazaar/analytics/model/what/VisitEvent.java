package com.farsitel.bazaar.analytics.model.what;

import com.crashlytics.android.answers.SessionEventTransform;
import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: VisitEvent.kt */
public abstract class VisitEvent extends ReferrerNeededEvent {
    public final String name;
    public final String type;

    public VisitEvent(String str, String str2) {
        super(str2);
        this.type = str;
        this.name = "visit";
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        Map<String, Object> c2 = c();
        c2.putAll(z.a(f.a(SessionEventTransform.TYPE_KEY, this.type)));
        return c2;
    }

    public /* synthetic */ VisitEvent(String str, String str2, h.f.b.f fVar) {
        this(str, str2);
    }
}
