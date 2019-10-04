package c.c.a.n.y;

import android.content.Context;
import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.b.d.b;
import c.c.a.c.d.a;
import c.c.a.c.d.d;
import c.c.a.d.f.p;
import c.c.a.e.d.i.j;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: BazaarForceUpdateViewModel.kt */
public final class a extends p {

    /* renamed from: d  reason: collision with root package name */
    public final String f7083d = "com.farsitel.bazaar";

    /* renamed from: e  reason: collision with root package name */
    public final String f7084e;

    /* renamed from: f  reason: collision with root package name */
    public final t<DownloaderProgressInfo> f7085f;

    /* renamed from: g  reason: collision with root package name */
    public final t<Resource<None>> f7086g;

    /* renamed from: h  reason: collision with root package name */
    public final c.c.a.e.d.a.a f7087h;

    /* renamed from: i  reason: collision with root package name */
    public final j f7088i;

    /* renamed from: j  reason: collision with root package name */
    public final b f7089j;

    public a(Context context, c.c.a.e.d.a.a aVar, j jVar, b bVar) {
        h.f.b.j.b(context, "context");
        h.f.b.j.b(aVar, "accountRepository");
        h.f.b.j.b(jVar, "downloadProgressRepository");
        h.f.b.j.b(bVar, "appManager");
        this.f7087h = aVar;
        this.f7088i = jVar;
        this.f7089j = bVar;
        this.f7084e = context.getString(R.string.app_name);
        this.f7085f = new t<>();
        this.f7086g = new t<>();
    }

    public final void b(EntityState entityState) {
        h.f.b.j.b(entityState, "appState");
        if (a(entityState)) {
            a(this.f7083d);
        }
    }

    public final LiveData<EntityState> e() {
        return this.f7089j.d(this.f7083d);
    }

    public final EntityState f() {
        return this.f7089j.a(this.f7083d, (Long) null);
    }

    public final String g() {
        return this.f7087h.a();
    }

    public final boolean h() {
        return this.f7087h.m();
    }

    public final LiveData<DownloaderProgressInfo> i() {
        return this.f7085f;
    }

    public final void j() {
        this.f7087h.B();
    }

    public final boolean k() {
        return this.f7087h.p();
    }

    public final void l() {
        b bVar = this.f7089j;
        String str = this.f7083d;
        String str2 = this.f7084e;
        h.f.b.j.a((Object) str2, "bazaarName");
        AppDownloaderModel appDownloaderModel = new AppDownloaderModel(str, str2, true, d.a(new a.C0070a(), null, 1, null), null, null);
        bVar.a(appDownloaderModel);
    }

    public final void m() {
        this.f7089j.h(this.f7083d);
    }

    public final void a(String str) {
        C1125ra unused = C1103g.b(this, null, null, new BazaarForceUpdateViewModel$registerOnProgressChange$1(this, str, null), 3, null);
    }

    public final boolean a(EntityState entityState) {
        return entityState == EntityState.DOWNLOADING;
    }

    public final void a(DownloaderProgressInfo downloaderProgressInfo) {
        this.f7085f.b(downloaderProgressInfo);
    }
}
