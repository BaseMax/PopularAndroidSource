package c.c.a.n.c.d;

import androidx.lifecycle.LiveData;
import b.r.r;
import c.c.a.d.f.p;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.CommonItemType;
import com.farsitel.bazaar.core.model.RecyclerState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.a.l;
import h.a.u;
import h.f.a.b;
import h.f.b.f;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BaseRecyclerViewModel.kt */
public abstract class g<T extends RecyclerData, Params> extends p {

    /* renamed from: d  reason: collision with root package name */
    public static final a f6389d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public final r<Resource<List<T>>> f6390e = new r<>();

    /* renamed from: f  reason: collision with root package name */
    public Resource<? extends List<? extends T>> f6391f;

    /* renamed from: g  reason: collision with root package name */
    public final List<Integer> f6392g = l.c(Integer.valueOf(CommonItemType.DESCRIPTION.getValue()), Integer.valueOf(R.layout.item_load_more));

    /* renamed from: h  reason: collision with root package name */
    public int f6393h = 24;

    /* renamed from: i  reason: collision with root package name */
    public boolean f6394i;

    /* compiled from: BaseRecyclerViewModel.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public final void a(ErrorModel errorModel) {
        j.b(errorModel, "throwable");
        r<Resource<List<T>>> rVar = this.f6390e;
        Resource a2 = rVar.a();
        List list = null;
        ResourceState resourceState = j.a((Object) a2 != null ? a2.d() : null, (Object) ResourceState.Loading.f12178a) ? ResourceState.Error.f12177a : RecyclerState.ErrorLoadMore.f12174a;
        Resource a3 = this.f6390e.a();
        if (a3 != null) {
            list = (List) a3.a();
        }
        rVar.b(new Resource(resourceState, list, errorModel));
    }

    public final void b(Params params) {
        Resource<? extends List<? extends T>> resource = this.f6391f;
        if (resource != null) {
            List list = (List) resource.a();
            if (list != null && (!list.isEmpty())) {
                this.f6390e.b(this.f6391f);
                return;
            }
        }
        Resource a2 = this.f6390e.a();
        if (!j.a((Object) a2 != null ? a2.d() : null, (Object) ResourceState.Loading.f12178a)) {
            r<Resource<List<T>>> rVar = this.f6390e;
            Resource resource2 = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
            rVar.b(resource2);
            d(params);
        }
    }

    public void c(boolean z) {
        this.f6394i = z;
    }

    public abstract void d(Params params);

    public void e(Params params) {
        this.f6391f = null;
        this.f6390e.b(new Resource(ResourceState.UnKnown.f12180a, null, null));
        b(params);
    }

    public boolean f() {
        return this.f6394i;
    }

    /* renamed from: g  reason: collision with other method in class */
    public final r<Resource<List<T>>> m0g() {
        return this.f6390e;
    }

    public int h() {
        Resource<? extends List<? extends T>> resource = this.f6391f;
        if (resource != null) {
            List list = (List) resource.a();
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (Object next : list) {
                    if (!this.f6392g.contains(Integer.valueOf(((RecyclerData) next).getViewType()))) {
                        arrayList.add(next);
                    }
                }
                return arrayList.size();
            }
        }
        return 0;
    }

    public int i() {
        return this.f6393h;
    }

    public final void c(Params params) {
        if (!f()) {
            Resource a2 = this.f6390e.a();
            List list = null;
            if (!j.a((Object) a2 != null ? a2.d() : null, (Object) RecyclerState.LoadingLoadMore.f12175a)) {
                r<Resource<List<T>>> rVar = this.f6390e;
                RecyclerState.LoadingLoadMore loadingLoadMore = RecyclerState.LoadingLoadMore.f12175a;
                Resource a3 = rVar.a();
                if (a3 != null) {
                    list = (List) a3.a();
                }
                Resource resource = new Resource(loadingLoadMore, list, null, 4, null);
                rVar.b(resource);
                d(params);
            }
        }
    }

    public final LiveData<Resource<List<T>>> g() {
        return this.f6390e;
    }

    public final Resource<List<T>> e() {
        return this.f6391f;
    }

    public final void a(List<? extends T> list) {
        j.b(list, "items");
        Resource a2 = this.f6390e.a();
        if (j.a((Object) a2 != null ? a2.d() : null, (Object) RecyclerState.LoadingLoadMore.f12175a)) {
            ResourceState.Success success = ResourceState.Success.f12179a;
            Resource<? extends List<? extends T>> resource = this.f6391f;
            List list2 = resource != null ? (List) resource.a() : null;
            if (list2 != null) {
                Resource resource2 = new Resource(success, u.b(list2, list), null, 4, null);
                this.f6391f = resource2;
                r<Resource<List<T>>> rVar = this.f6390e;
                Resource resource3 = new Resource(RecyclerState.SuccessLoadMore.f12176a, list, null, 4, null);
                rVar.b(resource3);
            } else {
                j.a();
                throw null;
            }
        } else {
            Resource resource4 = new Resource(ResourceState.Success.f12179a, list, null, 4, null);
            this.f6391f = resource4;
            this.f6390e.b(resource4);
        }
        c(list.isEmpty());
    }

    public final <E> void a(LiveData<E> liveData, b<? super E, ? extends List<? extends T>> bVar) {
        j.b(liveData, "source");
        j.b(bVar, "mapFunction");
        this.f6390e.a(liveData, new h(this, bVar));
    }
}
