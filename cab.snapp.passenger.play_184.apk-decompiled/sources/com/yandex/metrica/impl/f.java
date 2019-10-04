package com.yandex.metrica.impl;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.yandex.metrica.impl.am;
import com.yandex.metrica.impl.ob.gc;
import com.yandex.metrica.impl.ob.iy;
import com.yandex.metrica.impl.ob.ja;
import com.yandex.metrica.impl.ob.je;
import java.util.Map;

public class f extends am {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final gc f5818a;

    static class a implements am.a {

        /* renamed from: a  reason: collision with root package name */
        private gc f5820a;

        private static boolean a(long j, long j2, long j3) {
            return j != j3 && j2 == j3;
        }

        public a(gc gcVar) {
            this.f5820a = gcVar;
        }

        public void a(Context context) {
            iy iyVar = new iy(context);
            if (bv.a((Map) iyVar.c())) {
                return;
            }
            if (this.f5820a.a((String) null) == null || this.f5820a.b((String) null) == null) {
                String b2 = iyVar.b((String) null);
                if (a(b2, this.f5820a.b((String) null))) {
                    this.f5820a.h(b2);
                }
                String a2 = iyVar.a();
                if (a(a2, this.f5820a.a())) {
                    this.f5820a.m(a2);
                }
                String a3 = iyVar.a((String) null);
                if (a(a3, this.f5820a.a((String) null))) {
                    this.f5820a.g(a3);
                }
                String c = iyVar.c(null);
                if (a(c, this.f5820a.d((String) null))) {
                    this.f5820a.j(c);
                }
                String d = iyVar.d(null);
                if (a(d, this.f5820a.e((String) null))) {
                    this.f5820a.k(d);
                }
                String e = iyVar.e(null);
                if (a(e, this.f5820a.f((String) null))) {
                    this.f5820a.l(e);
                }
                long a4 = iyVar.a(-1);
                if (a(a4, this.f5820a.a(-1), -1)) {
                    this.f5820a.d(a4);
                }
                long b3 = iyVar.b(-1);
                if (a(b3, this.f5820a.b(-1), -1)) {
                    this.f5820a.e(b3);
                }
                this.f5820a.i();
                iyVar.b().j();
            }
        }

        private static boolean a(String str, String str2) {
            return !TextUtils.isEmpty(str) && TextUtils.isEmpty(str2);
        }
    }

    class b implements am.a {

        /* renamed from: a  reason: collision with root package name */
        private final gc f5821a;

        public b(gc gcVar) {
            this.f5821a = gcVar;
        }

        public void a(Context context) {
            this.f5821a.p(new je("COOKIE_BROWSERS").b());
            this.f5821a.p(new je("BIND_ID_URL").b());
            w.a(context, "b_meta.dat");
            w.a(context, "browsers.dat");
        }
    }

    public f(gc gcVar) {
        this.f5818a = gcVar;
    }

    /* access modifiers changed from: package-private */
    public SparseArray<am.a> a() {
        return new SparseArray<am.a>() {
            {
                put(47, new a(f.this.f5818a));
                put(66, new b(f.this.f5818a));
            }
        };
    }

    /* access modifiers changed from: protected */
    public int a(ja jaVar) {
        return (int) this.f5818a.c(-1);
    }

    /* access modifiers changed from: protected */
    public void a(ja jaVar, int i) {
        this.f5818a.f((long) i);
        jaVar.c().j();
    }
}
