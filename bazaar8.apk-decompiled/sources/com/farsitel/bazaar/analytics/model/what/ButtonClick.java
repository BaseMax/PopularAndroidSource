package com.farsitel.bazaar.analytics.model.what;

import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public abstract class ButtonClick extends ClickEvent {
    public final String type;
    public final String which;

    public ButtonClick(String str, String str2) {
        super(str2);
        this.which = str;
        this.type = "button";
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("which", this.which)));
        return b2;
    }

    public String d() {
        return this.type;
    }

    public /* synthetic */ ButtonClick(String str, String str2, h.f.b.f fVar) {
        this(str, str2);
    }
}