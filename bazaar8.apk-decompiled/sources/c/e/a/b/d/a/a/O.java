package c.e.a.b.d.a.a;

import b.f.C0243b;
import c.e.a.b.j.h;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import java.util.Map;
import java.util.Set;

public final class O {

    /* renamed from: a  reason: collision with root package name */
    public final C0243b<N<?>, ConnectionResult> f9825a;

    /* renamed from: b  reason: collision with root package name */
    public final C0243b<N<?>, String> f9826b;

    /* renamed from: c  reason: collision with root package name */
    public final h<Map<N<?>, String>> f9827c;

    /* renamed from: d  reason: collision with root package name */
    public int f9828d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9829e;

    public final Set<N<?>> a() {
        return this.f9825a.keySet();
    }

    public final void a(N<?> n, ConnectionResult connectionResult, String str) {
        this.f9825a.put(n, connectionResult);
        this.f9826b.put(n, str);
        this.f9828d--;
        if (!connectionResult.B()) {
            this.f9829e = true;
        }
        if (this.f9828d == 0) {
            if (this.f9829e) {
                this.f9827c.a((Exception) new AvailabilityException(this.f9825a));
                return;
            }
            this.f9827c.a(this.f9826b);
        }
    }
}
