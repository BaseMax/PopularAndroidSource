package c.c.a.d.d;

import androidx.lifecycle.LiveData;
import c.c.a.c.h.g;
import h.f.b.j;

/* compiled from: OtpCodeManager.kt */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final g<String> f4774a = new g<>();

    public final LiveData<String> a() {
        return this.f4774a;
    }

    public final void a(String str) {
        j.b(str, "code");
        if (this.f4774a.c()) {
            this.f4774a.a(str);
        }
    }
}
