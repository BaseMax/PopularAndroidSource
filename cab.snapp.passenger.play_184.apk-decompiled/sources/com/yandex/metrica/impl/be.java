package com.yandex.metrica.impl;

import com.yandex.metrica.IReporter;
import com.yandex.metrica.impl.j;

public class be extends j {

    /* renamed from: a  reason: collision with root package name */
    private final IReporter f5749a;

    be(IReporter iReporter, j.a aVar) {
        super(aVar);
        this.f5749a = iReporter;
    }

    /* access modifiers changed from: package-private */
    public void b(Throwable th) {
        this.f5749a.reportUnhandledException(th);
    }
}
