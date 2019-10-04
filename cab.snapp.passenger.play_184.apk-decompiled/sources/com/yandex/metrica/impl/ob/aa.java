package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.bb;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class aa<CU extends bb> implements ag<CU> {

    /* renamed from: a  reason: collision with root package name */
    private final List<CU> f5849a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f5850b;

    public void a(t tVar) {
    }

    public void a(CU cu) {
        this.f5849a.add(cu);
    }

    public void b(CU cu) {
        this.f5849a.remove(cu);
        if (this.f5849a.isEmpty()) {
            this.f5850b = true;
        }
    }

    public List<CU> a() {
        return this.f5849a;
    }

    public boolean b() {
        return this.f5850b;
    }
}
