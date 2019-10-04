package c.e.a.b.g.f;

import android.os.Binder;

/* renamed from: c.e.a.b.g.f.ma  reason: case insensitive filesystem */
public final /* synthetic */ class C0847ma {
    public static <V> V a(C0851na<V> naVar) {
        long clearCallingIdentity;
        try {
            return naVar.a();
        } catch (SecurityException unused) {
            clearCallingIdentity = Binder.clearCallingIdentity();
            V a2 = naVar.a();
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return a2;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }
}
