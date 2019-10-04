package i.a;

import h.c.b;
import h.e;
import h.f.b.j;
import kotlin.Result;

/* compiled from: DebugStrings.kt */
public final class L {
    public static final String a(b<?> bVar) {
        String str;
        j.b(bVar, "$this$toDebugString");
        if (bVar instanceof Q) {
            return bVar.toString();
        }
        try {
            Result.a aVar = Result.f15776a;
            String str2 = bVar + '@' + b(bVar);
            Result.a(str2);
            str = str2;
        } catch (Throwable th) {
            Result.a aVar2 = Result.f15776a;
            Object a2 = e.a(th);
            Result.a(a2);
            str = a2;
        }
        Throwable b2 = Result.b(str);
        String str3 = str;
        if (b2 != null) {
            str3 = bVar.getClass().getName() + '@' + b(bVar);
        }
        return (String) str3;
    }

    public static final String b(Object obj) {
        j.b(obj, "$this$hexAddress");
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        j.a((Object) hexString, "Integer.toHexString(System.identityHashCode(this))");
        return hexString;
    }

    public static final String a(Object obj) {
        j.b(obj, "$this$classSimpleName");
        String simpleName = obj.getClass().getSimpleName();
        j.a((Object) simpleName, "this::class.java.simpleName");
        return simpleName;
    }
}
