package com.farsitel.bazaar.data.model;

import c.c.a.e.g.e;
import h.f.a.a;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: ObservableList.kt */
public final class ObservableList<E> extends ArrayList<E> {
    public final List<e> observableListeners = new ArrayList();
    public final ReentrantLock observableLock = new ReentrantLock(true);

    public boolean add(E e2) {
        return ((Boolean) a(new ObservableList$add$1(this, e2))).booleanValue();
    }

    public boolean addAll(Collection<? extends E> collection) {
        j.b(collection, "elements");
        return ((Boolean) a(new ObservableList$addAll$1(this, collection))).booleanValue();
    }

    public final /* bridge */ E remove(int i2) {
        return a(i2);
    }

    public boolean removeAll(Collection<? extends Object> collection) {
        j.b(collection, "elements");
        return ((Boolean) a(new ObservableList$removeAll$1(this, collection))).booleanValue();
    }

    public void removeRange(int i2, int i3) {
        a(new ObservableList$removeRange$1(this, i2, i3));
    }

    public final /* bridge */ int size() {
        return a();
    }

    public void add(int i2, E e2) {
        a(new ObservableList$add$2(this, i2, e2));
    }

    public boolean addAll(int i2, Collection<? extends E> collection) {
        j.b(collection, "elements");
        return ((Boolean) a(new ObservableList$addAll$2(this, i2, collection))).booleanValue();
    }

    public boolean remove(Object obj) {
        return ((Boolean) a(new ObservableList$remove$1(this, obj))).booleanValue();
    }

    public final void b(a<h> aVar) {
        synchronized (this.observableLock) {
            aVar.invoke();
        }
    }

    public /* bridge */ int a() {
        return super.size();
    }

    public E a(int i2) {
        return a(new ObservableList$removeAt$1(this, i2));
    }

    public final void a(e eVar) {
        j.b(eVar, "observableListener");
        b(new ObservableList$addObservableListener$1(this, eVar));
    }

    public final <T> T a(a<? extends T> aVar) {
        T invoke = aVar.invoke();
        b(new ObservableList$callObservableChange$1(this));
        return invoke;
    }
}
