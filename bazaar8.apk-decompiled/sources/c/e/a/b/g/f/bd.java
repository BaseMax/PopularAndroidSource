package c.e.a.b.g.f;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

public final class bd extends gd {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReference<Bundle> f10350a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    public boolean f10351b;

    public static <T> T a(Bundle bundle, Class<T> cls) {
        if (bundle != null) {
            Object obj = bundle.get("r");
            if (obj != null) {
                try {
                    return cls.cast(obj);
                } catch (ClassCastException e2) {
                    String canonicalName = cls.getCanonicalName();
                    String canonicalName2 = obj.getClass().getCanonicalName();
                    Log.w("AM", String.format("Unexpected object type. Expected, Received".concat(": %s, %s"), new Object[]{canonicalName, canonicalName2}), e2);
                    throw e2;
                }
            }
        }
        return null;
    }

    public final void b(Bundle bundle) {
        synchronized (this.f10350a) {
            try {
                this.f10350a.set(bundle);
                this.f10351b = true;
                this.f10350a.notify();
            } catch (Throwable th) {
                this.f10350a.notify();
                throw th;
            }
        }
    }

    public final String c(long j2) {
        return (String) a(d(j2), String.class);
    }

    public final Bundle d(long j2) {
        Bundle bundle;
        synchronized (this.f10350a) {
            if (!this.f10351b) {
                try {
                    this.f10350a.wait(j2);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = this.f10350a.get();
        }
        return bundle;
    }
}
