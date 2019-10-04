package c.c.a.d.g.b;

import android.util.Log;
import h.f.b.f;
import h.f.b.j;
import h.k.n;
import kotlin.TypeCastException;

/* compiled from: LogcatWriter.kt */
public final class b extends c.c.a.c.c.b {

    /* renamed from: b  reason: collision with root package name */
    public static final a f4815b = new a(null);

    /* compiled from: LogcatWriter.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public b(int i2) {
        super(i2);
    }

    public void a(int i2, String str, Throwable th, String str2) {
        if (a() >= i2) {
            StackTraceElement b2 = b();
            if (str == null) {
                str = a(b2);
            }
            String a2 = a(str2, b2);
            if (i2 == 1) {
                b(str, a2);
            } else if (i2 == 2) {
                e(str, a2);
            } else if (i2 == 3) {
                c(str, a2);
            } else if (i2 == 4) {
                a(str, a2);
            } else if (i2 == 5) {
                d(str, a2);
            }
            if (th != null) {
                th.printStackTrace();
            }
        }
    }

    public final void b(String str, String str2) {
        Log.e(str, str2);
    }

    public final void c(String str, String str2) {
        Log.i(str, str2);
    }

    public final void d(String str, String str2) {
        Log.v(str, str2);
    }

    public final void e(String str, String str2) {
        Log.w(str, str2);
    }

    public final StackTraceElement b() {
        Thread currentThread = Thread.currentThread();
        j.a((Object) currentThread, "thread");
        StackTraceElement[] stackTrace = currentThread.getStackTrace();
        StackTraceElement stackTraceElement = stackTrace[Math.min(stackTrace.length - 1, 10)];
        j.a((Object) stackTraceElement, "stack[min(stack.size - 1, 10)]");
        return stackTraceElement;
    }

    public final String a(String str, StackTraceElement stackTraceElement) {
        return str + "  @" + stackTraceElement;
    }

    public final void a(String str, String str2) {
        Log.d(str, str2);
    }

    public final String a(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        j.a((Object) className, "element.className");
        int b2 = n.b((CharSequence) className, ".", 0, false, 6, (Object) null) + 1;
        String className2 = stackTraceElement.getClassName();
        j.a((Object) className2, "element.className");
        int a2 = n.a((CharSequence) className2, "$", 0, false, 6, (Object) null);
        if (a2 == -1) {
            String className3 = stackTraceElement.getClassName();
            j.a((Object) className3, "element.className");
            if (className3 != null) {
                String substring = className3.substring(b2);
                j.a((Object) substring, "(this as java.lang.String).substring(startIndex)");
                return substring;
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String className4 = stackTraceElement.getClassName();
        j.a((Object) className4, "element.className");
        if (className4 != null) {
            String substring2 = className4.substring(b2, a2);
            j.a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring2;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }
}
