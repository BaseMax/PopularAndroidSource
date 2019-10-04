package com.webengage.sdk.android.actions.rules.a;

import java.util.List;

public class d {

    /* renamed from: a  reason: collision with root package name */
    private String f5438a = null;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f5439b = null;

    public d(String str) {
        this.f5438a = str;
        this.f5439b = c.a().f(this.f5438a);
    }

    public d(List<String> list) {
        this.f5439b = list;
    }

    public Object a() {
        if (this.f5439b == null) {
            this.f5439b = c.a().f(this.f5438a);
        }
        try {
            return c.a().a(this.f5439b);
        } catch (Exception unused) {
            return null;
        }
    }

    public String toString() {
        return this.f5438a;
    }
}
