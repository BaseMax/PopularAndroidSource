package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.utils.WebEngageConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

public class aa {

    /* renamed from: a  reason: collision with root package name */
    Context f5330a;

    /* renamed from: b  reason: collision with root package name */
    f f5331b;

    aa(f fVar, Context context) {
        this.f5331b = fVar;
        this.f5330a = context.getApplicationContext();
    }

    /* access modifiers changed from: package-private */
    public void a() {
        this.f5331b.a(new UUID(System.currentTimeMillis(), UUID.randomUUID().getLeastSignificantBits()).toString());
    }

    public void a(long j) {
        HashMap hashMap = new HashMap();
        hashMap.put("time_spent", Long.valueOf(j));
        try {
            ad.a(this.f5330a).a(af.EVENT, k.a("user_increment", hashMap, null, null, this.f5330a));
        } catch (Exception e) {
            try {
                ad.a(this.f5330a).a(af.EXCEPTION, e);
            } catch (Exception unused) {
            }
        }
    }

    public void b() {
        HashMap hashMap = new HashMap();
        hashMap.put("session_type", "background");
        WebEngage.startService(n.a(af.EVENT, k.a("visitor_new_session", hashMap, null, null, this.f5330a), this.f5330a), this.f5330a);
    }

    public void c() {
        WebEngage.startService(n.a(af.EVENT, k.a("visitor_session_close", null, null, null, this.f5330a), this.f5330a), this.f5330a);
    }

    public void d() {
        HashMap hashMap = new HashMap();
        hashMap.put("session_type", "online");
        try {
            ad.a(this.f5330a).a(af.EVENT, k.a("visitor_new_session", hashMap, null, null, this.f5330a));
        } catch (Exception e) {
            try {
                ad.a(this.f5330a).a(af.EXCEPTION, e);
            } catch (Exception unused) {
            }
        }
    }

    public void e() {
        HashMap hashMap = new HashMap();
        hashMap.put("session_type", "background");
        try {
            ad.a(this.f5330a).a(af.EVENT, k.a("visitor_new_session", hashMap, null, null, this.f5330a));
        } catch (Exception e) {
            try {
                ad.a(this.f5330a).a(af.EXCEPTION, e);
            } catch (Exception unused) {
            }
        }
    }

    public void f() {
        try {
            ad.a(this.f5330a).a(af.EVENT, k.a("visitor_session_close", null, null, null, this.f5330a));
        } catch (Exception e) {
            try {
                ad.a(this.f5330a).a(af.EXCEPTION, e);
            } catch (Exception unused) {
            }
        }
    }

    public void g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(WebEngageConstant.c.SESSION_RULE);
        arrayList.add(WebEngageConstant.c.PAGE_RULE);
        try {
            ad.a(this.f5330a).a(af.RULE_EXECUTION, arrayList);
        } catch (Exception e) {
            try {
                ad.a(this.f5330a).a(af.EXCEPTION, e);
            } catch (Exception unused) {
            }
        }
    }

    public void h() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(WebEngageConstant.c.PAGE_RULE);
        try {
            ad.a(this.f5330a).a(af.RULE_EXECUTION, arrayList);
        } catch (Exception e) {
            try {
                ad.a(this.f5330a).a(af.EXCEPTION, e);
            } catch (Exception unused) {
            }
        }
    }
}
