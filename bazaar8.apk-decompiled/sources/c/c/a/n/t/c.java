package c.c.a.n.t;

import c.c.a.c.d.e;
import c.c.a.d.f.r;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.analytics.model.what.LogoutConfirmedButtonClick;
import com.farsitel.bazaar.analytics.model.what.LogoutRefusedButtonClick;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.profile.ProfileFragment;
import h.f.b.j;

/* compiled from: ProfileFragment.kt */
public final class c implements r<None> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ProfileFragment f6947a;

    public c(ProfileFragment profileFragment) {
        this.f6947a = profileFragment;
    }

    public void onCancel() {
        b.a(this.f6947a, new LogoutRefusedButtonClick(e.a()), null, null, 6, null);
        r.a.a(this);
    }

    public void a() {
        r.a.b(this);
    }

    public void a(None none) {
        j.b(none, "result");
        b.a(this.f6947a, new LogoutConfirmedButtonClick(e.a()), null, null, 6, null);
        ProfileFragment.a(this.f6947a).n();
    }
}
