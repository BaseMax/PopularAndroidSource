package com.farsitel.bazaar.ui.cinema.download;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.d.b.h;
import c.c.a.d.d.c;
import c.c.a.d.f.e;
import c.c.a.n.j.c.a;
import c.c.a.n.j.c.b;
import c.c.a.n.j.c.d;
import c.c.a.n.j.c.n;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: VideoDownloadFragment.kt */
public final class VideoDownloadFragment extends e {
    public ProgressBar la;
    public View ma;
    public View na;
    public RecyclerView oa;
    public n pa;
    public a qa;
    public d ra;
    public HashMap sa;

    public void Qa() {
        HashMap hashMap = this.sa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Ua() {
        View view = this.ma;
        if (view != null) {
            view.setVisibility(8);
            ProgressBar progressBar = this.la;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            } else {
                j.c("progressBar");
                throw null;
            }
        } else {
            j.c("progressBarParent");
            throw null;
        }
    }

    public final void Va() {
        this.qa = new a();
        a aVar = this.qa;
        if (aVar != null) {
            aVar.a(new b(this));
            RecyclerView recyclerView = this.oa;
            if (recyclerView != null) {
                recyclerView.setAdapter(this.qa);
            } else {
                j.c("recyclerView");
                throw null;
            }
        } else {
            j.a();
            throw null;
        }
    }

    public final void Wa() {
        Xa();
    }

    public final void Xa() {
        View view = this.ma;
        if (view != null) {
            view.setVisibility(0);
            ProgressBar progressBar = this.la;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            } else {
                j.c("progressBar");
                throw null;
            }
        } else {
            j.c("progressBarParent");
            throw null;
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        d.a aVar = d.f6483a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ra = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Sa()).a(n.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        n nVar = (n) a2;
        d dVar = this.ra;
        if (dVar != null) {
            String d2 = dVar.d();
            d dVar2 = this.ra;
            if (dVar2 != null) {
                String e2 = dVar2.e();
                d dVar3 = this.ra;
                if (dVar3 != null) {
                    String c2 = dVar3.c();
                    d dVar4 = this.ra;
                    if (dVar4 != null) {
                        String a3 = dVar4.a();
                        d dVar5 = this.ra;
                        if (dVar5 != null) {
                            nVar.a(d2, e2, c2, a3, dVar5.b());
                            h.a(this, nVar.e(), new VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1(this));
                            this.pa = nVar;
                            return;
                        }
                        j.c("videoDownloadFragmentArg");
                        throw null;
                    }
                    j.c("videoDownloadFragmentArg");
                    throw null;
                }
                j.c("videoDownloadFragmentArg");
                throw null;
            }
            j.c("videoDownloadFragmentArg");
            throw null;
        }
        j.c("videoDownloadFragmentArg");
        throw null;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_video_download, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        b(view);
        Va();
    }

    public final void a(ErrorModel errorModel) {
        if (ea()) {
            Ua();
            c Ra = Ra();
            Context Ha = Ha();
            j.a((Object) Ha, "requireContext()");
            Ra.a(c.c.a.d.b.d.b(Ha, errorModel));
        }
    }

    public final void a(ArrayList<RecyclerData> arrayList) {
        if (ea()) {
            Ua();
            a aVar = this.qa;
            if (aVar != null) {
                aVar.a(arrayList);
            }
        }
    }

    public final void a(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof VideoDownloadQualityItem) {
            a((VideoDownloadQualityItem) recyclerData);
            La();
            return;
        }
        c.c.a.c.c.a.f4699b.a((Throwable) new IllegalStateException("unknown state"));
    }

    public final void a(VideoDownloadQualityItem videoDownloadQualityItem) {
        n nVar = this.pa;
        if (nVar != null) {
            nVar.a(videoDownloadQualityItem);
        } else {
            j.c("viewModel");
            throw null;
        }
    }

    public final void b(View view) {
        View findViewById = view.findViewById(R.id.bottomSheetContainer);
        j.a((Object) findViewById, "view.findViewById(R.id.bottomSheetContainer)");
        this.na = findViewById;
        View findViewById2 = view.findViewById(R.id.loadingProgress);
        j.a((Object) findViewById2, "view.findViewById(R.id.loadingProgress)");
        this.la = (ProgressBar) findViewById2;
        View findViewById3 = view.findViewById(R.id.bottomSheetRecyclerView);
        j.a((Object) findViewById3, "view.findViewById(R.id.bottomSheetRecyclerView)");
        this.oa = (RecyclerView) findViewById3;
        RecyclerView recyclerView = this.oa;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            RecyclerView recyclerView2 = this.oa;
            if (recyclerView2 != null) {
                recyclerView2.setLayoutManager(new LinearLayoutManager(Ha()));
                View findViewById4 = view.findViewById(R.id.progressParent);
                j.a((Object) findViewById4, "view.findViewById<View>(R.id.progressParent)");
                this.ma = findViewById4;
                View view2 = this.na;
                if (view2 != null) {
                    BottomSheetBehavior b2 = BottomSheetBehavior.b(view2);
                    j.a((Object) b2, "BottomSheetBehavior.from(bottomSheetContainer)");
                    a((BottomSheetBehavior<View>) b2);
                    view.getViewTreeObserver().addOnGlobalLayoutListener(new c.c.a.n.j.c.c(this, view));
                    return;
                }
                j.c("bottomSheetContainer");
                throw null;
            }
            j.c("recyclerView");
            throw null;
        }
        j.c("recyclerView");
        throw null;
    }
}
