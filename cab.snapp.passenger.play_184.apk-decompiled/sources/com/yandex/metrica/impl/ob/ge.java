package com.yandex.metrica.impl.ob;

public abstract class ge {

    /* renamed from: a  reason: collision with root package name */
    private final fr f6057a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6058b;

    static {
        ge.class.getSimpleName();
    }

    public ge(fr frVar) {
        this(frVar, null);
    }

    public ge(fr frVar, String str) {
        this.f6057a = frVar;
        this.f6058b = str;
    }

    public String h() {
        return this.f6058b;
    }

    /* access modifiers changed from: protected */
    public je o(String str) {
        return new je(str, h());
    }

    /* access modifiers changed from: protected */
    public <T extends ge> T b(String str, String str2) {
        synchronized (this) {
            this.f6057a.b(str, str2);
        }
        return this;
    }

    public <T extends ge> T a(String str, long j) {
        synchronized (this) {
            this.f6057a.b(str, j);
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public <T extends ge> T a(String str, int i) {
        synchronized (this) {
            this.f6057a.b(str, i);
        }
        return this;
    }

    public <T extends ge> T a(String str, boolean z) {
        synchronized (this) {
            this.f6057a.b(str, z);
        }
        return this;
    }

    public <T extends ge> T p(String str) {
        synchronized (this) {
            this.f6057a.a(str);
        }
        return this;
    }

    public void i() {
        synchronized (this) {
            this.f6057a.b();
        }
    }

    public long b(String str, long j) {
        return this.f6057a.a(str, j);
    }

    /* access modifiers changed from: package-private */
    public int b(String str, int i) {
        return this.f6057a.a(str, i);
    }

    /* access modifiers changed from: package-private */
    public String q(String str) {
        return this.f6057a.a(str, (String) null);
    }

    /* access modifiers changed from: package-private */
    public String c(String str, String str2) {
        return this.f6057a.a(str, str2);
    }

    public boolean b(String str, boolean z) {
        return this.f6057a.a(str, z);
    }

    public boolean r(String str) {
        return this.f6057a.b(str);
    }
}
