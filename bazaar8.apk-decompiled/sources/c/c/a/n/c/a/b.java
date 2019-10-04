package c.c.a.n.c.a;

import c.c.a.a.a;
import c.c.a.c.h.h;
import c.c.a.d.f.i;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.analytics.model.what.CloseEvent;
import com.farsitel.bazaar.analytics.model.what.WhatType;
import com.farsitel.bazaar.analytics.model.where.WhereType;
import h.f.b.j;

/* compiled from: BaseAnalyticsDaggerFragment.kt */
public abstract class b extends i {
    public final boolean ga;
    public final h ha = new h();

    public static /* synthetic */ void a(b bVar, WhatType whatType, WhereType whereType, String str, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                whereType = bVar.Sa();
            }
            if ((i2 & 4) != 0) {
                str = MetaDataStore.USERDATA_SUFFIX;
            }
            bVar.a(whatType, whereType, str);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendAnalyticsEvent");
    }

    public abstract WhereType Sa();

    public boolean Ta() {
        return this.ga;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public void sa() {
        super.sa();
        this.ha.d();
        if (!Ta()) {
            a(this, new CloseEvent(this.ha.b()), null, null, 6, null);
        }
    }

    public void ta() {
        super.ta();
        this.ha.c();
    }

    public final void a(WhatType whatType, WhereType whereType, String str) {
        j.b(whatType, "eventWhat");
        j.b(str, "agent");
        if (whereType != null) {
            a.f4477c.a(new c.c.a.a.a.a(str, whatType, whereType));
            return;
        }
        throw new RuntimeException("You are trying to send an event when its where is null");
    }
}
