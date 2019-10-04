package c.c.a.n.x;

import androidx.lifecycle.LiveData;
import c.c.a.c.h.g;
import c.c.a.d.f.p;
import c.c.a.e.d.s.c;
import c.c.a.p.I;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.Calendar;
import java.util.Locale;

/* compiled from: SettingViewModel.kt */
public final class a extends p {

    /* renamed from: d  reason: collision with root package name */
    public final g<Resource<None>> f7057d = new g<>();

    /* renamed from: e  reason: collision with root package name */
    public final c f7058e;

    /* renamed from: f  reason: collision with root package name */
    public final c.c.a.e.d.u.a f7059f;

    /* renamed from: g  reason: collision with root package name */
    public final I f7060g;

    /* renamed from: h  reason: collision with root package name */
    public final DownloadManager f7061h;

    public a(c cVar, c.c.a.e.d.u.a aVar, I i2, DownloadManager downloadManager) {
        j.b(cVar, "searchPredictionRepository");
        j.b(aVar, "settingsRepository");
        j.b(i2, "workManagerScheduler");
        j.b(downloadManager, "downloadManager");
        this.f7058e = cVar;
        this.f7059f = aVar;
        this.f7060g = i2;
        this.f7061h = downloadManager;
    }

    public final void c(boolean z) {
        DownloadManager.DownloadConnectionType downloadConnectionType;
        if (z) {
            downloadConnectionType = DownloadManager.DownloadConnectionType.SINGLE_CONNECTION;
        } else {
            downloadConnectionType = DownloadManager.DownloadConnectionType.PARALLEL_CONNECTION;
        }
        this.f7061h.a(downloadConnectionType);
    }

    public final void d(boolean z) {
        this.f7059f.b(z);
    }

    public final boolean e() {
        return this.f7059f.a();
    }

    public final void f() {
        if (this.f7059f.B()) {
            this.f7060g.j();
        } else {
            this.f7060g.b();
        }
    }

    public final LiveData<Resource<None>> g() {
        return this.f7057d;
    }

    public final void h() {
        C1125ra unused = C1103g.b(this, null, null, new SettingViewModel$clearSearchHistory$1(this, null), 3, null);
    }

    public final String i() {
        Locale k2 = k();
        return "http://cafebazaar.ir/client/about/?l=" + k2 + "&is_internal=true";
    }

    public final String j() {
        Locale k2 = k();
        return "https://cafebazaar.ir/copyright/?l=" + k2 + "&is_internal=true";
    }

    public final Locale k() {
        return this.f7059f.n();
    }

    public final String l() {
        Locale k2 = k();
        return "https://cafebazaar.ir/privacy/?l=" + k2 + "&is_internal=true";
    }

    public final Calendar m() {
        Calendar q = this.f7059f.q();
        if (q != null) {
            return q;
        }
        Calendar instance = Calendar.getInstance();
        j.a((Object) instance, "Calendar.getInstance()");
        return instance;
    }

    public final Calendar n() {
        Calendar r = this.f7059f.r();
        if (r != null) {
            return r;
        }
        Calendar instance = Calendar.getInstance();
        instance.add(11, 1);
        j.a((Object) instance, "currentTimeCalendar");
        return instance;
    }

    public final String o() {
        Locale k2 = k();
        return "https://cafebazaar.ir/terms/?l=" + k2 + "&is_internal=true";
    }

    public final boolean p() {
        return this.f7059f.y();
    }

    public final void q() {
        this.f7059f.D();
    }

    public final void e(boolean z) {
        this.f7059f.c(z);
    }

    public final void a(None none) {
        g<Resource<None>> gVar = this.f7057d;
        Resource resource = new Resource(ResourceState.Success.f12179a, null, null, 6, null);
        gVar.b(resource);
    }

    public final void a(Throwable th) {
        g<Resource<None>> gVar = this.f7057d;
        Resource resource = new Resource(ResourceState.Error.f12177a, null, null, 6, null);
        gVar.b(resource);
    }

    public static /* synthetic */ void a(a aVar, int i2, int i3, int i4, int i5, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i2 = aVar.m().get(11);
        }
        if ((i6 & 2) != 0) {
            i3 = aVar.m().get(12);
        }
        if ((i6 & 4) != 0) {
            i4 = aVar.n().get(11);
        }
        if ((i6 & 8) != 0) {
            i5 = aVar.n().get(12);
        }
        aVar.a(i2, i3, i4, i5);
    }

    public final void a(int i2, int i3, int i4, int i5) {
        this.f7059f.a(i2, i3, i4, i5);
    }
}
