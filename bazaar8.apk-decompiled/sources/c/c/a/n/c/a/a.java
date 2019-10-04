package c.c.a.n.c.a;

import c.c.a.c.h.h;
import c.c.a.d.f.g;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.analytics.model.what.CloseEvent;
import com.farsitel.bazaar.analytics.model.what.WhatType;
import com.farsitel.bazaar.analytics.model.where.WhereType;
import h.f.b.j;

/* compiled from: BaseAnalyticsDaggerDialogFragment.kt */
public abstract class a<T> extends g<T> {
    public final boolean ta;
    public final h ua = new h();

    public static /* synthetic */ void a(a aVar, WhatType whatType, WhereType whereType, String str, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                whereType = aVar._a();
            }
            if ((i2 & 4) != 0) {
                str = MetaDataStore.USERDATA_SUFFIX;
            }
            aVar.a(whatType, whereType, str);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendAnalyticsEvent");
    }

    public abstract WhereType _a();

    public boolean ab() {
        return this.ta;
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public void sa() {
        super.sa();
        this.ua.d();
        if (!ab()) {
            a(this, new CloseEvent(this.ua.b()), null, null, 6, null);
        }
    }

    public void ta() {
        super.ta();
        this.ua.c();
    }

    public final void a(WhatType whatType, WhereType whereType, String str) {
        j.b(whatType, "eventWhat");
        j.b(str, "agent");
        if (whereType != null) {
            c.c.a.a.a.f4477c.a(new c.c.a.a.a.a(str, whatType, whereType));
            return;
        }
        throw new RuntimeException("You are trying to send an event when its where is null");
    }
}
