package com.webengage.sdk.android.utils.a;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

public class g {

    /* renamed from: a  reason: collision with root package name */
    private int f5590a;

    /* renamed from: b  reason: collision with root package name */
    private Exception f5591b;
    private Map<String, List<String>> c;
    private boolean d;
    private InputStream e;
    private InputStream f;
    private int g;
    private String h;
    private int i;
    private String j;
    private long k;

    public static class a {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public int f5592a = -1;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public Exception f5593b = null;
        /* access modifiers changed from: private */
        public Map<String, List<String>> c = null;
        /* access modifiers changed from: private */
        public boolean d = true;
        /* access modifiers changed from: private */
        public InputStream e = null;
        /* access modifiers changed from: private */
        public InputStream f = null;
        /* access modifiers changed from: private */
        public int g = -1;
        /* access modifiers changed from: private */
        public String h = "";
        /* access modifiers changed from: private */
        public int i = 0;
        /* access modifiers changed from: private */
        public String j = null;
        /* access modifiers changed from: private */
        public long k = 0;

        /* access modifiers changed from: protected */
        public a a(int i2) {
            this.f5592a = i2;
            return this;
        }

        /* access modifiers changed from: protected */
        public a a(long j2) {
            this.k = j2;
            return this;
        }

        public a a(InputStream inputStream) {
            this.e = inputStream;
            return this;
        }

        public a a(Exception exc) {
            this.f5593b = exc;
            return this;
        }

        /* access modifiers changed from: protected */
        public a a(String str) {
            this.h = str;
            return this;
        }

        /* access modifiers changed from: protected */
        public a a(Map<String, List<String>> map) {
            this.c = map;
            return this;
        }

        /* access modifiers changed from: protected */
        public a a(boolean z) {
            this.d = z;
            return this;
        }

        public g a() {
            return new g(this);
        }

        /* access modifiers changed from: protected */
        public a b(int i2) {
            this.g = i2;
            return this;
        }

        public a b(InputStream inputStream) {
            this.f = inputStream;
            return this;
        }

        /* access modifiers changed from: protected */
        public a b(String str) {
            this.j = str;
            return this;
        }

        /* access modifiers changed from: protected */
        public a c(int i2) {
            this.i = i2 | this.i;
            return this;
        }
    }

    private g(a aVar) {
        this.f5591b = aVar.f5593b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        this.f5590a = aVar.f5592a;
    }

    public Exception a() {
        return this.f5591b;
    }

    public Map<String, List<String>> b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public int d() {
        return this.g;
    }

    public InputStream e() {
        return this.e;
    }

    public InputStream f() {
        return this.f;
    }

    public String g() {
        return this.h;
    }

    public int h() {
        return this.i;
    }

    public boolean i() {
        return this.f5591b == null && this.e != null && this.f == null;
    }

    /* access modifiers changed from: protected */
    public String j() {
        return this.j;
    }

    /* access modifiers changed from: protected */
    public long k() {
        return this.k;
    }

    public String l() {
        return this.j;
    }

    public void m() {
        InputStream inputStream = this.e;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    public void n() {
        InputStream inputStream = this.f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    public a o() {
        return new a().a(this.f5590a).a(this.f5591b).a(this.c).a(this.d).b(this.g).a(this.e).b(this.f).a(this.h).c(this.i).b(this.j).a(this.k);
    }
}
