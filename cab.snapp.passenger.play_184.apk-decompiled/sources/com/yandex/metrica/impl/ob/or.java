package com.yandex.metrica.impl.ob;

public class or<T> implements os<T> {

    /* renamed from: a  reason: collision with root package name */
    private final os<T> f6487a;

    /* renamed from: b  reason: collision with root package name */
    private final T f6488b;

    public or(os<T> osVar, T t) {
        this.f6487a = osVar;
        this.f6488b = t;
    }

    public T a(T t) {
        return t != this.f6487a.a(t) ? this.f6488b : t;
    }
}
