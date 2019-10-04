package io.reactivex.internal.util;

public final class l<T> {

    /* renamed from: a  reason: collision with root package name */
    final float f8644a;

    /* renamed from: b  reason: collision with root package name */
    int f8645b;
    int c;
    int d;
    T[] e;

    private static int a(int i) {
        int i2 = i * -1640531527;
        return i2 ^ (i2 >>> 16);
    }

    public l() {
        this(16, 0.75f);
    }

    public l(int i) {
        this(i, 0.75f);
    }

    public l(int i, float f) {
        this.f8644a = f;
        int roundToPowerOfTwo = m.roundToPowerOfTwo(i);
        this.f8645b = roundToPowerOfTwo - 1;
        this.d = (int) (f * ((float) roundToPowerOfTwo));
        this.e = (Object[]) new Object[roundToPowerOfTwo];
    }

    public final boolean add(T t) {
        T t2;
        T[] tArr = this.e;
        int i = this.f8645b;
        int a2 = a(t.hashCode()) & i;
        T t3 = tArr[a2];
        if (t3 != null) {
            if (t3.equals(t)) {
                return false;
            }
            do {
                a2 = (a2 + 1) & i;
                t2 = tArr[a2];
                if (t2 != null) {
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[a2] = t;
        int i2 = this.c + 1;
        this.c = i2;
        if (i2 >= this.d) {
            T[] tArr2 = this.e;
            int length = tArr2.length;
            int i3 = length << 1;
            int i4 = i3 - 1;
            T[] tArr3 = (Object[]) new Object[i3];
            int i5 = this.c;
            while (true) {
                int i6 = i5 - 1;
                if (i5 == 0) {
                    break;
                }
                do {
                    length--;
                } while (tArr2[length] == null);
                int a3 = a(tArr2[length].hashCode()) & i4;
                if (tArr3[a3] != null) {
                    do {
                        a3 = (a3 + 1) & i4;
                    } while (tArr3[a3] != null);
                }
                tArr3[a3] = tArr2[length];
                i5 = i6;
            }
            this.f8645b = i4;
            this.d = (int) (((float) i3) * this.f8644a);
            this.e = tArr3;
        }
        return true;
    }

    public final boolean remove(T t) {
        T t2;
        T[] tArr = this.e;
        int i = this.f8645b;
        int a2 = a(t.hashCode()) & i;
        T t3 = tArr[a2];
        if (t3 == null) {
            return false;
        }
        if (t3.equals(t)) {
            return a(a2, tArr, i);
        }
        do {
            a2 = (a2 + 1) & i;
            t2 = tArr[a2];
            if (t2 == null) {
                return false;
            }
        } while (!t2.equals(t));
        return a(a2, tArr, i);
    }

    private boolean a(int i, T[] tArr, int i2) {
        int i3;
        T t;
        this.c--;
        while (true) {
            int i4 = i + 1;
            while (true) {
                i3 = i4 & i2;
                t = tArr[i3];
                if (t == null) {
                    tArr[i] = null;
                    return true;
                }
                int a2 = a(t.hashCode()) & i2;
                if (i <= i3) {
                    if (i >= a2 || a2 > i3) {
                        break;
                    }
                    i4 = i3 + 1;
                } else {
                    if (i >= a2 && a2 > i3) {
                        break;
                    }
                    i4 = i3 + 1;
                }
            }
            tArr[i] = t;
            i = i3;
        }
    }

    public final Object[] keys() {
        return this.e;
    }

    public final int size() {
        return this.c;
    }
}
