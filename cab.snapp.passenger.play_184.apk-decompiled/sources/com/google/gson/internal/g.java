package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public final class g<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean f = (!g.class.desiredAssertionStatus());
    private static final Comparator<Comparable> g = new Comparator<Comparable>() {
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    Comparator<? super K> f4203a;

    /* renamed from: b  reason: collision with root package name */
    d<K, V> f4204b;
    int c;
    int d;
    final d<K, V> e;
    private g<K, V>.a h;
    private g<K, V>.b i;

    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        public final int size() {
            return g.this.c;
        }

        public final Iterator<Map.Entry<K, V>> iterator() {
            return new g<K, V>.c<Map.Entry<K, V>>() {
                {
                    g gVar = g.this;
                }

                public final Map.Entry<K, V> next() {
                    return a();
                }
            };
        }

        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && g.this.a((Map.Entry<?, ?>) (Map.Entry) obj) != null;
        }

        public final boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            d a2 = g.this.a((Map.Entry<?, ?>) (Map.Entry) obj);
            if (a2 == null) {
                return false;
            }
            g.this.a(a2, true);
            return true;
        }

        public final void clear() {
            g.this.clear();
        }
    }

    final class b extends AbstractSet<K> {
        b() {
        }

        public final int size() {
            return g.this.c;
        }

        public final Iterator<K> iterator() {
            return new g<K, V>.c<K>() {
                {
                    g gVar = g.this;
                }

                public final K next() {
                    return a().f;
                }
            };
        }

        public final boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        public final boolean remove(Object obj) {
            return g.this.a(obj) != null;
        }

        public final void clear() {
            g.this.clear();
        }
    }

    abstract class c<T> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f4209b = g.this.e.d;
        d<K, V> c = null;
        int d = g.this.d;

        c() {
        }

        public final boolean hasNext() {
            return this.f4209b != g.this.e;
        }

        /* access modifiers changed from: package-private */
        public final d<K, V> a() {
            d<K, V> dVar = this.f4209b;
            if (dVar == g.this.e) {
                throw new NoSuchElementException();
            } else if (g.this.d == this.d) {
                this.f4209b = dVar.d;
                this.c = dVar;
                return dVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        public final void remove() {
            d<K, V> dVar = this.c;
            if (dVar != null) {
                g.this.a(dVar, true);
                this.c = null;
                this.d = g.this.d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    static final class d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        d<K, V> f4210a;

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f4211b;
        d<K, V> c;
        d<K, V> d;
        d<K, V> e;
        final K f;
        V g;
        int h;

        d() {
            this.f = null;
            this.e = this;
            this.d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.f4210a = dVar;
            this.f = k;
            this.h = 1;
            this.d = dVar2;
            this.e = dVar3;
            dVar3.d = this;
            dVar2.e = this;
        }

        public final K getKey() {
            return this.f;
        }

        public final V getValue() {
            return this.g;
        }

        public final V setValue(V v) {
            V v2 = this.g;
            this.g = v;
            return v2;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k = this.f;
                if (k != null ? k.equals(entry.getKey()) : entry.getKey() == null) {
                    V v = this.g;
                    if (v != null ? v.equals(entry.getValue()) : entry.getValue() == null) {
                        return true;
                    }
                }
            }
            return false;
        }

        public final int hashCode() {
            K k = this.f;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.g;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        public final String toString() {
            return this.f + "=" + this.g;
        }

        public final d<K, V> first() {
            d<K, V> dVar = this;
            for (d<K, V> dVar2 = this.f4211b; dVar2 != null; dVar2 = dVar2.f4211b) {
                dVar = dVar2;
            }
            return dVar;
        }

        public final d<K, V> last() {
            d<K, V> dVar = this;
            for (d<K, V> dVar2 = this.c; dVar2 != null; dVar2 = dVar2.c) {
                dVar = dVar2;
            }
            return dVar;
        }
    }

    public g() {
        this(g);
    }

    public g(Comparator<? super K> comparator) {
        this.c = 0;
        this.d = 0;
        this.e = new d<>();
        this.f4203a = comparator == null ? g : comparator;
    }

    public final int size() {
        return this.c;
    }

    public final V get(Object obj) {
        d b2 = b(obj);
        if (b2 != null) {
            return b2.g;
        }
        return null;
    }

    public final boolean containsKey(Object obj) {
        return b(obj) != null;
    }

    public final V put(K k, V v) {
        if (k != null) {
            d a2 = a(k, true);
            V v2 = a2.g;
            a2.g = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    public final void clear() {
        this.f4204b = null;
        this.c = 0;
        this.d++;
        d<K, V> dVar = this.e;
        dVar.e = dVar;
        dVar.d = dVar;
    }

    public final V remove(Object obj) {
        d a2 = a(obj);
        if (a2 != null) {
            return a2.g;
        }
        return null;
    }

    private d<K, V> a(K k, boolean z) {
        int i2;
        d<K, V> dVar;
        d<K, V> dVar2;
        Comparator<? super K> comparator = this.f4203a;
        d<K, V> dVar3 = this.f4204b;
        if (dVar3 != null) {
            Comparable comparable = comparator == g ? (Comparable) k : null;
            while (true) {
                if (comparable != null) {
                    i2 = comparable.compareTo(dVar3.f);
                } else {
                    i2 = comparator.compare(k, dVar3.f);
                }
                if (i2 != 0) {
                    if (i2 < 0) {
                        dVar2 = dVar3.f4211b;
                    } else {
                        dVar2 = dVar3.c;
                    }
                    if (dVar2 == null) {
                        break;
                    }
                    dVar3 = dVar2;
                } else {
                    return dVar3;
                }
            }
        } else {
            i2 = 0;
        }
        if (!z) {
            return null;
        }
        d<K, V> dVar4 = this.e;
        if (dVar3 != null) {
            dVar = new d<>(dVar3, k, dVar4, dVar4.e);
            if (i2 < 0) {
                dVar3.f4211b = dVar;
            } else {
                dVar3.c = dVar;
            }
            b(dVar3, true);
        } else if (comparator != g || (k instanceof Comparable)) {
            dVar = new d<>(dVar3, k, dVar4, dVar4.e);
            this.f4204b = dVar;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.c++;
        this.d++;
        return dVar;
    }

    private d<K, V> b(Object obj) {
        if (obj != null) {
            try {
                return a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0020, code lost:
        if ((r3 == r5 || (r3 != null && r3.equals(r5))) != false) goto L_0x0024;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.gson.internal.g.d<K, V> a(java.util.Map.Entry<?, ?> r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r5.getKey()
            com.google.gson.internal.g$d r0 = r4.b((java.lang.Object) r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x0023
            V r3 = r0.g
            java.lang.Object r5 = r5.getValue()
            if (r3 == r5) goto L_0x001f
            if (r3 == 0) goto L_0x001d
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r5 = 0
            goto L_0x0020
        L_0x001f:
            r5 = 1
        L_0x0020:
            if (r5 == 0) goto L_0x0023
            goto L_0x0024
        L_0x0023:
            r1 = 0
        L_0x0024:
            if (r1 == 0) goto L_0x0027
            return r0
        L_0x0027:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.g.a(java.util.Map$Entry):com.google.gson.internal.g$d");
    }

    /* access modifiers changed from: package-private */
    public final void a(d<K, V> dVar, boolean z) {
        int i2;
        if (z) {
            dVar.e.d = dVar.d;
            dVar.d.e = dVar.e;
        }
        d<K, V> dVar2 = dVar.f4211b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar.f4210a;
        int i3 = 0;
        if (dVar2 == null || dVar3 == null) {
            if (dVar2 != null) {
                a(dVar, dVar2);
                dVar.f4211b = null;
            } else if (dVar3 != null) {
                a(dVar, dVar3);
                dVar.c = null;
            } else {
                a(dVar, (d<K, V>) null);
            }
            b(dVar4, false);
            this.c--;
            this.d++;
            return;
        }
        d<K, V> last = dVar2.h > dVar3.h ? dVar2.last() : dVar3.first();
        a(last, false);
        d<K, V> dVar5 = dVar.f4211b;
        if (dVar5 != null) {
            i2 = dVar5.h;
            last.f4211b = dVar5;
            dVar5.f4210a = last;
            dVar.f4211b = null;
        } else {
            i2 = 0;
        }
        d<K, V> dVar6 = dVar.c;
        if (dVar6 != null) {
            i3 = dVar6.h;
            last.c = dVar6;
            dVar6.f4210a = last;
            dVar.c = null;
        }
        last.h = Math.max(i2, i3) + 1;
        a(dVar, last);
    }

    /* access modifiers changed from: package-private */
    public final d<K, V> a(Object obj) {
        d<K, V> b2 = b(obj);
        if (b2 != null) {
            a(b2, true);
        }
        return b2;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f4210a;
        dVar.f4210a = null;
        if (dVar2 != null) {
            dVar2.f4210a = dVar3;
        }
        if (dVar3 == null) {
            this.f4204b = dVar2;
        } else if (dVar3.f4211b == dVar) {
            dVar3.f4211b = dVar2;
        } else if (f || dVar3.c == dVar) {
            dVar3.c = dVar2;
        } else {
            throw new AssertionError();
        }
    }

    private void b(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f4211b;
            d<K, V> dVar3 = dVar.c;
            int i2 = 0;
            int i3 = dVar2 != null ? dVar2.h : 0;
            int i4 = dVar3 != null ? dVar3.h : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                d<K, V> dVar4 = dVar3.f4211b;
                d<K, V> dVar5 = dVar3.c;
                int i6 = dVar5 != null ? dVar5.h : 0;
                if (dVar4 != null) {
                    i2 = dVar4.h;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    a(dVar);
                } else if (f || i7 == 1) {
                    b(dVar3);
                    a(dVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    break;
                }
            } else if (i5 == 2) {
                d<K, V> dVar6 = dVar2.f4211b;
                d<K, V> dVar7 = dVar2.c;
                int i8 = dVar7 != null ? dVar7.h : 0;
                if (dVar6 != null) {
                    i2 = dVar6.h;
                }
                int i9 = i2 - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    b(dVar);
                } else if (f || i9 == -1) {
                    a(dVar2);
                    b(dVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    break;
                }
            } else if (i5 == 0) {
                dVar.h = i3 + 1;
                if (z) {
                    return;
                }
            } else if (f || i5 == -1 || i5 == 1) {
                dVar.h = Math.max(i3, i4) + 1;
                if (!z) {
                    break;
                }
            } else {
                throw new AssertionError();
            }
            dVar = dVar.f4210a;
        }
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f4211b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar3.f4211b;
        d<K, V> dVar5 = dVar3.c;
        dVar.c = dVar4;
        if (dVar4 != null) {
            dVar4.f4210a = dVar;
        }
        a(dVar, dVar3);
        dVar3.f4211b = dVar;
        dVar.f4210a = dVar3;
        int i2 = 0;
        dVar.h = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        int i3 = dVar.h;
        if (dVar5 != null) {
            i2 = dVar5.h;
        }
        dVar3.h = Math.max(i3, i2) + 1;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f4211b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar2.f4211b;
        d<K, V> dVar5 = dVar2.c;
        dVar.f4211b = dVar5;
        if (dVar5 != null) {
            dVar5.f4210a = dVar;
        }
        a(dVar, dVar2);
        dVar2.c = dVar;
        dVar.f4210a = dVar2;
        int i2 = 0;
        dVar.h = Math.max(dVar3 != null ? dVar3.h : 0, dVar5 != null ? dVar5.h : 0) + 1;
        int i3 = dVar.h;
        if (dVar4 != null) {
            i2 = dVar4.h;
        }
        dVar2.h = Math.max(i3, i2) + 1;
    }

    public final Set<Map.Entry<K, V>> entrySet() {
        g<K, V>.a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        g<K, V>.a aVar2 = new a();
        this.h = aVar2;
        return aVar2;
    }

    public final Set<K> keySet() {
        g<K, V>.b bVar = this.i;
        if (bVar != null) {
            return bVar;
        }
        g<K, V>.b bVar2 = new b();
        this.i = bVar2;
        return bVar2;
    }
}
