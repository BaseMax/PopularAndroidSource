package com.farsitel.bazaar.ui.changelog.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.d.f.l;
import c.c.a.d.f.r;
import c.c.a.e;
import c.c.a.n.i.a.a;
import c.c.a.n.i.a.c;
import c.c.a.n.i.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteItem;
import h.f.b.j;
import h.h;
import java.util.HashMap;
import java.util.List;

/* compiled from: ReleaseNoteDialog.kt */
public final class ReleaseNoteDialog extends l<None> {
    public int sa;
    public final g ta = new g();
    public final String ua = "ReleaseNoteDialog";
    public c va;
    public HashMap wa;

    public void Qa() {
        HashMap hashMap = this.wa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.ua;
    }

    public int Ta() {
        return this.sa;
    }

    public View e(int i2) {
        if (this.wa == null) {
            this.wa = new HashMap();
        }
        View view = (View) this.wa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.wa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.dialog_release_note, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        E a2 = G.a((Fragment) this, Wa()).a(c.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        c cVar = (c) a2;
        cVar.f();
        cVar.e().a(ba(), new b(this));
        this.va = cVar;
        RecyclerView recyclerView = (RecyclerView) e(e.recyclerView);
        recyclerView.setLayoutManager(new LinearLayoutManager(Ha()));
        recyclerView.setAdapter(this.ta);
        DialogButtonLayout dialogButtonLayout = (DialogButtonLayout) e(e.dialogButtonLayout);
        String b2 = b((int) R.string.commit);
        j.a((Object) b2, "getString(R.string.commit)");
        dialogButtonLayout.setCommitText(b2);
        dialogButtonLayout.setOnClickListener(new a(this));
    }

    public final void a(List<? extends ReleaseNoteItem> list) {
        h hVar;
        if (list != null) {
            if (list == null || list.isEmpty()) {
                La();
                r Ra = Ra();
                if (Ra != null) {
                    Ra.onCancel();
                    hVar = h.f14579a;
                } else {
                    hVar = null;
                }
            } else {
                this.ta.a(list);
                hVar = h.f14579a;
            }
            if (hVar != null) {
                return;
            }
        }
        La();
        r Ra2 = Ra();
        if (Ra2 != null) {
            Ra2.onCancel();
            h hVar2 = h.f14579a;
        }
    }
}
