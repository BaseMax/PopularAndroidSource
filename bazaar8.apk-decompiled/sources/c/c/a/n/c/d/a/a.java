package c.c.a.n.c.d.a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.d.b.h;
import c.c.a.d.b.l;
import c.c.a.n.c.d.f;
import c.c.a.n.c.d.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.google.android.material.appbar.AppBarLayout;
import h.f.b.j;
import java.util.HashMap;
import java.util.List;

/* compiled from: BaseDetailToolbarFragment.kt */
public abstract class a<T extends RecyclerData, Params, VM extends g<T, Params>> extends f<T, Params, VM> {
    public static final C0092a wa = new C0092a(null);
    public HashMap Aa;
    public f xa;
    public View ya;
    public int za;

    /* renamed from: c.c.a.n.c.d.a.a$a  reason: collision with other inner class name */
    /* compiled from: BaseDetailToolbarFragment.kt */
    public static final class C0092a {
        public C0092a() {
        }

        public /* synthetic */ C0092a(h.f.b.f fVar) {
            this();
        }
    }

    public void La() {
        HashMap hashMap = this.Aa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void b(Resource<? extends List<? extends T>> resource) {
        if (j.a((Object) resource != null ? resource.d() : null, (Object) ResourceState.Success.f12179a)) {
            String qb = qb();
            if (qb == null || qb.length() == 0) {
                View view = this.ya;
                if (view != null) {
                    l.a(view);
                    return;
                }
                return;
            }
            View view2 = this.ya;
            if (view2 != null) {
                view2.setOnClickListener(new b(this));
            }
        }
    }

    public void c(View view) {
        j.b(view, "view");
        super.c(view);
        View findViewById = view.findViewById(R.id.toolbarBackButton);
        AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(R.id.appBarLayout);
        TextView textView = (TextView) view.findViewById(R.id.toolbarTitle);
        this.ya = view.findViewById(R.id.toolbarShare);
        f fVar = this.xa;
        int a2 = fVar != null ? fVar.a() : this.za;
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        Toolbar Na = Na();
        j.a((Object) appBarLayout, "appBarLayout");
        j.a((Object) textView, "toolbarTitleTextView");
        f fVar2 = new f(Ha, Na, appBarLayout, textView, a2);
        this.xa = fVar2;
        RecyclerView _a = _a();
        f fVar3 = this.xa;
        if (fVar3 != null) {
            _a.a((RecyclerView.n) fVar3);
            findViewById.setOnClickListener(new c(this));
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.Aa == null) {
            this.Aa = new HashMap();
        }
        View view = (View) this.Aa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Aa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public void n(Bundle bundle) {
        j.b(bundle, "bundle");
        super.n(bundle);
        int i2 = bundle.getInt("totalScroll");
        f fVar = this.xa;
        if (fVar != null) {
            fVar.a(i2);
        }
    }

    public void o(Bundle bundle) {
        j.b(bundle, "outState");
        super.o(bundle);
        f fVar = this.xa;
        bundle.putInt("totalScroll", fVar != null ? fVar.a() : 0);
    }

    public void qa() {
        View view = this.ya;
        if (view != null) {
            view.setOnClickListener(null);
        }
        this.ya = null;
        f fVar = this.xa;
        this.za = fVar != null ? fVar.a() : 0;
        this.xa = null;
        super.qa();
        La();
    }

    public abstract String qb();

    public final f rb() {
        return this.xa;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        h.a(this, cb().g(), new BaseDetailToolbarFragment$onViewCreated$1(this));
    }
}
