package com.farsitel.bazaar.player.quality;

import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: CafeTrack.kt */
final class CafeTrack$trackName$2 extends Lambda implements a<String> {
    public final /* synthetic */ String $_trackName;
    public final /* synthetic */ c.c.a.l.a.a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CafeTrack$trackName$2(c.c.a.l.a.a aVar, String str) {
        super(0);
        this.this$0 = aVar;
        this.$_trackName = str;
    }

    public final String invoke() {
        String str = this.$_trackName;
        if (str != null) {
            return str;
        }
        int d2 = this.this$0.d();
        if (d2 == 2) {
            return c.c.a.l.a.a.f6081c.a(this.this$0.b());
        }
        if (d2 == 3) {
            String str2 = this.this$0.b().A;
            if (str2 == null) {
                str2 = this.this$0.b().f12507b;
            }
            if (str2 != null) {
                return str2;
            }
        }
        return "";
    }
}
