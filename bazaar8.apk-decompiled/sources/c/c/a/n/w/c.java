package c.c.a.n.w;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.c.a.b;
import c.c.a.d.f.p;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.SearchPrediction;
import com.farsitel.bazaar.ui.search.SearchHistoryItem;
import h.a.m;
import h.c.e;
import h.f.a.a;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.va;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* compiled from: SearchBoxViewModel.kt */
public final class c extends p {

    /* renamed from: d  reason: collision with root package name */
    public Timer f7034d;

    /* renamed from: e  reason: collision with root package name */
    public TimerTask f7035e;

    /* renamed from: f  reason: collision with root package name */
    public String f7036f;

    /* renamed from: g  reason: collision with root package name */
    public final t<Resource<List<SearchHistoryItem>>> f7037g = new t<>();

    /* renamed from: h  reason: collision with root package name */
    public C1125ra f7038h = va.a(null, 1, null);

    /* renamed from: i  reason: collision with root package name */
    public final c.c.a.e.d.s.c f7039i;

    public c(c.c.a.e.d.s.c cVar) {
        j.b(cVar, "searchPredictionRepository");
        this.f7039i = cVar;
    }

    public final List<SearchHistoryItem> f() {
        Resource a2 = this.f7037g.a();
        if (a2 != null) {
            return (List) a2.a();
        }
        return null;
    }

    public final LiveData<Resource<List<SearchHistoryItem>>> g() {
        return this.f7037g;
    }

    public void d() {
        super.d();
        C1125ra.a.a(this.f7038h, null, 1, null);
    }

    public final e e() {
        return b.f4693c.b().plus(this.f7038h);
    }

    public final void a(a<h> aVar) {
        SearchBoxViewModel$scheduleSearchTask$1 searchBoxViewModel$scheduleSearchTask$1 = new SearchBoxViewModel$scheduleSearchTask$1(this);
        new SearchBoxViewModel$scheduleSearchTask$2(this, aVar).invoke();
        searchBoxViewModel$scheduleSearchTask$1.invoke();
        Timer timer = this.f7034d;
        if (timer != null) {
            timer.schedule(this.f7035e, 500);
        } else {
            j.a();
            throw null;
        }
    }

    public final void a(String str) {
        j.b(str, "searchQuery");
        if (!j.a((Object) this.f7036f, (Object) str)) {
            this.f7036f = str;
            C1125ra.a.a(this.f7038h, null, 1, null);
            a((a<h>) new SearchBoxViewModel$performSearch$1(this, str));
        }
    }

    public final void a(List<? extends SearchPrediction> list) {
        t<Resource<List<SearchHistoryItem>>> tVar = this.f7037g;
        ResourceState.Success success = ResourceState.Success.f12179a;
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (SearchPrediction a2 : list) {
            arrayList.add(c.c.a.n.g.a.a(a2));
        }
        tVar.a(new Resource(success, arrayList, null));
    }

    public final void a(ErrorModel errorModel) {
        this.f7036f = null;
        this.f7037g.a(new Resource(ResourceState.Error.f12177a, null, errorModel));
    }

    public final void a(SearchHistoryItem searchHistoryItem) {
        j.b(searchHistoryItem, "searchHistoryItem");
        C1125ra unused = C1103g.b(this, null, null, new SearchBoxViewModel$removeHistoryItem$1(this, searchHistoryItem, null), 3, null);
    }
}
