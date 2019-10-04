package com.farsitel.bazaar.analytics.model.what;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class VoiceSearchClick extends ButtonClick {
    public final String result;
    public final String spokenText;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VoiceSearchClick(String str, String str2, String str3) {
        super("voice_search", str3, null);
        j.b(str, "spokenText");
        j.b(str2, "result");
        j.b(str3, "referrer");
        this.spokenText = str;
        this.result = str2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("spoken_text", this.spokenText), f.a("result", this.result)));
        return b2;
    }
}
