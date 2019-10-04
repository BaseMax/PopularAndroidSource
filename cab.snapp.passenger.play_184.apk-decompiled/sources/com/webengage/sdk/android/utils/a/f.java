package com.webengage.sdk.android.utils.a;

import android.content.Context;
import com.webengage.sdk.android.utils.a.g;
import java.util.Map;

public class f {

    /* renamed from: a  reason: collision with root package name */
    private final String f5586a;

    /* renamed from: b  reason: collision with root package name */
    private final e f5587b;
    private Map<String, String> c;
    private final Object d;
    private final String e;
    private int f;
    private final int g;
    private Context h;

    public static class a {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public final String f5588a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final e f5589b;
        /* access modifiers changed from: private */
        public Map<String, String> c = null;
        /* access modifiers changed from: private */
        public Object d = null;
        /* access modifiers changed from: private */
        public String e = null;
        /* access modifiers changed from: private */
        public Context f = null;
        /* access modifiers changed from: private */
        public int g = 0;
        /* access modifiers changed from: private */
        public int h = 3;

        public a(String str, e eVar, Context context) {
            this.f5588a = str;
            this.f5589b = eVar;
            this.f = context.getApplicationContext();
        }

        public a a(int i) {
            this.g = i | this.g;
            return this;
        }

        public a a(Object obj) {
            this.d = obj;
            return this;
        }

        public a a(String str) {
            this.e = str;
            return this;
        }

        public a a(Map<String, String> map) {
            this.c = map;
            return this;
        }

        public f a() {
            return new f(this);
        }

        public a b(int i) {
            this.h = i;
            return this;
        }
    }

    private f(a aVar) {
        this.f5586a = aVar.f5588a;
        this.f5587b = aVar.f5589b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.g;
        this.g = aVar.h;
        this.h = aVar.f;
    }

    public String a() {
        return this.f5586a;
    }

    public e b() {
        return this.f5587b;
    }

    public Map<String, String> c() {
        return this.c;
    }

    public Object d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }

    public int g() {
        return this.g;
    }

    public a h() {
        return new a(this.f5586a, this.f5587b, this.h).a(this.e).a(this.f).b(this.g).a(this.c).a(this.d);
    }

    public g i() {
        boolean z;
        synchronized (d.c) {
            z = true;
            for (c a2 : d.c) {
                z &= a2.a(this, this.h);
            }
        }
        g gVar = null;
        if (z) {
            gVar = new d(this.h, this).g();
        }
        return gVar == null ? new g.a().a() : gVar;
    }
}
