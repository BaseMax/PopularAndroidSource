package b.f;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* compiled from: ArraySet */
public final class d<E> implements Collection<E>, Set<E> {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f2331a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    public static final Object[] f2332b = new Object[0];

    /* renamed from: c  reason: collision with root package name */
    public static Object[] f2333c;

    /* renamed from: d  reason: collision with root package name */
    public static int f2334d;

    /* renamed from: e  reason: collision with root package name */
    public static Object[] f2335e;

    /* renamed from: f  reason: collision with root package name */
    public static int f2336f;

    /* renamed from: g  reason: collision with root package name */
    public int[] f2337g;

    /* renamed from: h  reason: collision with root package name */
    public Object[] f2338h;

    /* renamed from: i  reason: collision with root package name */
    public int f2339i;

    /* renamed from: j  reason: collision with root package name */
    public h<E, E> f2340j;

    public d() {
        this(0);
    }

    public final int a(Object obj, int i2) {
        int i3 = this.f2339i;
        if (i3 == 0) {
            return -1;
        }
        int a2 = e.a(this.f2337g, i3, i2);
        if (a2 < 0 || obj.equals(this.f2338h[a2])) {
            return a2;
        }
        int i4 = a2 + 1;
        while (i4 < i3 && this.f2337g[i4] == i2) {
            if (obj.equals(this.f2338h[i4])) {
                return i4;
            }
            i4++;
        }
        int i5 = a2 - 1;
        while (i5 >= 0 && this.f2337g[i5] == i2) {
            if (obj.equals(this.f2338h[i5])) {
                return i5;
            }
            i5--;
        }
        return i4 ^ -1;
    }

    public boolean add(E e2) {
        int i2;
        int i3;
        if (e2 == null) {
            i3 = b();
            i2 = 0;
        } else {
            int hashCode = e2.hashCode();
            i2 = hashCode;
            i3 = a(e2, hashCode);
        }
        if (i3 >= 0) {
            return false;
        }
        int i4 = i3 ^ -1;
        int i5 = this.f2339i;
        if (i5 >= this.f2337g.length) {
            int i6 = 4;
            if (i5 >= 8) {
                i6 = (i5 >> 1) + i5;
            } else if (i5 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.f2337g;
            Object[] objArr = this.f2338h;
            a(i6);
            int[] iArr2 = this.f2337g;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f2338h, 0, objArr.length);
            }
            a(iArr, objArr, this.f2339i);
        }
        int i7 = this.f2339i;
        if (i4 < i7) {
            int[] iArr3 = this.f2337g;
            int i8 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i8, i7 - i4);
            Object[] objArr2 = this.f2338h;
            System.arraycopy(objArr2, i4, objArr2, i8, this.f2339i - i4);
        }
        this.f2337g[i4] = i2;
        this.f2338h[i4] = e2;
        this.f2339i++;
        return true;
    }

    public boolean addAll(Collection<? extends E> collection) {
        e(this.f2339i + collection.size());
        boolean z = false;
        for (Object add : collection) {
            z |= add(add);
        }
        return z;
    }

    public final int b() {
        int i2 = this.f2339i;
        if (i2 == 0) {
            return -1;
        }
        int a2 = e.a(this.f2337g, i2, 0);
        if (a2 < 0 || this.f2338h[a2] == null) {
            return a2;
        }
        int i3 = a2 + 1;
        while (i3 < i2 && this.f2337g[i3] == 0) {
            if (this.f2338h[i3] == null) {
                return i3;
            }
            i3++;
        }
        int i4 = a2 - 1;
        while (i4 >= 0 && this.f2337g[i4] == 0) {
            if (this.f2338h[i4] == null) {
                return i4;
            }
            i4--;
        }
        return i3 ^ -1;
    }

    public void clear() {
        int i2 = this.f2339i;
        if (i2 != 0) {
            a(this.f2337g, this.f2338h, i2);
            this.f2337g = f2331a;
            this.f2338h = f2332b;
            this.f2339i = 0;
        }
    }

    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    public boolean containsAll(Collection<?> collection) {
        for (Object contains : collection) {
            if (!contains(contains)) {
                return false;
            }
        }
        return true;
    }

    public void e(int i2) {
        int[] iArr = this.f2337g;
        if (iArr.length < i2) {
            Object[] objArr = this.f2338h;
            a(i2);
            int i3 = this.f2339i;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.f2337g, 0, i3);
                System.arraycopy(objArr, 0, this.f2338h, 0, this.f2339i);
            }
            a(iArr, objArr, this.f2339i);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            int i2 = 0;
            while (i2 < this.f2339i) {
                try {
                    if (!set.contains(g(i2))) {
                        return false;
                    }
                    i2++;
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public E f(int i2) {
        E[] eArr = this.f2338h;
        E e2 = eArr[i2];
        int i3 = this.f2339i;
        if (i3 <= 1) {
            a(this.f2337g, eArr, i3);
            this.f2337g = f2331a;
            this.f2338h = f2332b;
            this.f2339i = 0;
        } else {
            int[] iArr = this.f2337g;
            int i4 = 8;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                this.f2339i--;
                int i5 = this.f2339i;
                if (i2 < i5) {
                    int[] iArr2 = this.f2337g;
                    int i6 = i2 + 1;
                    System.arraycopy(iArr2, i6, iArr2, i2, i5 - i2);
                    Object[] objArr = this.f2338h;
                    System.arraycopy(objArr, i6, objArr, i2, this.f2339i - i2);
                }
                this.f2338h[this.f2339i] = null;
            } else {
                if (i3 > 8) {
                    i4 = i3 + (i3 >> 1);
                }
                int[] iArr3 = this.f2337g;
                Object[] objArr2 = this.f2338h;
                a(i4);
                this.f2339i--;
                if (i2 > 0) {
                    System.arraycopy(iArr3, 0, this.f2337g, 0, i2);
                    System.arraycopy(objArr2, 0, this.f2338h, 0, i2);
                }
                int i7 = this.f2339i;
                if (i2 < i7) {
                    int i8 = i2 + 1;
                    System.arraycopy(iArr3, i8, this.f2337g, i2, i7 - i2);
                    System.arraycopy(objArr2, i8, this.f2338h, i2, this.f2339i - i2);
                }
            }
        }
        return e2;
    }

    public E g(int i2) {
        return this.f2338h[i2];
    }

    public int hashCode() {
        int[] iArr = this.f2337g;
        int i2 = this.f2339i;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public int indexOf(Object obj) {
        return obj == null ? b() : a(obj, obj.hashCode());
    }

    public boolean isEmpty() {
        return this.f2339i <= 0;
    }

    public Iterator<E> iterator() {
        return a().e().iterator();
    }

    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        f(indexOf);
        return true;
    }

    public boolean removeAll(Collection<?> collection) {
        boolean z = false;
        for (Object remove : collection) {
            z |= remove(remove);
        }
        return z;
    }

    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.f2339i - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f2338h[i2])) {
                f(i2);
                z = true;
            }
        }
        return z;
    }

    public int size() {
        return this.f2339i;
    }

    public Object[] toArray() {
        int i2 = this.f2339i;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f2338h, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2339i * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2339i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object g2 = g(i2);
            if (g2 != this) {
                sb.append(g2);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public d(int i2) {
        if (i2 == 0) {
            this.f2337g = f2331a;
            this.f2338h = f2332b;
        } else {
            a(i2);
        }
        this.f2339i = 0;
    }

    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f2339i) {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f2339i);
        }
        System.arraycopy(this.f2338h, 0, tArr, 0, this.f2339i);
        int length = tArr.length;
        int i2 = this.f2339i;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    public final void a(int i2) {
        if (i2 == 8) {
            synchronized (d.class) {
                if (f2335e != null) {
                    Object[] objArr = f2335e;
                    this.f2338h = objArr;
                    f2335e = (Object[]) objArr[0];
                    this.f2337g = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f2336f--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (d.class) {
                if (f2333c != null) {
                    Object[] objArr2 = f2333c;
                    this.f2338h = objArr2;
                    f2333c = (Object[]) objArr2[0];
                    this.f2337g = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f2334d--;
                    return;
                }
            }
        }
        this.f2337g = new int[i2];
        this.f2338h = new Object[i2];
    }

    public static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (d.class) {
                if (f2336f < 10) {
                    objArr[0] = f2335e;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f2335e = objArr;
                    f2336f++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (d.class) {
                if (f2334d < 10) {
                    objArr[0] = f2333c;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f2333c = objArr;
                    f2334d++;
                }
            }
        }
    }

    public final h<E, E> a() {
        if (this.f2340j == null) {
            this.f2340j = new C0244c(this);
        }
        return this.f2340j;
    }
}
