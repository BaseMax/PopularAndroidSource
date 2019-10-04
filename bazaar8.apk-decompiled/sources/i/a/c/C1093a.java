package i.a.c;

import h.a.h;
import h.f.b.j;
import kotlin.TypeCastException;

/* renamed from: i.a.c.a  reason: case insensitive filesystem */
/* compiled from: ArrayQueue.kt */
public class C1093a<T> {

    /* renamed from: a  reason: collision with root package name */
    public Object[] f14743a = new Object[16];

    /* renamed from: b  reason: collision with root package name */
    public int f14744b;

    /* renamed from: c  reason: collision with root package name */
    public int f14745c;

    public final void a(T t) {
        j.b(t, "element");
        Object[] objArr = this.f14743a;
        int i2 = this.f14745c;
        objArr[i2] = t;
        this.f14745c = (objArr.length - 1) & (i2 + 1);
        if (this.f14745c == this.f14744b) {
            a();
        }
    }

    public final boolean b() {
        return this.f14744b == this.f14745c;
    }

    public final T c() {
        int i2 = this.f14744b;
        if (i2 == this.f14745c) {
            return null;
        }
        T[] tArr = this.f14743a;
        T t = tArr[i2];
        tArr[i2] = null;
        this.f14744b = (i2 + 1) & (tArr.length - 1);
        if (t != null) {
            return t;
        }
        throw new TypeCastException("null cannot be cast to non-null type T");
    }

    public final void a() {
        Object[] objArr = this.f14743a;
        int length = objArr.length;
        Object[] objArr2 = new Object[(length << 1)];
        Object[] objArr3 = objArr2;
        h.a(objArr, objArr3, 0, this.f14744b, 0, 10, null);
        Object[] objArr4 = this.f14743a;
        int length2 = objArr4.length;
        int i2 = this.f14744b;
        h.a(objArr4, objArr2, length2 - i2, 0, i2, 4, null);
        this.f14743a = objArr3;
        this.f14744b = 0;
        this.f14745c = length;
    }
}
