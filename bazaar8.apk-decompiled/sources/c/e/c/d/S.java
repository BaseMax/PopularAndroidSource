package c.e.c.d;

import c.e.c.c.a;
import c.e.c.c.b;
import com.google.firebase.iid.FirebaseInstanceId;

public final /* synthetic */ class S implements b {

    /* renamed from: a  reason: collision with root package name */
    public final FirebaseInstanceId.a f11627a;

    public S(FirebaseInstanceId.a aVar) {
        this.f11627a = aVar;
    }

    public final void a(a aVar) {
        FirebaseInstanceId.a aVar2 = this.f11627a;
        synchronized (aVar2) {
            if (aVar2.a()) {
                FirebaseInstanceId.this.d();
            }
        }
    }
}
