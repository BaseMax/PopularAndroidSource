package io.reactivex.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.concurrent.atomic.AtomicInteger;

public final class q<T> extends AtomicInteger implements List<T>, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<T> f8647a;

    public q() {
        this.f8647a = new ArrayList<>();
    }

    public q(int i) {
        this.f8647a = new ArrayList<>(i);
    }

    public final int size() {
        return get();
    }

    public final boolean isEmpty() {
        return get() == 0;
    }

    public final boolean contains(Object obj) {
        return this.f8647a.contains(obj);
    }

    public final Iterator<T> iterator() {
        return this.f8647a.iterator();
    }

    public final Object[] toArray() {
        return this.f8647a.toArray();
    }

    public final <E> E[] toArray(E[] eArr) {
        return this.f8647a.toArray(eArr);
    }

    public final boolean add(T t) {
        boolean add = this.f8647a.add(t);
        lazySet(this.f8647a.size());
        return add;
    }

    public final boolean remove(Object obj) {
        boolean remove = this.f8647a.remove(obj);
        lazySet(this.f8647a.size());
        return remove;
    }

    public final boolean containsAll(Collection<?> collection) {
        return this.f8647a.containsAll(collection);
    }

    public final boolean addAll(Collection<? extends T> collection) {
        boolean addAll = this.f8647a.addAll(collection);
        lazySet(this.f8647a.size());
        return addAll;
    }

    public final boolean addAll(int i, Collection<? extends T> collection) {
        boolean addAll = this.f8647a.addAll(i, collection);
        lazySet(this.f8647a.size());
        return addAll;
    }

    public final boolean removeAll(Collection<?> collection) {
        boolean removeAll = this.f8647a.removeAll(collection);
        lazySet(this.f8647a.size());
        return removeAll;
    }

    public final boolean retainAll(Collection<?> collection) {
        boolean retainAll = this.f8647a.retainAll(collection);
        lazySet(this.f8647a.size());
        return retainAll;
    }

    public final void clear() {
        this.f8647a.clear();
        lazySet(0);
    }

    public final T get(int i) {
        return this.f8647a.get(i);
    }

    public final T set(int i, T t) {
        return this.f8647a.set(i, t);
    }

    public final void add(int i, T t) {
        this.f8647a.add(i, t);
        lazySet(this.f8647a.size());
    }

    public final T remove(int i) {
        T remove = this.f8647a.remove(i);
        lazySet(this.f8647a.size());
        return remove;
    }

    public final int indexOf(Object obj) {
        return this.f8647a.indexOf(obj);
    }

    public final int lastIndexOf(Object obj) {
        return this.f8647a.lastIndexOf(obj);
    }

    public final ListIterator<T> listIterator() {
        return this.f8647a.listIterator();
    }

    public final ListIterator<T> listIterator(int i) {
        return this.f8647a.listIterator(i);
    }

    public final List<T> subList(int i, int i2) {
        return this.f8647a.subList(i, i2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof q) {
            return this.f8647a.equals(((q) obj).f8647a);
        }
        return this.f8647a.equals(obj);
    }

    public final int hashCode() {
        return this.f8647a.hashCode();
    }

    public final String toString() {
        return this.f8647a.toString();
    }
}
