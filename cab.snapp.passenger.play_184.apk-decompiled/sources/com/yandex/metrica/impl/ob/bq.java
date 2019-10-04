package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.kz;
import com.yandex.metrica.impl.ob.lc;
import java.util.List;

public class bq extends lc {

    /* renamed from: a  reason: collision with root package name */
    private List<String> f5897a;

    /* renamed from: b  reason: collision with root package name */
    private String f5898b;

    public static final class a extends kz.a {

        /* renamed from: a  reason: collision with root package name */
        public final String f5899a;

        public a(String str, String str2, String str3, String str4) {
            super(str, str2, str3);
            this.f5899a = str4;
        }
    }

    public static class b extends lc.a<bq, a> {
        public b(Context context, String str) {
            super(context, str);
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public bq b() {
            return new bq();
        }

        /* renamed from: a */
        public bq c(kz.c<a> cVar) {
            bq bqVar = (bq) super.c(cVar);
            bqVar.a(cVar.f6352a.j);
            bqVar.a(((a) cVar.f6353b).f5899a);
            return bqVar;
        }
    }

    public List<String> a() {
        return this.f5897a;
    }

    public void a(List<String> list) {
        this.f5897a = list;
    }

    public String b() {
        return this.f5898b;
    }

    public void a(String str) {
        this.f5898b = str;
    }

    public String toString() {
        return "DiagnosticRequestConfig{mDiagnosticHosts=" + this.f5897a + ", mApiKey='" + this.f5898b + '\'' + '}';
    }
}
