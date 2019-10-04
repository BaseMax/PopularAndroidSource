package c.c.a.c.c;

import h.a.q;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Logger.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final List<b> f4698a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public static final a f4699b = new a();

    public static /* synthetic */ void c(a aVar, String str, Throwable th, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            th = null;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        aVar.c(str, th, str2);
    }

    public final void a(b... bVarArr) {
        j.b(bVarArr, "writer");
        synchronized (f4698a) {
            q.a(f4698a, (T[]) bVarArr);
        }
    }

    public final void b(Throwable th) {
        j.b(th, "throwable");
        a(2, null, th, null);
    }

    public static /* synthetic */ void b(a aVar, String str, Throwable th, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            th = null;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        aVar.b(str, th, str2);
    }

    public final void c(String str, Throwable th, String str2) {
        j.b(str, "message");
        a(5, str2, th, str);
    }

    public final void b(String str, Throwable th, String str2) {
        j.b(str, "message");
        a(3, str2, th, str);
    }

    public final void a(int i2, String str, Throwable th, String str2) {
        for (b a2 : f4698a) {
            a2.a(i2, str, th, str2);
        }
    }

    public final void a(Throwable th) {
        j.b(th, "throwable");
        if (!c.c.a.c.h.a.a()) {
            a(1, null, th, null);
            return;
        }
        throw th;
    }

    public static /* synthetic */ void a(a aVar, String str, Throwable th, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            th = null;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        aVar.a(str, th, str2);
    }

    public final void a(String str, Throwable th, String str2) {
        j.b(str, "message");
        a(4, str2, th, str);
    }
}
