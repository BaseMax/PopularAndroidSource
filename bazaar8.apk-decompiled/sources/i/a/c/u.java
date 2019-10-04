package i.a.c;

import h.c.b;
import h.c.b.a.c;
import h.e;
import h.f;
import h.f.b.j;
import h.k.m;
import i.a.K;
import java.util.ArrayDeque;
import kotlin.Pair;
import kotlin.Result;
import kotlin.TypeCastException;

/* compiled from: StackTraceRecovery.kt */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public static final String f14780a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f14781b;

    static {
        Object obj;
        Object obj2;
        try {
            Result.a aVar = Result.f15776a;
            Class<?> cls = Class.forName("kotlin.coroutines.jvm.internal.BaseContinuationImpl");
            j.a((Object) cls, "Class.forName(baseContinuationImplClass)");
            obj = cls.getCanonicalName();
            Result.a(obj);
        } catch (Throwable th) {
            Result.a aVar2 = Result.f15776a;
            obj = e.a(th);
            Result.a(obj);
        }
        if (Result.b(obj) != null) {
            obj = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f14780a = (String) obj;
        try {
            Result.a aVar3 = Result.f15776a;
            Class<?> cls2 = Class.forName("i.a.c.u");
            j.a((Object) cls2, "Class.forName(stackTraceRecoveryClass)");
            obj2 = cls2.getCanonicalName();
            Result.a(obj2);
        } catch (Throwable th2) {
            Result.a aVar4 = Result.f15776a;
            obj2 = e.a(th2);
            Result.a(obj2);
        }
        if (Result.b(obj2) != null) {
            obj2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f14781b = (String) obj2;
    }

    public static final <E extends Throwable> E b(E e2) {
        j.b(e2, "exception");
        if (!K.d()) {
            return e2;
        }
        E a2 = g.a(e2);
        if (a2 == null) {
            return e2;
        }
        c(a2);
        return a2;
    }

    public static final <E extends Throwable> E c(E e2) {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = e2.getStackTrace();
        int length = stackTrace.length;
        j.a((Object) stackTrace, "stackTrace");
        String str = f14781b;
        j.a((Object) str, "stackTraceRecoveryClassName");
        int a2 = a(stackTrace, str);
        int i2 = a2 + 1;
        String str2 = f14780a;
        j.a((Object) str2, "baseContinuationImplClassName");
        int a3 = a(stackTrace, str2);
        int i3 = (length - a2) - (a3 == -1 ? 0 : length - a3);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            if (i4 == 0) {
                stackTraceElement = a("Coroutine boundary");
            } else {
                stackTraceElement = stackTrace[(i2 + i4) - 1];
            }
            stackTraceElementArr[i4] = stackTraceElement;
        }
        e2.setStackTrace(stackTraceElementArr);
        return e2;
    }

    public static final <E extends Throwable> E d(E e2) {
        j.b(e2, "exception");
        if (!K.d()) {
            return e2;
        }
        E cause = e2.getCause();
        if (cause != null) {
            boolean z = true;
            if (!(!j.a((Object) cause.getClass(), (Object) e2.getClass()))) {
                StackTraceElement[] stackTrace = e2.getStackTrace();
                j.a((Object) stackTrace, "exception.stackTrace");
                int length = stackTrace.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = false;
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i2];
                    j.a((Object) stackTraceElement, "it");
                    if (a(stackTraceElement)) {
                        break;
                    }
                    i2++;
                }
                if (z) {
                    return cause;
                }
            }
        }
        return e2;
    }

    public static final <E extends Throwable> E a(E e2, b<?> bVar) {
        j.b(e2, "exception");
        j.b(bVar, "continuation");
        return (!K.d() || !(bVar instanceof c)) ? e2 : b(e2, (c) bVar);
    }

    public static final <E extends Throwable> E a(E e2, E e3, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(a("Coroutine boundary"));
        StackTraceElement[] stackTrace = e2.getStackTrace();
        j.a((Object) stackTrace, "causeTrace");
        String str = f14780a;
        j.a((Object) str, "baseContinuationImplClassName");
        int a2 = a(stackTrace, str);
        int i2 = 0;
        if (a2 == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            if (array != null) {
                e3.setStackTrace((StackTraceElement[]) array);
                return e3;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[(arrayDeque.size() + a2)];
        for (int i3 = 0; i3 < a2; i3++) {
            stackTraceElementArr[i3] = stackTrace[i3];
        }
        for (StackTraceElement stackTraceElement : arrayDeque) {
            stackTraceElementArr[a2 + i2] = stackTraceElement;
            i2++;
        }
        e3.setStackTrace(stackTraceElementArr);
        return e3;
    }

    public static final <E extends Throwable> E b(E e2, c cVar) {
        Pair a2 = a(e2);
        E e3 = (Throwable) a2.a();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) a2.b();
        E a3 = g.a(e3);
        if (a3 == null) {
            return e2;
        }
        ArrayDeque<StackTraceElement> a4 = a(cVar);
        if (a4.isEmpty()) {
            return e2;
        }
        if (e3 != e2) {
            a(stackTraceElementArr, a4);
        }
        a(e3, a3, a4);
        return a3;
    }

    public static final <E extends Throwable> Pair<E, StackTraceElement[]> a(E e2) {
        boolean z;
        Throwable cause = e2.getCause();
        if (cause == null || !j.a((Object) cause.getClass(), (Object) e2.getClass())) {
            return f.a(e2, new StackTraceElement[0]);
        }
        StackTraceElement[] stackTrace = e2.getStackTrace();
        j.a((Object) stackTrace, "currentTrace");
        int length = stackTrace.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = false;
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i2];
            j.a((Object) stackTraceElement, "it");
            if (a(stackTraceElement)) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return f.a(cause, stackTrace);
        }
        return f.a(e2, new StackTraceElement[0]);
    }

    public static final ArrayDeque<StackTraceElement> a(c cVar) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement d2 = cVar.d();
        if (d2 != null) {
            arrayDeque.add(d2);
        }
        while (true) {
            if (!(cVar instanceof c)) {
                cVar = null;
            }
            if (cVar == null) {
                break;
            }
            cVar = cVar.c();
            if (cVar == null) {
                break;
            }
            StackTraceElement d3 = cVar.d();
            if (d3 != null) {
                arrayDeque.add(d3);
            }
        }
        return arrayDeque;
    }

    public static final StackTraceElement a(String str) {
        j.b(str, "message");
        return new StackTraceElement("\b\b\b(" + str, "\b", "\b", -1);
    }

    public static final boolean a(StackTraceElement stackTraceElement) {
        j.b(stackTraceElement, "$this$isArtificial");
        String className = stackTraceElement.getClassName();
        j.a((Object) className, "className");
        return m.b(className, "\b\b\b", false, 2, null);
    }

    public static final boolean a(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && j.a((Object) stackTraceElement.getMethodName(), (Object) stackTraceElement2.getMethodName()) && j.a((Object) stackTraceElement.getFileName(), (Object) stackTraceElement2.getFileName()) && j.a((Object) stackTraceElement.getClassName(), (Object) stackTraceElement2.getClassName());
    }

    public static final void a(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            } else if (a(stackTraceElementArr[i2])) {
                break;
            } else {
                i2++;
            }
        }
        int i3 = i2 + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (length2 >= i3) {
            while (true) {
                StackTraceElement stackTraceElement = stackTraceElementArr[length2];
                StackTraceElement last = arrayDeque.getLast();
                j.a((Object) last, "result.last");
                if (a(stackTraceElement, last)) {
                    arrayDeque.removeLast();
                }
                arrayDeque.addFirst(stackTraceElementArr[length2]);
                if (length2 != i3) {
                    length2--;
                } else {
                    return;
                }
            }
        }
    }

    public static final int a(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (j.a((Object) str, (Object) stackTraceElementArr[i2].getClassName())) {
                return i2;
            }
        }
        return -1;
    }
}
