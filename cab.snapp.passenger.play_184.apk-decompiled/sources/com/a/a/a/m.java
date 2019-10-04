package com.a.a.a;

public final class m extends d<m> {

    /* renamed from: a  reason: collision with root package name */
    final String f1693a;

    public m(String str) {
        if (str != null) {
            this.f1693a = this.f1670b.limitStringLength(str);
            return;
        }
        throw new NullPointerException("eventName must not be null");
    }

    public final String toString() {
        return "{eventName:\"" + this.f1693a + '\"' + ", customAttributes:" + this.c + "}";
    }
}
