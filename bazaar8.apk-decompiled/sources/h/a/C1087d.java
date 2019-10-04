package h.a;

import h.f.b.f;
import h.f.b.j;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* renamed from: h.a.d  reason: case insensitive filesystem */
/* compiled from: AbstractList.kt */
public abstract class C1087d<E> extends C1084a<E> implements List<E>, h.f.b.a.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f14518a = new a(null);

    /* renamed from: h.a.d$a */
    /* compiled from: AbstractList.kt */
    public static final class a {
        public a() {
        }

        public final void a(int i2, int i3) {
            if (i2 < 0 || i2 >= i3) {
                throw new IndexOutOfBoundsException("index: " + i2 + ", size: " + i3);
            }
        }

        public final void b(int i2, int i3) {
            if (i2 < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("index: " + i2 + ", size: " + i3);
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final void a(int i2, int i3, int i4) {
            if (i2 < 0 || i3 > i4) {
                throw new IndexOutOfBoundsException("fromIndex: " + i2 + ", toIndex: " + i3 + ", size: " + i4);
            } else if (i2 > i3) {
                throw new IllegalArgumentException("fromIndex: " + i2 + " > toIndex: " + i3);
            }
        }

        public final int a(Collection<?> collection) {
            j.b(collection, "c");
            Iterator<?> it = collection.iterator();
            int i2 = 1;
            while (it.hasNext()) {
                Object next = it.next();
                i2 = (i2 * 31) + (next != null ? next.hashCode() : 0);
            }
            return i2;
        }

        public final boolean a(Collection<?> collection, Collection<?> collection2) {
            j.b(collection, "c");
            j.b(collection2, "other");
            if (collection.size() != collection2.size()) {
                return false;
            }
            Iterator<?> it = collection2.iterator();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!j.a((Object) it2.next(), (Object) it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: h.a.d$b */
    /* compiled from: AbstractList.kt */
    private class b implements Iterator<E>, h.f.b.a.a {

        /* renamed from: a  reason: collision with root package name */
        public int f14519a;

        public b() {
        }

        public final int a() {
            return this.f14519a;
        }

        public boolean hasNext() {
            return this.f14519a < C1087d.this.size();
        }

        public E next() {
            if (hasNext()) {
                C1087d dVar = C1087d.this;
                int i2 = this.f14519a;
                this.f14519a = i2 + 1;
                return dVar.get(i2);
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final void a(int i2) {
            this.f14519a = i2;
        }
    }

    /* renamed from: h.a.d$c */
    /* compiled from: AbstractList.kt */
    private class c extends C1087d<E>.defpackage.b implements ListIterator<E>, h.f.b.a.a {
        public c(int i2) {
            super();
            C1087d.f14518a.b(i2, C1087d.this.size());
            a(i2);
        }

        public void add(E e2) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public boolean hasPrevious() {
            return a() > 0;
        }

        public int nextIndex() {
            return a();
        }

        public E previous() {
            if (hasPrevious()) {
                C1087d dVar = C1087d.this;
                a(a() - 1);
                return dVar.get(a());
            }
            throw new NoSuchElementException();
        }

        public int previousIndex() {
            return a() - 1;
        }

        public void set(E e2) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* renamed from: h.a.d$d  reason: collision with other inner class name */
    /* compiled from: AbstractList.kt */
    private static final class C0142d<E> extends C1087d<E> implements RandomAccess {

        /* renamed from: b  reason: collision with root package name */
        public int f14522b;

        /* renamed from: c  reason: collision with root package name */
        public final C1087d<E> f14523c;

        /* renamed from: d  reason: collision with root package name */
        public final int f14524d;

        public C0142d(C1087d<? extends E> dVar, int i2, int i3) {
            j.b(dVar, "list");
            this.f14523c = dVar;
            this.f14524d = i2;
            C1087d.f14518a.a(this.f14524d, i3, this.f14523c.size());
            this.f14522b = i3 - this.f14524d;
        }

        public int a() {
            return this.f14522b;
        }

        public E get(int i2) {
            C1087d.f14518a.a(i2, this.f14522b);
            return this.f14523c.get(this.f14524d + i2);
        }
    }

    public void add(int i2, E e2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean addAll(int i2, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        return f14518a.a((Collection<?>) this, (Collection<?>) (Collection) obj);
    }

    public abstract E get(int i2);

    public int hashCode() {
        return f14518a.a(this);
    }

    public int indexOf(Object obj) {
        int i2 = 0;
        for (Object a2 : this) {
            if (j.a(a2, obj)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public Iterator<E> iterator() {
        return new b();
    }

    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (j.a(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public ListIterator<E> listIterator() {
        return new c(0);
    }

    public E remove(int i2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public E set(int i2, E e2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public List<E> subList(int i2, int i3) {
        return new C0142d(this, i2, i3);
    }

    public ListIterator<E> listIterator(int i2) {
        return new c(i2);
    }
}
