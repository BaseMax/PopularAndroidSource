package c.e.a.b.d.a.a;

import c.e.a.b.j.h;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;

/* renamed from: c.e.a.b.d.a.a.k  reason: case insensitive filesystem */
public class C0763k {
    public static void a(Status status, h<Void> hVar) {
        a(status, null, hVar);
    }

    public static <TResult> void a(Status status, TResult tresult, h<TResult> hVar) {
        if (status.A()) {
            hVar.a(tresult);
        } else {
            hVar.a((Exception) new ApiException(status));
        }
    }
}
