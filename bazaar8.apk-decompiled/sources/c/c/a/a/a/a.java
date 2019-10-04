package c.c.a.a.a;

import android.os.Bundle;
import c.c.a.c.b.g;
import com.farsitel.bazaar.analytics.model.what.WhatType;
import com.farsitel.bazaar.analytics.model.where.WhereType;
import h.f;
import h.f.b.j;
import kotlin.Pair;

/* compiled from: Event.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public long f4478a = System.currentTimeMillis();

    /* renamed from: b  reason: collision with root package name */
    public String f4479b;

    /* renamed from: c  reason: collision with root package name */
    public WhatType f4480c;

    /* renamed from: d  reason: collision with root package name */
    public WhereType f4481d;

    public a(String str, WhatType whatType, WhereType whereType) {
        j.b(str, "agent");
        j.b(whatType, "whatType");
        j.b(whereType, "whereType");
        this.f4479b = str;
        this.f4480c = whatType;
        this.f4481d = whereType;
    }

    public final c.c.a.a.b.a.a.a.a a(String str) {
        j.b(str, "who");
        String str2 = str;
        c.c.a.a.b.a.a.a.a aVar = new c.c.a.a.b.a.a.a.a(0, this.f4478a, this.f4479b, str2, this.f4481d.a(), this.f4481d.b(), this.f4480c.a(), this.f4480c.b());
        return aVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f4481d, (java.lang.Object) r3.f4481d) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.a.a.a
            if (r0 == 0) goto L_0x0027
            c.c.a.a.a.a r3 = (c.c.a.a.a.a) r3
            java.lang.String r0 = r2.f4479b
            java.lang.String r1 = r3.f4479b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.analytics.model.what.WhatType r0 = r2.f4480c
            com.farsitel.bazaar.analytics.model.what.WhatType r1 = r3.f4480c
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.analytics.model.where.WhereType r0 = r2.f4481d
            com.farsitel.bazaar.analytics.model.where.WhereType r3 = r3.f4481d
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.a.a.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f4479b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        WhatType whatType = this.f4480c;
        int hashCode2 = (hashCode + (whatType != null ? whatType.hashCode() : 0)) * 31;
        WhereType whereType = this.f4481d;
        if (whereType != null) {
            i2 = whereType.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "Event(agent=" + this.f4479b + ", whatType=" + this.f4480c + ", whereType=" + this.f4481d + ")";
    }

    public final Pair<String, Bundle> a() {
        String str = this.f4480c.a() + '_' + this.f4481d.a();
        Bundle bundle = new Bundle();
        bundle.putAll(g.a(this.f4480c.b()));
        bundle.putAll(g.a(this.f4481d.b()));
        return f.a(str, bundle);
    }
}
