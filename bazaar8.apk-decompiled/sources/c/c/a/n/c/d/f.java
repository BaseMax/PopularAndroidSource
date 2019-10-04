package c.c.a.n.c.d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.LayoutAnimationController;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import b.y.a.P;
import c.c.a.d;
import c.c.a.d.b.l;
import c.c.a.i.c;
import c.c.a.n.c.a.b;
import c.c.a.n.c.d.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.core.model.RecyclerState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.ui.base.recycler.loadmore.MoreItem;
import com.farsitel.bazaar.ui.base.recycler.loadmore.State;
import com.google.android.material.appbar.AppBarLayout;
import h.f.a.a;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: BaseRecyclerDaggerFragment.kt */
public abstract class f<T extends RecyclerData, Params, VM extends g<T, Params>> extends b {
    public int ia = R.layout.fragment_recycler;
    public int ja = R.layout.view_empty;
    public boolean ka = true;
    public final int la = 10;
    public boolean ma;
    public boolean na = true;
    public boolean oa = true;
    public m<T> pa;
    public RecyclerView qa;
    public View ra;
    public ViewGroup sa;
    public VM ta;
    public RecyclerView.i ua;
    public HashMap va;

    public void La() {
        HashMap hashMap = this.va;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public a<h> Pa() {
        return new BaseRecyclerDaggerFragment$retryLoadData$1(this);
    }

    public abstract a<T> Ua();

    public final boolean Va() {
        VM vm = this.ta;
        if (vm != null) {
            Resource e2 = vm.e();
            if (e2 != null) {
                List list = (List) e2.a();
                if (list != null && !list.isEmpty()) {
                    return false;
                }
            }
            return true;
        }
        j.c("viewModel");
        throw null;
    }

    public int Wa() {
        return this.ja;
    }

    public RecyclerView.h Xa() {
        return new c.c.a.o.a.a(0, 0);
    }

    public int Ya() {
        return this.ia;
    }

    public abstract Params Za();

    public final RecyclerView _a() {
        RecyclerView recyclerView = this.qa;
        if (recyclerView != null) {
            return recyclerView;
        }
        j.c("recyclerView");
        throw null;
    }

    public boolean ab() {
        return this.oa;
    }

    public final void b(List<? extends T> list) {
        this.ma = false;
        d(list);
    }

    public boolean bb() {
        return this.ka;
    }

    public void c(View view) {
        j.b(view, "view");
        super.c(view);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recyclerView);
        if (recyclerView != null) {
            this.qa = recyclerView;
            this.ra = view.findViewById(R.id.loading);
            return;
        }
        throw new RuntimeException("RecyclerView must not be null");
    }

    public final VM cb() {
        VM vm = this.ta;
        if (vm != null) {
            return vm;
        }
        j.c("viewModel");
        throw null;
    }

    public final void d(List<? extends T> list) {
        if (list != null) {
            RecyclerView recyclerView = this.qa;
            if (recyclerView != null) {
                RecyclerView.a adapter = recyclerView.getAdapter();
                if (adapter != null) {
                    ((a) adapter).a(list);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.ui.base.recycler.BaseRecyclerAdapter<T>");
            }
            j.c("recyclerView");
            throw null;
        }
    }

    public final void db() {
        Oa();
        eb();
        gb();
        nb();
    }

    public View e(int i2) {
        if (this.va == null) {
            this.va = new HashMap();
        }
        View view = (View) this.va.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.va.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public void e(Bundle bundle) {
        j.b(bundle, "outState");
        super.e(bundle);
        if (this.qa != null) {
            o(bundle);
        }
    }

    public final void eb() {
        ViewGroup viewGroup = this.sa;
        if (viewGroup != null) {
            l.a(viewGroup);
        }
    }

    public final void fb() {
        View view = this.ra;
        if (view != null) {
            l.a(view);
        }
    }

    public final void gb() {
        RecyclerView recyclerView = this.qa;
        if (recyclerView != null) {
            l.a(recyclerView);
        } else {
            j.c("recyclerView");
            throw null;
        }
    }

    public boolean hb() {
        return this.na;
    }

    public final b ib() {
        return new b(this);
    }

    public abstract VM jb();

    public void k(boolean z) {
        this.ka = z;
    }

    public final void kb() {
        RecyclerView.i iVar = this.ua;
        if (iVar != null) {
            int a2 = a(iVar);
            RecyclerView.i iVar2 = this.ua;
            if (iVar2 != null) {
                int e2 = iVar2.e();
                RecyclerView.i iVar3 = this.ua;
                if (iVar3 != null) {
                    int j2 = iVar3.j();
                    int i2 = j2 - a2;
                    if ((i2 <= this.la || (i2 == 0 && j2 > e2)) && !this.ma && hb()) {
                        VM vm = this.ta;
                        if (vm != null) {
                            vm.c(Za());
                        } else {
                            j.c("viewModel");
                            throw null;
                        }
                    }
                } else {
                    j.a();
                    throw null;
                }
            } else {
                j.a();
                throw null;
            }
        } else {
            j.a();
            throw null;
        }
    }

    public final void lb() {
        if (this.qa != null) {
            View aa = aa();
            if (aa != null) {
                AppBarLayout appBarLayout = (AppBarLayout) aa.findViewById(R.id.appBarLayout);
                if (appBarLayout != null) {
                    appBarLayout.setExpanded(true);
                }
            }
            RecyclerView recyclerView = this.qa;
            if (recyclerView != null) {
                recyclerView.l(0);
            } else {
                j.c("recyclerView");
                throw null;
            }
        }
    }

    public void mb() {
        ViewGroup viewGroup = this.sa;
        if (viewGroup != null) {
            l.c(viewGroup);
        }
    }

    public void n(Bundle bundle) {
        j.b(bundle, "bundle");
        super.n(bundle);
        int i2 = bundle.getInt("savedFirstVisiblePosition", 0);
        int i3 = bundle.getInt("savedOffsetFirstVisiblePosition", 0);
        RecyclerView recyclerView = this.qa;
        if (recyclerView != null) {
            RecyclerView.i layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                RecyclerView recyclerView2 = this.qa;
                if (recyclerView2 != null) {
                    recyclerView2.post(new c(this, i2, i3));
                } else {
                    j.c("recyclerView");
                    throw null;
                }
            } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                RecyclerView recyclerView3 = this.qa;
                if (recyclerView3 != null) {
                    recyclerView3.post(new d(this, i2, i3));
                } else {
                    j.c("recyclerView");
                    throw null;
                }
            }
            k(false);
            return;
        }
        j.c("recyclerView");
        throw null;
    }

    public final void nb() {
        View view = this.ra;
        if (view != null) {
            l.c(view);
        }
    }

    public void o(Bundle bundle) {
        j.b(bundle, "outState");
        RecyclerView recyclerView = this.qa;
        if (recyclerView != null) {
            View childAt = recyclerView.getChildAt(0);
            if (childAt != null) {
                RecyclerView recyclerView2 = this.qa;
                if (recyclerView2 != null) {
                    RecyclerView.i layoutManager = recyclerView2.getLayoutManager();
                    if (layoutManager != null) {
                        j.a((Object) layoutManager, "recyclerView.layoutManager!!");
                        bundle.putInt("savedFirstVisiblePosition", a(layoutManager));
                        bundle.putInt("savedOffsetFirstVisiblePosition", childAt.getTop());
                        return;
                    }
                    j.a();
                    throw null;
                }
                j.c("recyclerView");
                throw null;
            }
            return;
        }
        j.c("recyclerView");
        throw null;
    }

    public final void ob() {
        this.ma = true;
        a(new MoreItem(State.Loading, null, 2, null));
    }

    public final void pb() {
        RecyclerView recyclerView = this.qa;
        if (recyclerView != null) {
            l.c(recyclerView);
        } else {
            j.c("recyclerView");
            throw null;
        }
    }

    public void qa() {
        RecyclerView recyclerView = this.qa;
        if (recyclerView != null) {
            recyclerView.setAdapter(null);
            RecyclerView recyclerView2 = this.qa;
            if (recyclerView2 != null) {
                recyclerView2.c();
                this.pa = null;
                ViewGroup viewGroup = this.sa;
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                }
                this.sa = null;
                super.qa();
                La();
                return;
            }
            j.c("recyclerView");
            throw null;
        }
        j.c("recyclerView");
        throw null;
    }

    public final void a(m<T> mVar) {
        this.pa = mVar;
    }

    public final void b(ErrorModel errorModel) {
        this.ma = false;
        c(errorModel);
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(Ya(), viewGroup, false);
        j.a((Object) inflate, "view");
        a(inflate, viewGroup);
        b(inflate);
        return inflate;
    }

    public final void c(List<? extends T> list) {
        RecyclerView recyclerView = this.qa;
        if (recyclerView != null) {
            RecyclerView.a adapter = recyclerView.getAdapter();
            if (adapter != null) {
                ((a) adapter).a(new ArrayList(list));
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.ui.base.recycler.BaseRecyclerAdapter<T>");
        }
        j.c("recyclerView");
        throw null;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        VM jb = jb();
        c.c.a.d.b.h.a(this, jb.g(), new BaseRecyclerDaggerFragment$onViewCreated$1$1(this));
        this.ta = jb;
        if (bundle != null) {
            n(bundle);
        }
        VM vm = this.ta;
        LayoutAnimationController layoutAnimationController = null;
        if (vm != null) {
            vm.b(Za());
            this.ua = new LinearLayoutManager(Ha(), 1, false);
            a Ua = Ua();
            Ua.a(this.pa);
            Ua.a((c.c.a.n.c.b.a) ib());
            RecyclerView recyclerView = this.qa;
            if (recyclerView != null) {
                recyclerView.setHasFixedSize(false);
                RecyclerView recyclerView2 = this.qa;
                if (recyclerView2 != null) {
                    recyclerView2.setAdapter(Ua);
                    if (ab()) {
                        recyclerView.setPadding(0, 0, 0, 0);
                    }
                    RecyclerView.f itemAnimator = recyclerView.getItemAnimator();
                    if (itemAnimator != null) {
                        itemAnimator.a(0);
                    }
                    RecyclerView.f itemAnimator2 = recyclerView.getItemAnimator();
                    if (!(itemAnimator2 instanceof P)) {
                        itemAnimator2 = null;
                    }
                    P p = (P) itemAnimator2;
                    if (p != null) {
                        p.a(false);
                    }
                    if (bb()) {
                        layoutAnimationController = AnimationUtils.loadLayoutAnimation(Ha(), R.anim.recycler_view_fall_down);
                    }
                    recyclerView.setLayoutAnimation(layoutAnimationController);
                    recyclerView.setLayoutManager(this.ua);
                    recyclerView.a((RecyclerView.n) new e(this, Ua));
                    while (recyclerView.getItemDecorationCount() > 0) {
                        recyclerView.j(0);
                    }
                    RecyclerView.h Xa = Xa();
                    if (Xa != null) {
                        recyclerView.a(Xa);
                    }
                    k(false);
                    return;
                }
                j.c("recyclerView");
                throw null;
            }
            j.c("recyclerView");
            throw null;
        }
        j.c("viewModel");
        throw null;
    }

    public final void c(ErrorModel errorModel) {
        a(new MoreItem(State.Error, errorModel));
    }

    public final int a(RecyclerView.i iVar) {
        if (iVar instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) iVar).H();
        }
        if (!(iVar instanceof StaggeredGridLayoutManager)) {
            return 0;
        }
        int[] iArr = new int[0];
        ((StaggeredGridLayoutManager) iVar).a(iArr);
        if (!(iArr.length == 0)) {
            return iArr[0];
        }
        return 0;
    }

    public final void a(Resource<? extends List<? extends T>> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                a((List) resource.a());
            } else if (j.a((Object) d2, (Object) RecyclerState.SuccessLoadMore.f12176a)) {
                b((List) resource.a());
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                ErrorModel c2 = resource.c();
                if (c2 != null) {
                    a(c2);
                    c.c.a.c.c.a.f4699b.b(c2);
                }
            } else if (j.a((Object) d2, (Object) RecyclerState.ErrorLoadMore.f12174a)) {
                ErrorModel c3 = resource.c();
                if (c3 != null) {
                    b(c3);
                    c.c.a.c.c.a.f4699b.b(c3);
                }
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                db();
            } else if (j.a((Object) d2, (Object) RecyclerState.LoadingLoadMore.f12175a)) {
                ob();
            } else if (j.a((Object) d2, (Object) ResourceState.UnKnown.f12180a)) {
                RecyclerView recyclerView = this.qa;
                if (recyclerView != null) {
                    RecyclerView.a adapter = recyclerView.getAdapter();
                    if (adapter != null) {
                        ((a) adapter).a(new ArrayList());
                        RecyclerView recyclerView2 = this.qa;
                        if (recyclerView2 != null) {
                            RecyclerView.a adapter2 = recyclerView2.getAdapter();
                            if (adapter2 != null) {
                                ((a) adapter2).d();
                                RecyclerView recyclerView3 = this.qa;
                                if (recyclerView3 != null) {
                                    recyclerView3.k(0);
                                } else {
                                    j.c("recyclerView");
                                    throw null;
                                }
                            } else {
                                throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.ui.base.recycler.BaseRecyclerAdapter<T>");
                            }
                        } else {
                            j.c("recyclerView");
                            throw null;
                        }
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.ui.base.recycler.BaseRecyclerAdapter<T>");
                    }
                } else {
                    j.c("recyclerView");
                    throw null;
                }
            }
        }
    }

    public final void a(List<? extends T> list) {
        fb();
        Oa();
        if (list == null || list.isEmpty()) {
            gb();
            mb();
            return;
        }
        pb();
        eb();
        c(list);
    }

    public final void a(ErrorModel errorModel) {
        fb();
        gb();
        eb();
        a(errorModel, !Va());
    }

    public final void a(View view, ViewGroup viewGroup) {
        j.b(view, "view");
        this.sa = (ViewGroup) view.findViewById(R.id.emptyView);
        ViewGroup viewGroup2 = this.sa;
        if (viewGroup2 != null) {
            viewGroup2.addView(M().inflate(Wa(), viewGroup, false));
        }
    }

    public final void a(MoreItem moreItem) {
        j.b(moreItem, "item");
        RecyclerView recyclerView = this.qa;
        if (recyclerView != null) {
            RecyclerView.a adapter = recyclerView.getAdapter();
            if (!(adapter instanceof a)) {
                adapter = null;
            }
            a aVar = (a) adapter;
            if (aVar != null) {
                aVar.a(moreItem);
            } else {
                j.a();
                throw null;
            }
        } else {
            j.c("recyclerView");
            throw null;
        }
    }

    public final void a(String str, String str2, String str3) {
        j.b(str, "slug");
        j.b(str2, "title");
        j.b(str3, "referrer");
        c.a(b.w.b.b.a(this), d.l.a(d.f4738a, str, false, str2, str3, 2, null));
    }
}
