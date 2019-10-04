package b.f;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* compiled from: SimpleArrayMap */
public class i<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public static Object[] f2372a;

    /* renamed from: b  reason: collision with root package name */
    public static int f2373b;

    /* renamed from: c  reason: collision with root package name */
    public static Object[] f2374c;

    /* renamed from: d  reason: collision with root package name */
    public static int f2375d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f2376e;

    /* renamed from: f  reason: collision with root package name */
    public Object[] f2377f;

    /* renamed from: g  reason: collision with root package name */
    public int f2378g;

    public i() {
        this.f2376e = e.f2341a;
        this.f2377f = e.f2343c;
        this.f2378g = 0;
    }

    public static int a(int[] iArr, int i2, int i3) {
        try {
            return e.a(iArr, i2, i3);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public void b(int i2) {
        int i3 = this.f2378g;
        int[] iArr = this.f2376e;
        if (iArr.length < i2) {
            Object[] objArr = this.f2377f;
            a(i2);
            if (this.f2378g > 0) {
                System.arraycopy(iArr, 0, this.f2376e, 0, i3);
                System.arraycopy(objArr, 0, this.f2377f, 0, i3 << 1);
            }
            a(iArr, objArr, i3);
        }
        if (this.f2378g != i3) {
            throw new ConcurrentModificationException();
        }
    }

    public int c(Object obj) {
        int i2 = this.f2378g * 2;
        Object[] objArr = this.f2377f;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
        } else {
            for (int i4 = 1; i4 < i2; i4 += 2) {
                if (obj.equals(objArr[i4])) {
                    return i4 >> 1;
                }
            }
        }
        return -1;
    }

    public void clear() {
        int i2 = this.f2378g;
        if (i2 > 0) {
            int[] iArr = this.f2376e;
            Object[] objArr = this.f2377f;
            this.f2376e = e.f2341a;
            this.f2377f = e.f2343c;
            this.f2378g = 0;
            a(iArr, objArr, i2);
        }
        if (this.f2378g > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return b(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return c(obj) >= 0;
    }

    public V d(int i2) {
        int i3;
        V[] vArr = this.f2377f;
        int i4 = i2 << 1;
        V v = vArr[i4 + 1];
        int i5 = this.f2378g;
        if (i5 <= 1) {
            a(this.f2376e, (Object[]) vArr, i5);
            this.f2376e = e.f2341a;
            this.f2377f = e.f2343c;
            i3 = 0;
        } else {
            i3 = i5 - 1;
            int[] iArr = this.f2376e;
            int i6 = 8;
            if (iArr.length <= 8 || i5 >= iArr.length / 3) {
                if (i2 < i3) {
                    int[] iArr2 = this.f2376e;
                    int i7 = i2 + 1;
                    int i8 = i3 - i2;
                    System.arraycopy(iArr2, i7, iArr2, i2, i8);
                    Object[] objArr = this.f2377f;
                    System.arraycopy(objArr, i7 << 1, objArr, i4, i8 << 1);
                }
                Object[] objArr2 = this.f2377f;
                int i9 = i3 << 1;
                objArr2[i9] = null;
                objArr2[i9 + 1] = null;
            } else {
                if (i5 > 8) {
                    i6 = i5 + (i5 >> 1);
                }
                int[] iArr3 = this.f2376e;
                Object[] objArr3 = this.f2377f;
                a(i6);
                if (i5 == this.f2378g) {
                    if (i2 > 0) {
                        System.arraycopy(iArr3, 0, this.f2376e, 0, i2);
                        System.arraycopy(objArr3, 0, this.f2377f, 0, i4);
                    }
                    if (i2 < i3) {
                        int i10 = i2 + 1;
                        int i11 = i3 - i2;
                        System.arraycopy(iArr3, i10, this.f2376e, i2, i11);
                        System.arraycopy(objArr3, i10 << 1, this.f2377f, i4, i11 << 1);
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            }
        }
        if (i5 == this.f2378g) {
            this.f2378g = i3;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    public V e(int i2) {
        return this.f2377f[(i2 << 1) + 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (size() != iVar.size()) {
                return false;
            }
            int i2 = 0;
            while (i2 < this.f2378g) {
                try {
                    Object c2 = c(i2);
                    Object e2 = e(i2);
                    Object obj2 = iVar.get(c2);
                    if (e2 == null) {
                        if (obj2 != null || !iVar.containsKey(c2)) {
                            return false;
                        }
                    } else if (!e2.equals(obj2)) {
                        return false;
                    }
                    i2++;
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            int i3 = 0;
            while (i3 < this.f2378g) {
                try {
                    Object c3 = c(i3);
                    Object e3 = e(i3);
                    Object obj3 = map.get(c3);
                    if (e3 == null) {
                        if (obj3 != null || !map.containsKey(c3)) {
                            return false;
                        }
                    } else if (!e3.equals(obj3)) {
                        return false;
                    }
                    i3++;
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int b2 = b(obj);
        return b2 >= 0 ? this.f2377f[(b2 << 1) + 1] : v;
    }

    public int hashCode() {
        int[] iArr = this.f2376e;
        Object[] objArr = this.f2377f;
        int i2 = this.f2378g;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i3 < i2) {
            Object obj = objArr[i5];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i5 += 2;
        }
        return i4;
    }

    public boolean isEmpty() {
        return this.f2378g <= 0;
    }

    public V put(K k2, V v) {
        int i2;
        int i3;
        int i4 = this.f2378g;
        if (k2 == null) {
            i3 = a();
            i2 = 0;
        } else {
            int hashCode = k2.hashCode();
            i2 = hashCode;
            i3 = a((Object) k2, hashCode);
        }
        if (i3 >= 0) {
            int i5 = (i3 << 1) + 1;
            V[] vArr = this.f2377f;
            V v2 = vArr[i5];
            vArr[i5] = v;
            return v2;
        }
        int i6 = i3 ^ -1;
        if (i4 >= this.f2376e.length) {
            int i7 = 4;
            if (i4 >= 8) {
                i7 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i7 = 8;
            }
            int[] iArr = this.f2376e;
            Object[] objArr = this.f2377f;
            a(i7);
            if (i4 == this.f2378g) {
                int[] iArr2 = this.f2376e;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr, 0, this.f2377f, 0, objArr.length);
                }
                a(iArr, objArr, i4);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i6 < i4) {
            int[] iArr3 = this.f2376e;
            int i8 = i6 + 1;
            System.arraycopy(iArr3, i6, iArr3, i8, i4 - i6);
            Object[] objArr2 = this.f2377f;
            System.arraycopy(objArr2, i6 << 1, objArr2, i8 << 1, (this.f2378g - i6) << 1);
        }
        int i9 = this.f2378g;
        if (i4 == i9) {
            int[] iArr4 = this.f2376e;
            if (i6 < iArr4.length) {
                iArr4[i6] = i2;
                Object[] objArr3 = this.f2377f;
                int i10 = i6 << 1;
                objArr3[i10] = k2;
                objArr3[i10 + 1] = v;
                this.f2378g = i9 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k2, V v) {
        V v2 = get(k2);
        return v2 == null ? put(k2, v) : v2;
    }

    public V remove(Object obj) {
        int b2 = b(obj);
        if (b2 >= 0) {
            return d(b2);
        }
        return null;
    }

    public V replace(K k2, V v) {
        int b2 = b((Object) k2);
        if (b2 >= 0) {
            return a(b2, v);
        }
        return null;
    }

    public int size() {
        return this.f2378g;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2378g * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f2378g; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object c2 = c(i2);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object e2 = e(i2);
            if (e2 != this) {
                sb.append(e2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public int a(Object obj, int i2) {
        int i3 = this.f2378g;
        if (i3 == 0) {
            return -1;
        }
        int a2 = a(this.f2376e, i3, i2);
        if (a2 < 0 || obj.equals(this.f2377f[a2 << 1])) {
            return a2;
        }
        int i4 = a2 + 1;
        while (i4 < i3 && this.f2376e[i4] == i2) {
            if (obj.equals(this.f2377f[i4 << 1])) {
                return i4;
            }
            i4++;
        }
        int i5 = a2 - 1;
        while (i5 >= 0 && this.f2376e[i5] == i2) {
            if (obj.equals(this.f2377f[i5 << 1])) {
                return i5;
            }
            i5--;
        }
        return i4 ^ -1;
    }

    public boolean remove(Object obj, Object obj2) {
        int b2 = b(obj);
        if (b2 >= 0) {
            Object e2 = e(b2);
            if (obj2 == e2 || (obj2 != null && obj2.equals(e2))) {
                d(b2);
                return true;
            }
        }
        return false;
    }

    public boolean replace(K k2, V v, V v2) {
        int b2 = b((Object) k2);
        if (b2 >= 0) {
            V e2 = e(b2);
            if (e2 == v || (v != null && v.equals(e2))) {
                a(b2, v2);
                return true;
            }
        }
        return false;
    }

    public i(int i2) {
        if (i2 == 0) {
            this.f2376e = e.f2341a;
            this.f2377f = e.f2343c;
        } else {
            a(i2);
        }
        this.f2378g = 0;
    }

    public K c(int i2) {
        return this.f2377f[i2 << 1];
    }

    public i(i<K, V> iVar) {
        this();
        if (iVar != null) {
            a(iVar);
        }
    }

    public int a() {
        int i2 = this.f2378g;
        if (i2 == 0) {
            return -1;
        }
        int a2 = a(this.f2376e, i2, 0);
        if (a2 < 0 || this.f2377f[a2 << 1] == null) {
            return a2;
        }
        int i3 = a2 + 1;
        while (i3 < i2 && this.f2376e[i3] == 0) {
            if (this.f2377f[i3 << 1] == null) {
                return i3;
            }
            i3++;
        }
        int i4 = a2 - 1;
        while (i4 >= 0 && this.f2376e[i4] == 0) {
            if (this.f2377f[i4 << 1] == null) {
                return i4;
            }
            i4--;
        }
        return i3 ^ -1;
    }

    public int b(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public final void a(int i2) {
        if (i2 == 8) {
            synchronized (i.class) {
                if (f2374c != null) {
                    Object[] objArr = f2374c;
                    this.f2377f = objArr;
                    f2374c = (Object[]) objArr[0];
                    this.f2376e = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f2375d--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (i.class) {
                if (f2372a != null) {
                    Object[] objArr2 = f2372a;
                    this.f2377f = objArr2;
                    f2372a = (Object[]) objArr2[0];
                    this.f2376e = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f2373b--;
                    return;
                }
            }
        }
        this.f2376e = new int[i2];
        this.f2377f = new Object[(i2 << 1)];
    }

    public static void a(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (i.class) {
                if (f2375d < 10) {
                    objArr[0] = f2374c;
                    objArr[1] = iArr;
                    for (int i3 = (i2 << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f2374c = objArr;
                    f2375d++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (i.class) {
                if (f2373b < 10) {
                    objArr[0] = f2372a;
                    objArr[1] = iArr;
                    for (int i4 = (i2 << 1) - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f2372a = objArr;
                    f2373b++;
                }
            }
        }
    }

    public V a(int i2, V v) {
        int i3 = (i2 << 1) + 1;
        V[] vArr = this.f2377f;
        V v2 = vArr[i3];
        vArr[i3] = v;
        return v2;
    }

    public void a(i<? extends K, ? extends V> iVar) {
        int i2 = iVar.f2378g;
        b(this.f2378g + i2);
        if (this.f2378g != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                put(iVar.c(i3), iVar.e(i3));
            }
        } else if (i2 > 0) {
            System.arraycopy(iVar.f2376e, 0, this.f2376e, 0, i2);
            System.arraycopy(iVar.f2377f, 0, this.f2377f, 0, i2 << 1);
            this.f2378g = i2;
        }
    }
}
