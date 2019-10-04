package com.koushikdutta.async;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class a<E> extends AbstractCollection<E> implements t<E>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f4441a = (!a.class.desiredAssertionStatus());
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public transient Object[] f4442b;
    /* access modifiers changed from: private */
    public transient int c;
    /* access modifiers changed from: private */
    public transient int d;

    /* renamed from: com.koushikdutta.async.a$a  reason: collision with other inner class name */
    class C0083a implements Iterator<E> {

        /* renamed from: b  reason: collision with root package name */
        private int f4444b;
        private int c;
        private int d;

        private C0083a() {
            this.f4444b = a.this.c;
            this.c = a.this.d;
            this.d = -1;
        }

        /* synthetic */ C0083a(a aVar, byte b2) {
            this();
        }

        public final boolean hasNext() {
            return this.f4444b != this.c;
        }

        public final E next() {
            if (this.f4444b != this.c) {
                E e = a.this.f4442b[this.f4444b];
                if (a.this.d != this.c || e == null) {
                    throw new ConcurrentModificationException();
                }
                int i = this.f4444b;
                this.d = i;
                this.f4444b = (i + 1) & (a.this.f4442b.length - 1);
                return e;
            }
            throw new NoSuchElementException();
        }

        public final void remove() {
            int i = this.d;
            if (i >= 0) {
                if (a.this.b(i)) {
                    this.f4444b = (this.f4444b - 1) & (a.this.f4442b.length - 1);
                    this.c = a.this.d;
                }
                this.d = -1;
                return;
            }
            throw new IllegalStateException();
        }
    }

    class b implements Iterator<E> {

        /* renamed from: b  reason: collision with root package name */
        private int f4446b;
        private int c;
        private int d;

        private b() {
            this.f4446b = a.this.d;
            this.c = a.this.c;
            this.d = -1;
        }

        /* synthetic */ b(a aVar, byte b2) {
            this();
        }

        public final boolean hasNext() {
            return this.f4446b != this.c;
        }

        public final E next() {
            int i = this.f4446b;
            if (i != this.c) {
                this.f4446b = (i - 1) & (a.this.f4442b.length - 1);
                E e = a.this.f4442b[this.f4446b];
                if (a.this.c != this.c || e == null) {
                    throw new ConcurrentModificationException();
                }
                this.d = this.f4446b;
                return e;
            }
            throw new NoSuchElementException();
        }

        public final void remove() {
            int i = this.d;
            if (i >= 0) {
                if (!a.this.b(i)) {
                    this.f4446b = (this.f4446b + 1) & (a.this.f4442b.length - 1);
                    this.c = a.this.c;
                }
                this.d = -1;
                return;
            }
            throw new IllegalStateException();
        }
    }

    private void a(int i) {
        int i2 = 8;
        if (i >= 8) {
            int i3 = i | (i >>> 1);
            int i4 = i3 | (i3 >>> 2);
            int i5 = i4 | (i4 >>> 4);
            int i6 = i5 | (i5 >>> 8);
            i2 = (i6 | (i6 >>> 16)) + 1;
            if (i2 < 0) {
                i2 >>>= 1;
            }
        }
        this.f4442b = new Object[i2];
    }

    private void a() {
        if (f4441a || this.c == this.d) {
            int i = this.c;
            Object[] objArr = this.f4442b;
            int length = objArr.length;
            int i2 = length - i;
            int i3 = length << 1;
            if (i3 >= 0) {
                Object[] objArr2 = new Object[i3];
                System.arraycopy(objArr, i, objArr2, 0, i2);
                System.arraycopy(this.f4442b, 0, objArr2, i2, i);
                this.f4442b = objArr2;
                this.c = 0;
                this.d = length;
                return;
            }
            throw new IllegalStateException("Sorry, deque too big");
        }
        throw new AssertionError();
    }

    private <T> T[] a(T[] tArr) {
        int i = this.c;
        int i2 = this.d;
        if (i < i2) {
            System.arraycopy(this.f4442b, i, tArr, 0, size());
        } else if (i > i2) {
            Object[] objArr = this.f4442b;
            int length = objArr.length - i;
            System.arraycopy(objArr, i, tArr, 0, length);
            System.arraycopy(this.f4442b, 0, tArr, length, this.d);
        }
        return tArr;
    }

    public a() {
        this.f4442b = new Object[16];
    }

    public a(int i) {
        a(i);
    }

    public a(Collection<? extends E> collection) {
        a(collection.size());
        addAll(collection);
    }

    public void addFirst(E e) {
        if (e != null) {
            Object[] objArr = this.f4442b;
            int length = (this.c - 1) & (objArr.length - 1);
            this.c = length;
            objArr[length] = e;
            if (this.c == this.d) {
                a();
                return;
            }
            return;
        }
        throw new NullPointerException("e == null");
    }

    public void addLast(E e) {
        if (e != null) {
            Object[] objArr = this.f4442b;
            int i = this.d;
            objArr[i] = e;
            int length = (objArr.length - 1) & (i + 1);
            this.d = length;
            if (length == this.c) {
                a();
                return;
            }
            return;
        }
        throw new NullPointerException("e == null");
    }

    public boolean offerFirst(E e) {
        addFirst(e);
        return true;
    }

    public boolean offerLast(E e) {
        addLast(e);
        return true;
    }

    public E removeFirst() {
        E pollFirst = pollFirst();
        if (pollFirst != null) {
            return pollFirst;
        }
        throw new NoSuchElementException();
    }

    public E removeLast() {
        E pollLast = pollLast();
        if (pollLast != null) {
            return pollLast;
        }
        throw new NoSuchElementException();
    }

    public E pollFirst() {
        int i = this.c;
        E[] eArr = this.f4442b;
        E e = eArr[i];
        if (e == null) {
            return null;
        }
        eArr[i] = null;
        this.c = (i + 1) & (eArr.length - 1);
        return e;
    }

    public E pollLast() {
        E[] eArr = this.f4442b;
        int length = (this.d - 1) & (eArr.length - 1);
        E e = eArr[length];
        if (e == null) {
            return null;
        }
        eArr[length] = null;
        this.d = length;
        return e;
    }

    public E getFirst() {
        E e = this.f4442b[this.c];
        if (e != null) {
            return e;
        }
        throw new NoSuchElementException();
    }

    public E getLast() {
        E[] eArr = this.f4442b;
        E e = eArr[(this.d - 1) & (eArr.length - 1)];
        if (e != null) {
            return e;
        }
        throw new NoSuchElementException();
    }

    public E peekFirst() {
        return this.f4442b[this.c];
    }

    public E peekLast() {
        E[] eArr = this.f4442b;
        return eArr[(this.d - 1) & (eArr.length - 1)];
    }

    public boolean removeFirstOccurrence(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f4442b.length - 1;
        int i = this.c;
        while (true) {
            Object obj2 = this.f4442b[i];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                b(i);
                return true;
            }
            i = (i + 1) & length;
        }
    }

    public boolean removeLastOccurrence(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f4442b.length - 1;
        int i = this.d - 1;
        while (true) {
            int i2 = i & length;
            Object obj2 = this.f4442b[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                b(i2);
                return true;
            }
            i = i2 - 1;
        }
    }

    public boolean add(E e) {
        addLast(e);
        return true;
    }

    public boolean offer(E e) {
        return offerLast(e);
    }

    public E remove() {
        return removeFirst();
    }

    public E poll() {
        return pollFirst();
    }

    public E element() {
        return getFirst();
    }

    public E peek() {
        return peekFirst();
    }

    public void push(E e) {
        addFirst(e);
    }

    public E pop() {
        return removeFirst();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0021, code lost:
        if (r3.f4442b[r0] == null) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0032, code lost:
        if (r2[(r2.length - 1) & (r1 - 1)] != null) goto L_0x003b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b() {
        /*
            r3 = this;
            boolean r0 = f4441a
            if (r0 != 0) goto L_0x0013
            java.lang.Object[] r0 = r3.f4442b
            int r1 = r3.d
            r0 = r0[r1]
            if (r0 != 0) goto L_0x000d
            goto L_0x0013
        L_0x000d:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L_0x0013:
            boolean r0 = f4441a
            if (r0 != 0) goto L_0x003b
            int r0 = r3.c
            int r1 = r3.d
            if (r0 != r1) goto L_0x0024
            java.lang.Object[] r1 = r3.f4442b
            r0 = r1[r0]
            if (r0 != 0) goto L_0x0035
            goto L_0x003b
        L_0x0024:
            java.lang.Object[] r2 = r3.f4442b
            r0 = r2[r0]
            if (r0 == 0) goto L_0x0035
            int r1 = r1 + -1
            int r0 = r2.length
            int r0 = r0 + -1
            r0 = r0 & r1
            r0 = r2[r0]
            if (r0 == 0) goto L_0x0035
            goto L_0x003b
        L_0x0035:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L_0x003b:
            boolean r0 = f4441a
            if (r0 != 0) goto L_0x0054
            java.lang.Object[] r0 = r3.f4442b
            int r1 = r3.c
            int r1 = r1 + -1
            int r2 = r0.length
            int r2 = r2 + -1
            r1 = r1 & r2
            r0 = r0[r1]
            if (r0 != 0) goto L_0x004e
            goto L_0x0054
        L_0x004e:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L_0x0054:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.a.b():void");
    }

    /* access modifiers changed from: private */
    public boolean b(int i) {
        b();
        Object[] objArr = this.f4442b;
        int length = objArr.length - 1;
        int i2 = this.c;
        int i3 = this.d;
        int i4 = (i - i2) & length;
        int i5 = (i3 - i) & length;
        if (i4 >= ((i3 - i2) & length)) {
            throw new ConcurrentModificationException();
        } else if (i4 < i5) {
            if (i2 <= i) {
                System.arraycopy(objArr, i2, objArr, i2 + 1, i4);
            } else {
                System.arraycopy(objArr, 0, objArr, 1, i);
                objArr[0] = objArr[length];
                System.arraycopy(objArr, i2, objArr, i2 + 1, length - i2);
            }
            objArr[i2] = null;
            this.c = (i2 + 1) & length;
            return false;
        } else {
            if (i < i3) {
                System.arraycopy(objArr, i + 1, objArr, i, i5);
                this.d = i3 - 1;
            } else {
                System.arraycopy(objArr, i + 1, objArr, i, length - i);
                objArr[length] = objArr[0];
                System.arraycopy(objArr, 1, objArr, 0, i3);
                this.d = (i3 - 1) & length;
            }
            return true;
        }
    }

    public int size() {
        return (this.d - this.c) & (this.f4442b.length - 1);
    }

    public boolean isEmpty() {
        return this.c == this.d;
    }

    public Iterator<E> iterator() {
        return new C0083a(this, (byte) 0);
    }

    public Iterator<E> descendingIterator() {
        return new b(this, (byte) 0);
    }

    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.f4442b.length - 1;
        int i = this.c;
        while (true) {
            Object obj2 = this.f4442b[i];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                return true;
            }
            i = (i + 1) & length;
        }
    }

    public boolean remove(Object obj) {
        return removeFirstOccurrence(obj);
    }

    public void clear() {
        int i = this.c;
        int i2 = this.d;
        if (i != i2) {
            this.d = 0;
            this.c = 0;
            int length = this.f4442b.length - 1;
            do {
                this.f4442b[i] = null;
                i = (i + 1) & length;
            } while (i != i2);
        }
    }

    public Object[] toArray() {
        return a((T[]) new Object[size()]);
    }

    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
        }
        a(tArr);
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    public a<E> clone() {
        try {
            a<E> aVar = (a) super.clone();
            System.arraycopy(this.f4442b, 0, aVar.f4442b, 0, this.f4442b.length);
            return aVar;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
