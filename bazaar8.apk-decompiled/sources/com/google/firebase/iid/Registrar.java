package com.google.firebase.iid;

import androidx.annotation.Keep;
import c.e.c.b.e;
import c.e.c.b.i;
import c.e.c.b.j;
import c.e.c.b.q;
import c.e.c.c.d;
import c.e.c.d.C0997q;
import c.e.c.d.r;
import c.e.c.h.g;
import com.google.firebase.FirebaseApp;
import java.util.Arrays;
import java.util.List;

@Keep
public final class Registrar implements j {

    private static class a implements c.e.c.d.a.a {

        /* renamed from: a  reason: collision with root package name */
        public final FirebaseInstanceId f13519a;

        public a(FirebaseInstanceId firebaseInstanceId) {
            this.f13519a = firebaseInstanceId;
        }
    }

    @Keep
    public final List<e<?>> getComponents() {
        e.a<FirebaseInstanceId> a2 = e.a(FirebaseInstanceId.class);
        a2.a(q.a(FirebaseApp.class));
        a2.a(q.a(d.class));
        a2.a(q.a(g.class));
        a2.a((i<FirebaseInstanceId>) C0997q.f11669a);
        a2.a();
        e<FirebaseInstanceId> b2 = a2.b();
        e.a<c.e.c.d.a.a> a3 = e.a(c.e.c.d.a.a.class);
        a3.a(q.a(FirebaseInstanceId.class));
        a3.a((i<c.e.c.d.a.a>) r.f11670a);
        return Arrays.asList(new e[]{b2, a3.b()});
    }
}
