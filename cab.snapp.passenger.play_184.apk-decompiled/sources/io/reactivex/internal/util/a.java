package io.reactivex.internal.util;

import io.reactivex.ag;
import io.reactivex.e.d;
import io.reactivex.e.q;
import org.b.c;

public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final int f8641a;

    /* renamed from: b  reason: collision with root package name */
    final Object[] f8642b;
    Object[] c = this.f8642b;
    int d;

    /* renamed from: io.reactivex.internal.util.a$a  reason: collision with other inner class name */
    public interface C0204a<T> extends q<T> {
        boolean test(T t);
    }

    public a(int i) {
        this.f8641a = i;
        this.f8642b = new Object[(i + 1)];
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v0, resolved type: java.lang.Object[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void add(T r4) {
        /*
            r3 = this;
            int r0 = r3.f8641a
            int r1 = r3.d
            if (r1 != r0) goto L_0x0011
            int r1 = r0 + 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.Object[] r2 = r3.c
            r2[r0] = r1
            r3.c = r1
            r1 = 0
        L_0x0011:
            java.lang.Object[] r0 = r3.c
            r0[r1] = r4
            int r1 = r1 + 1
            r3.d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.a.add(java.lang.Object):void");
    }

    public final void setFirst(T t) {
        this.f8642b[0] = t;
    }

    public final void forEachWhile(C0204a<? super T> aVar) {
        int i = this.f8641a;
        for (Object[] objArr = this.f8642b; objArr != null; objArr = objArr[i]) {
            int i2 = 0;
            while (i2 < i) {
                Object[] objArr2 = objArr[i2];
                if (objArr2 == null) {
                    continue;
                    break;
                } else if (!aVar.test(objArr2)) {
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    public final <U> boolean accept(c<? super U> cVar) {
        Object[] objArr = this.f8642b;
        int i = this.f8641a;
        while (true) {
            int i2 = 0;
            if (objArr == null) {
                return false;
            }
            while (i2 < i) {
                Object[] objArr2 = objArr[i2];
                if (objArr2 == null) {
                    continue;
                    break;
                } else if (NotificationLite.acceptFull((Object) objArr2, cVar)) {
                    return true;
                } else {
                    i2++;
                }
            }
            objArr = objArr[i];
        }
    }

    public final <U> boolean accept(ag<? super U> agVar) {
        Object[] objArr = this.f8642b;
        int i = this.f8641a;
        while (true) {
            int i2 = 0;
            if (objArr == null) {
                return false;
            }
            while (i2 < i) {
                Object[] objArr2 = objArr[i2];
                if (objArr2 == null) {
                    continue;
                    break;
                } else if (NotificationLite.acceptFull((Object) objArr2, agVar)) {
                    return true;
                } else {
                    i2++;
                }
            }
            objArr = objArr[i];
        }
    }

    public final <S> void forEachWhile(S s, d<? super S, ? super T> dVar) throws Exception {
        Object[] objArr = this.f8642b;
        int i = this.f8641a;
        while (true) {
            int i2 = 0;
            while (i2 < i) {
                Object[] objArr2 = objArr[i2];
                if (objArr2 != null && !dVar.test(s, objArr2)) {
                    i2++;
                } else {
                    return;
                }
            }
            objArr = objArr[i];
        }
    }
}
