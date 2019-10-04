package com.yandex.metrica.impl;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.b;
import com.yandex.metrica.impl.ob.jy;
import com.yandex.metrica.impl.ob.jz;
import com.yandex.metrica.impl.ob.ke;
import com.yandex.metrica.impl.ob.lw;
import com.yandex.metrica.impl.ob.nk;
import com.yandex.metrica.impl.ob.on;
import com.yandex.metrica.impl.ob.oo;
import com.yandex.metrica.impl.ob.oy;
import com.yandex.metrica.impl.ob.pa;
import com.yandex.metrica.impl.ob.pe;
import com.yandex.metrica.impl.s;
import com.yandex.metrica.profile.UserProfile;
import com.yandex.metrica.profile.UserProfileUpdate;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public abstract class c implements b {
    private static final Collection<Integer> c = new HashSet(Arrays.asList(new Integer[]{14, 15}));
    private static final pa<ke.a> d = new pa<ke.a>() {
        public final oy a(ke.a aVar) {
            ke.a.C0115a[] aVarArr = aVar.f6210b;
            if (aVarArr == null || aVarArr.length == 0) {
                return oy.a(this, "attributes list is empty");
            }
            return oy.a(this);
        }
    };
    private static final pa<Revenue> e = new pe();

    /* renamed from: a  reason: collision with root package name */
    protected final bf f5812a;

    /* renamed from: b  reason: collision with root package name */
    protected final bi f5813b;
    private aa f;

    c(Context context, bi biVar, bf bfVar) {
        context.getApplicationContext();
        this.f5813b = biVar;
        this.f5812a = bfVar;
        this.f5812a.a(new oo(new on(30, 50, 100, "Crash Environment")));
    }

    /* access modifiers changed from: protected */
    public void a() {
        this.f5813b.a(this.f5812a);
    }

    /* access modifiers changed from: package-private */
    public void a(lw lwVar) {
        this.f5812a.b(lwVar);
    }

    /* access modifiers changed from: package-private */
    public void a(k kVar) {
        this.f5812a.a(kVar);
    }

    /* access modifiers changed from: package-private */
    public void a(aa aaVar) {
        this.f = aaVar;
    }

    public void b(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            this.f5812a.a(str, str2);
        }
    }

    public void a(Map<String, String> map) {
        if (!bv.a((Map) map)) {
            for (Map.Entry next : map.entrySet()) {
                b((String) next.getKey(), (String) next.getValue());
            }
        }
    }

    public void b(Map<String, String> map) {
        if (!bv.a((Map) map)) {
            for (Map.Entry next : map.entrySet()) {
                c((String) next.getKey(), (String) next.getValue());
            }
        }
    }

    public void c(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            this.f5813b.a(str, str2, this.f5812a);
        }
    }

    public void b() {
        this.f5813b.b(this.f5812a);
    }

    public void resumeSession() {
        a((String) null);
    }

    /* access modifiers changed from: package-private */
    public void a(String str) {
        this.f5813b.d();
        this.f.b();
        this.f5813b.a(s.b(str), this.f5812a);
        if (this.f5812a.e()) {
            this.f5813b.a(s.c(s.a.EVENT_TYPE_PURGE_BUFFER), this.f5812a);
        }
    }

    public void pauseSession() {
        b((String) null);
    }

    /* access modifiers changed from: package-private */
    public void b(String str) {
        if (!this.f5812a.a()) {
            this.f5813b.e();
            this.f.a();
            this.f5813b.a(s.c(str), this.f5812a);
            this.f5812a.d();
        }
    }

    public void reportEvent(String str) {
        reportEvent(str, (String) null);
    }

    public void reportEvent(String str, String str2) {
        a(s.a(str, str2));
    }

    public void reportError(String str, Throwable th) {
        a(s.c(str, bv.a((String) null, th)));
    }

    public void sendEventsBuffer() {
        this.f5813b.a(s.c(s.a.EVENT_TYPE_PURGE_BUFFER), this.f5812a);
    }

    public void a(String str, String str2) {
        a(s.b(str, str2));
    }

    /* access modifiers changed from: package-private */
    public boolean c() {
        boolean z = !e();
        if (z) {
            this.f5813b.a(s.c(""), this.f5812a);
        }
        return z;
    }

    /* access modifiers changed from: package-private */
    public bf d() {
        return this.f5812a;
    }

    private void a(i iVar) {
        this.f5813b.a(iVar, this.f5812a);
    }

    public void reportUserProfile(UserProfile userProfile) {
        jy jyVar = new jy();
        for (UserProfileUpdate<? extends jz> userProfileUpdatePatcher : userProfile.getUserProfileUpdates()) {
            userProfileUpdatePatcher.getUserProfileUpdatePatcher().a(jyVar);
        }
        ke.a c2 = jyVar.c();
        oy a2 = d.a(c2);
        if (a2.a()) {
            this.f5813b.a(c2, this.f5812a);
            return;
        }
        if (nk.f().b()) {
            nk f2 = nk.f();
            f2.b("UserInfo wasn't sent because " + a2.b());
        }
    }

    public void setUserProfileID(String str) {
        this.f5813b.b(str, this.f5812a);
    }

    public void reportRevenue(Revenue revenue) {
        oy a2 = e.a(revenue);
        if (a2.a()) {
            this.f5813b.a(new bk(revenue), this.f5812a);
            return;
        }
        if (nk.f().b()) {
            nk f2 = nk.f();
            f2.b("Passed revenue is not valid. Reason: " + a2.b());
        }
    }

    public void setStatisticsSending(boolean z) {
        this.f5812a.b().f(z);
    }

    public boolean e() {
        return this.f5812a.a();
    }

    public void reportEvent(String str, Map<String, Object> map) {
        this.f5813b.a(s.a(str), d(), (Map<String, Object>) bv.a((Map) map) ? null : new HashMap(map));
    }

    public void a(int i, String str, String str2, Map<String, String> map) {
        if (!(!c.contains(Integer.valueOf(i)) && i > 0 && i <= 99)) {
            a(s.a(i, str, str2, map == null ? null : new HashMap(map)));
        }
    }

    public void reportUnhandledException(Throwable th) {
        this.f5813b.a(th, this.f5812a);
    }

    public void c(String str) {
        this.f5813b.a(w.b(str), this.f5812a);
    }
}
