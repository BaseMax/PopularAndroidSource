package com.farsitel.bazaar.ui.reviews.thirdparty;

import android.content.Context;
import android.content.Intent;
import b.b.a.C0202m;
import b.o.a.C0285i;
import b.o.a.C0290n;
import c.c.a.h.b.Vb;
import c.c.a.n.u.c.d;
import com.crashlytics.android.answers.SessionEvent;
import com.farsitel.bazaar.common.model.login.LoginType;
import com.farsitel.bazaar.ui.login.LoginActivity;
import d.a.a.b;
import h.f.b.f;
import h.f.b.j;

/* compiled from: ThirdPartyReviewActivity.kt */
public final class ThirdPartyReviewActivity extends b implements d.b {
    public static final a u = new a(null);
    public final c.c.a.n.u.c.b A = new c.c.a.n.u.c.b(this);
    public final int v = 1010;
    public c.c.a.d.c.b w;
    public Vb x;
    public String y;
    public ThirdPartyPendingResult z;

    /* compiled from: ThirdPartyReviewActivity.kt */
    public static final class a {
        public a() {
        }

        public final void a(C0202m mVar, String str) {
            j.b(mVar, SessionEvent.ACTIVITY_KEY);
            j.b(str, "packageName");
            Intent intent = new Intent(mVar, ThirdPartyReviewActivity.class);
            intent.putExtra("packageName", str);
            mVar.startActivity(intent);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public void attachBaseContext(Context context) {
        j.b(context, "newBase");
        super.attachBaseContext(c.c.a.d.g.b.f4814b.b(context));
    }

    public final void b(String str) {
        d a2 = d.Ha.a(str, this.z);
        a2.a(this.A);
        C0290n r = r();
        j.a((Object) r, "supportFragmentManager");
        a2.a(r);
        this.z = null;
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 != this.v) {
            return;
        }
        if (i3 == -1) {
            String str = this.y;
            if (str != null) {
                b(str);
            } else {
                j.a();
                throw null;
            }
        } else {
            finish();
        }
    }

    public void onBackPressed() {
        super.onBackPressed();
        if (this.z != null) {
            String packageName = getPackageName();
            j.a((Object) packageName, "packageName");
            b(packageName);
            this.z = null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0028  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onCreate(android.os.Bundle r4) {
        /*
            r3 = this;
            super.onCreate(r4)
            r0 = 0
            r3.overridePendingTransition(r0, r0)
            r0 = 2131558433(0x7f0d0021, float:1.8742182E38)
            r3.setContentView((int) r0)
            android.content.Intent r0 = r3.getIntent()
            r1 = 0
            if (r0 == 0) goto L_0x0021
            android.os.Bundle r0 = r0.getExtras()
            if (r0 == 0) goto L_0x0021
            java.lang.String r2 = "packageName"
            java.lang.String r0 = r0.getString(r2)
            goto L_0x0022
        L_0x0021:
            r0 = r1
        L_0x0022:
            r3.y = r0
            java.lang.String r0 = r3.y
            if (r0 != 0) goto L_0x0038
            c.c.a.c.c.a r4 = c.c.a.c.c.a.f4699b
            java.lang.IllegalAccessError r0 = new java.lang.IllegalAccessError
            java.lang.String r1 = "packageName is null for thirdPartyReview"
            r0.<init>(r1)
            r4.a((java.lang.Throwable) r0)
            r3.finish()
            return
        L_0x0038:
            if (r4 != 0) goto L_0x0062
            c.c.a.d.c.b r4 = r3.w
            if (r4 == 0) goto L_0x005c
            boolean r4 = r4.f()
            if (r4 != 0) goto L_0x0050
            java.lang.String r4 = r3.y
            if (r4 == 0) goto L_0x004c
            r3.a((java.lang.String) r4)
            goto L_0x0062
        L_0x004c:
            h.f.b.j.a()
            throw r1
        L_0x0050:
            java.lang.String r4 = r3.y
            if (r4 == 0) goto L_0x0058
            r3.b(r4)
            goto L_0x0062
        L_0x0058:
            h.f.b.j.a()
            throw r1
        L_0x005c:
            java.lang.String r4 = "accountManager"
            h.f.b.j.c(r4)
            throw r1
        L_0x0062:
            c.c.a.h.b.Vb r4 = r3.x
            if (r4 == 0) goto L_0x0084
            b.r.F r4 = b.r.G.a((b.o.a.C0285i) r3, (b.r.F.b) r4)
            java.lang.Class<c.c.a.n.t.a.c> r0 = c.c.a.n.t.a.c.class
            b.r.E r4 = r4.a(r0)
            java.lang.String r0 = "ViewModelProviders.of(th…, factory)[T::class.java]"
            h.f.b.j.a((java.lang.Object) r4, (java.lang.String) r0)
            c.c.a.n.t.a.c r4 = (c.c.a.n.t.a.c) r4
            androidx.lifecycle.LiveData r4 = r4.f()
            c.c.a.n.u.c.a r0 = new c.c.a.n.u.c.a
            r0.<init>(r3)
            r4.a(r3, r0)
            return
        L_0x0084:
            java.lang.String r4 = "viewModelFactory"
            h.f.b.j.c(r4)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.reviews.thirdparty.ThirdPartyReviewActivity.onCreate(android.os.Bundle):void");
    }

    public void p() {
        finish();
    }

    public final void a(String str) {
        LoginActivity.w.a((C0285i) this, this.v, str, LoginType.IN_APP_REVIEW);
    }
}
