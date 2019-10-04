package com.webengage.sdk.android;

import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.actions.database.aa;
import com.webengage.sdk.android.actions.database.b;
import com.webengage.sdk.android.actions.database.g;
import com.webengage.sdk.android.actions.database.l;
import com.webengage.sdk.android.actions.database.q;
import com.webengage.sdk.android.actions.database.v;
import com.webengage.sdk.android.actions.render.n;

public enum af {
    BOOT_UP(new ab.a[]{b.f5347a, com.webengage.sdk.android.actions.rules.b.f5447a, com.webengage.sdk.android.actions.b.b.f5340b}),
    EVENT(new ab.a[]{n.f5409a, g.f5356a, com.webengage.sdk.android.actions.rules.g.f5459a, com.webengage.sdk.android.actions.b.b.f5340b, q.f5373b}),
    GCM_MESSAGE(new ab.a[]{g.f5356a, n.f5409a}),
    CONFIG_REFRESH(new ab.a[]{com.webengage.sdk.android.actions.rules.b.f5447a}),
    SYNC_TO_SERVER(new ab.a[]{v.f5379a}),
    DEEPLINK(new ab.a[]{com.webengage.sdk.android.actions.a.b.f5336a}),
    EXCEPTION(new ab.a[]{com.webengage.sdk.android.actions.exception.b.f5387a}),
    INTERNAL_EVENT(new ab.a[]{n.f5409a, g.f5356a, com.webengage.sdk.android.actions.rules.g.f5459a}),
    DATA(new ab.a[]{g.f5356a}),
    RENDER(new ab.a[]{n.f5409a}),
    RULE_EXECUTION(new ab.a[]{com.webengage.sdk.android.actions.rules.g.f5459a}),
    FETCH_PROFILE(new ab.a[]{aa.f5345a}),
    JOURNEY_CONTEXT(new ab.a[]{l.f5366a}),
    REPORT(new ab.a[]{q.f5373b}),
    AMPLIFY(new ab.a[]{b.f5523a});
    
    ab.a[] p;

    private af(ab.a[] aVarArr) {
        this.p = aVarArr;
    }

    /* access modifiers changed from: protected */
    public final ab.a[] a() {
        return this.p;
    }
}
