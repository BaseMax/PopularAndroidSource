package com.webengage.sdk.android.actions.rules.a;

public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private String f5444a;

    /* renamed from: b  reason: collision with root package name */
    int f5445b;
    boolean c;

    public g(String str, int i) {
        this(str, i, true);
    }

    public g(String str, int i, boolean z) {
        this.f5444a = null;
        this.f5445b = 0;
        this.c = true;
        this.f5444a = str;
        this.f5445b = i;
        this.c = z;
    }

    public abstract Object a(Object obj, Object obj2);

    public String a() {
        return this.f5444a;
    }

    public int b() {
        return this.f5445b;
    }

    public boolean c() {
        return this.c;
    }
}
