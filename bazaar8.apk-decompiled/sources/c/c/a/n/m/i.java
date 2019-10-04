package c.c.a.n.m;

import android.os.Bundle;
import c.c.a.d.f.r;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.home.MainActivity;
import h.f.b.j;

/* compiled from: MainActivity.kt */
public final class i implements r<None> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MainActivity f6688a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Bundle f6689b;

    public i(MainActivity mainActivity, Bundle bundle) {
        this.f6688a = mainActivity;
        this.f6689b = bundle;
    }

    public void onCancel() {
        r.a.a(this);
        this.f6688a.a(this.f6689b);
    }

    public void a() {
        r.a.b(this);
    }

    public void a(None none) {
        j.b(none, "result");
        r.a.a(this, none);
        this.f6688a.a(this.f6689b);
    }
}
