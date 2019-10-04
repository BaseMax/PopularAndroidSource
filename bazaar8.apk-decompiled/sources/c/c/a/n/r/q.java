package c.c.a.n.r;

import androidx.lifecycle.LiveData;
import c.c.a.d.c.b;
import c.c.a.d.f.p;
import com.farsitel.bazaar.common.model.user.User;
import h.f.b.j;

/* compiled from: MyBazaarViewModel.kt */
public final class q extends p {

    /* renamed from: d  reason: collision with root package name */
    public final b f6802d;

    public q(b bVar) {
        j.b(bVar, "accountManager");
        this.f6802d = bVar;
    }

    public final LiveData<User> e() {
        return this.f6802d.c();
    }
}
