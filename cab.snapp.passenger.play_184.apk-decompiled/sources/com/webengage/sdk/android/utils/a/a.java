package com.webengage.sdk.android.utils.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

public abstract class a {
    public static final List<c> c = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    protected Context f5577a;

    /* renamed from: b  reason: collision with root package name */
    protected f f5578b;

    public a(Context context, f fVar) {
        this.f5577a = context.getApplicationContext();
        this.f5578b = fVar;
    }

    public static void a(c cVar) {
        synchronized (c) {
            c.add(cVar);
        }
    }

    /* access modifiers changed from: package-private */
    public abstract g a(g gVar);

    /* access modifiers changed from: package-private */
    public abstract boolean a();

    /* access modifiers changed from: package-private */
    public abstract boolean b();

    /* access modifiers changed from: package-private */
    public abstract byte[] b(g gVar);

    /* access modifiers changed from: package-private */
    public abstract g c();

    /* access modifiers changed from: package-private */
    public abstract g d();

    /* access modifiers changed from: package-private */
    public abstract g e();

    /* access modifiers changed from: protected */
    public void f() {
        g e = e();
        if (e != null) {
            e.n();
            e.m();
        }
    }

    /* access modifiers changed from: protected */
    public g g() {
        g gVar = null;
        try {
            switch (this.f5578b.g()) {
                case 1:
                    g d = d();
                    if (!d.i()) {
                        gVar = a(d);
                        break;
                    } else {
                        return d;
                    }
                case 2:
                    if (!a()) {
                        return d();
                    }
                    if (b()) {
                        return a((g) null);
                    }
                    g c2 = c();
                    if (!c2.i()) {
                        return a(c2);
                    }
                    f();
                    return c2;
                case 3:
                    return d();
                case 4:
                    return a((g) null);
                case 5:
                    if (!a()) {
                        return d();
                    }
                    if (b()) {
                        return a((g) null);
                    }
                    g c3 = c();
                    if (!c3.i()) {
                        if (c3.f() == null) {
                            if (c3.a() == null) {
                                if (!c3.c()) {
                                    return a(c3);
                                }
                                f();
                                return c3;
                            }
                        }
                        f();
                        return c3;
                    }
                    f();
                    return c3;
                case 6:
                    return a() ? a((g) null) : d();
            }
        } catch (Exception unused) {
        }
        return gVar;
    }
}
