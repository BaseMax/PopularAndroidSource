package com.farsitel.bazaar.ui.bookmark;

import android.view.View;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.n.c.c.n;
import c.c.a.n.c.d.l;
import c.c.a.n.d.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.BookmarkedAppsScreen;
import com.farsitel.bazaar.data.entity.None;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: BookmarkFragment.kt */
public final class BookmarkFragment extends n<None, b> {
    public static final /* synthetic */ i[] za;
    public int Aa = R.layout.view_empty_link_fehrest_app;
    public final c Ba = d.a(new BookmarkFragment$titleName$2(this));
    public boolean Ca;
    public HashMap Da;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(BookmarkFragment.class), "titleName", "getTitleName()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        za = new i[]{propertyReference1Impl};
    }

    public void La() {
        HashMap hashMap = this.Da;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Wa() {
        return this.Aa;
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
        return this.Ca;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public l qb() {
        return new l(R.string.title_bookmark_download_app_empty, R.drawable.ic_bookmark_black_24dp, R.string.title_action_top_chart_empty, new BookmarkFragment$emptyViewData$1(this));
    }

    public String rb() {
        c cVar = this.Ba;
        i iVar = za[0];
        return (String) cVar.getValue();
    }

    public BookmarkedAppsScreen Sa() {
        return new BookmarkedAppsScreen();
    }

    public None Za() {
        return None.INSTANCE;
    }

    public b jb() {
        E a2 = G.a((Fragment) this, Ra()).a(b.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (b) a2;
    }
}
