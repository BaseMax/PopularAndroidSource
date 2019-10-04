package com.farsitel.bazaar.data.feature.app;

import android.content.SharedPreferences;
import c.c.a.e.d.b.I;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: SharedDataSource.kt */
final class SharedDataSource$sharedPreference$2 extends Lambda implements a<SharedPreferences> {
    public final /* synthetic */ I this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SharedDataSource$sharedPreference$2(I i2) {
        super(0);
        this.this$0 = i2;
    }

    public final SharedPreferences invoke() {
        return this.this$0.b().getSharedPreferences(this.this$0.c(), 0);
    }
}
