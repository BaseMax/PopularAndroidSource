package com.farsitel.bazaar.app.navigation;

import c.c.a.b.e.b;
import com.farsitel.bazaar.app.navigation.intenthandler.IntentHandlerImpl;
import h.f.a.a;
import java.util.Locale;
import kotlin.jvm.internal.Lambda;

/* compiled from: NavigationManager.kt */
final class NavigationManager$intentHandler$2 extends Lambda implements a<IntentHandlerImpl> {
    public final /* synthetic */ Locale $locale;
    public final /* synthetic */ b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public NavigationManager$intentHandler$2(b bVar, Locale locale) {
        super(0);
        this.this$0 = bVar;
        this.$locale = locale;
    }

    public final IntentHandlerImpl invoke() {
        return new IntentHandlerImpl(this.this$0, this.$locale);
    }
}
