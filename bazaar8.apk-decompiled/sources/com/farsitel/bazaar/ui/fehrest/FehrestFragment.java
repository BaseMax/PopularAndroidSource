package com.farsitel.bazaar.ui.fehrest;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.c.d.e;
import c.c.a.n.c.a.b;
import c.c.a.n.c.c.n;
import c.c.a.n.l.i;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.PageVisit;
import com.farsitel.bazaar.analytics.model.where.PageScreen;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.TypeCastException;

/* compiled from: FehrestFragment.kt */
public class FehrestFragment extends n<FehrestParams, i> {
    public static final a za = new a(null);
    public int Aa = R.layout.fragment_fehrest;
    public boolean Ba = true;
    public boolean Ca = true;
    public HashMap Da;

    /* compiled from: FehrestFragment.kt */
    public static final class a {
        public a() {
        }

        public final FehrestFragment a(FehrestParams fehrestParams) {
            j.b(fehrestParams, "fehrestParams");
            FehrestFragment fehrestFragment = new FehrestFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("arg", fehrestParams);
            fehrestFragment.m(bundle);
            return fehrestFragment;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public void La() {
        HashMap hashMap = this.Da;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Ya() {
        return this.Aa;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        k(Za().b());
        if (zb()) {
            return super.a(layoutInflater, viewGroup, bundle);
        }
        return layoutInflater.inflate(R.layout.fragment_fehrest, viewGroup, false);
    }

    public boolean bb() {
        return this.Ca;
    }

    public View e(int i2) {
        if (this.Da == null) {
            this.Da = new HashMap();
        }
        View view = (View) this.Da.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Da.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.Ba;
    }

    public void k(boolean z) {
        this.Ca = z;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public void ta() {
        super.ta();
        String referrer = Za().getReferrer();
        if (referrer == null) {
            referrer = e.a();
        }
        b.a(this, new PageVisit(referrer), null, null, 6, null);
    }

    public final boolean zb() {
        return Ya() != R.layout.fragment_fehrest;
    }

    public PageScreen Sa() {
        return new PageScreen(Za().c());
    }

    public FehrestParams Za() {
        Bundle C = C();
        if (C != null) {
            Serializable serializable = C.getSerializable("arg");
            if (serializable != null) {
                return (FehrestParams) serializable;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.ui.fehrest.FehrestParams");
        }
        j.a();
        throw null;
    }

    public i jb() {
        E a2 = G.a((Fragment) this, Ra()).a(i.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (i) a2;
    }
}
