package c.c.a.n.i;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.c.b.c;
import c.c.a.d.f.l;
import c.c.a.d.f.q;
import c.c.a.f.C0423g;
import c.c.a.n.y.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.data.entity.None;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import h.h;
import java.util.HashMap;

/* compiled from: BazaarForceUpdateDialogFragment.kt */
public final class f extends l<None> implements q {
    public final String sa = "BazaarForceUpdate";
    public a ta;
    public C0423g ua;
    public int va;
    public boolean wa;
    public q xa = this;
    public HashMap ya;

    public static final /* synthetic */ a a(f fVar) {
        a aVar = fVar.ta;
        if (aVar != null) {
            return aVar;
        }
        j.c("bazaarForceUpdateViewModel");
        throw null;
    }

    public static final /* synthetic */ C0423g b(f fVar) {
        C0423g gVar = fVar.ua;
        if (gVar != null) {
            return gVar;
        }
        j.c("dataBinding");
        throw null;
    }

    public void Qa() {
        HashMap hashMap = this.ya;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.sa;
    }

    public int Ta() {
        return this.va;
    }

    public q Ua() {
        return this.xa;
    }

    public boolean Xa() {
        return this.wa;
    }

    public final void Za() {
        C0423g gVar = this.ua;
        if (gVar != null) {
            gVar.F.setOnClickListener(new b(this));
            gVar.H.setOnClickListener(new c(this));
            return;
        }
        j.c("dataBinding");
        throw null;
    }

    public final void _a() {
        E a2 = G.a((Fragment) this, Wa()).a(a.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        a aVar = (a) a2;
        aVar.j();
        aVar.i().a(ba(), new d(this));
        this.ta = aVar;
        ab();
    }

    public final void ab() {
        a aVar = this.ta;
        if (aVar != null) {
            aVar.e().a(ba(), new e(this));
        } else {
            j.c("bazaarForceUpdateViewModel");
            throw null;
        }
    }

    public final void bb() {
        a aVar = this.ta;
        if (aVar == null) {
            j.c("bazaarForceUpdateViewModel");
            throw null;
        } else if (aVar.k()) {
            c(aVar.g());
        } else {
            aVar.l();
        }
    }

    public final void cb() {
        a aVar = this.ta;
        if (aVar != null) {
            aVar.m();
        } else {
            j.c("bazaarForceUpdateViewModel");
            throw null;
        }
    }

    public final void e(C0423g gVar) {
        String str;
        a(this, gVar, true, false, 2, null);
        MaterialButton materialButton = gVar.F;
        j.a((Object) materialButton, "getBazaarButton");
        Context E = E();
        if (E != null) {
            Resources resources = E.getResources();
            if (resources != null) {
                str = resources.getString(R.string.update);
                materialButton.setText(str);
            }
        }
        str = null;
        materialButton.setText(str);
    }

    public final void f(C0423g gVar) {
        String str;
        a(this, gVar, false, true, 1, null);
        TextView textView = gVar.C;
        j.a((Object) textView, "appDownloadState");
        Context E = E();
        if (E != null) {
            Resources resources = E.getResources();
            if (resources != null) {
                str = resources.getString(R.string.pause);
                textView.setText(str);
            }
        }
        str = null;
        textView.setText(str);
    }

    public final void g(C0423g gVar) {
        String str;
        a(this, gVar, false, true, 1, null);
        TextView textView = gVar.C;
        j.a((Object) textView, "appDownloadState");
        Context E = E();
        if (E != null) {
            Resources resources = E.getResources();
            if (resources != null) {
                str = resources.getString(R.string.waiting_for_network);
                textView.setText(str);
            }
        }
        str = null;
        textView.setText(str);
    }

    public final void h(C0423g gVar) {
        String str;
        a(this, gVar, false, true, 1, null);
        ProgressBar progressBar = gVar.B;
        j.a((Object) progressBar, "appDownloadProgressBar");
        progressBar.setProgress(0);
        TextView textView = gVar.C;
        j.a((Object) textView, "appDownloadState");
        Context E = E();
        if (E != null) {
            Resources resources = E.getResources();
            if (resources != null) {
                str = resources.getString(R.string.download_preparing);
                textView.setText(str);
            }
        }
        str = null;
        textView.setText(str);
    }

    public final void i(C0423g gVar) {
        a(this, gVar, false, false, 3, null);
    }

    public void m() {
        Ga().finish();
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public final void b(C0423g gVar) {
        String str;
        a(this, gVar, true, false, 2, null);
        MaterialButton materialButton = gVar.F;
        j.a((Object) materialButton, "getBazaarButton");
        Context E = E();
        if (E != null) {
            Resources resources = E.getResources();
            if (resources != null) {
                str = resources.getString(R.string.failed_download);
                materialButton.setText(str);
            }
        }
        str = null;
        materialButton.setText(str);
    }

    public final void c(C0423g gVar) {
        String str;
        a(this, gVar, true, false, 2, null);
        MaterialButton materialButton = gVar.F;
        j.a((Object) materialButton, "getBazaarButton");
        Context E = E();
        if (E != null) {
            Resources resources = E.getResources();
            if (resources != null) {
                str = resources.getString(R.string.failed_download);
                materialButton.setText(str);
            }
        }
        str = null;
        materialButton.setText(str);
    }

    public final void d(C0423g gVar) {
        String str;
        a(this, gVar, true, false, 2, null);
        MaterialButton materialButton = gVar.F;
        j.a((Object) materialButton, "getBazaarButton");
        Context E = E();
        if (E != null) {
            Resources resources = E.getResources();
            if (resources != null) {
                str = resources.getString(R.string.install);
                materialButton.setText(str);
            }
        }
        str = null;
        materialButton.setText(str);
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0423g a2 = C0423g.a(layoutInflater, viewGroup, false);
        j.a((Object) a2, "DialogForceUpdateBinding…flater, container, false)");
        this.ua = a2;
        C0423g gVar = this.ua;
        if (gVar != null) {
            View h2 = gVar.h();
            j.a((Object) h2, "dataBinding.root");
            return h2;
        }
        j.c("dataBinding");
        throw null;
    }

    public final void c(String str) {
        a(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        _a();
        Za();
        a aVar = this.ta;
        if (aVar != null) {
            a(this, aVar.f(), null, 2, null);
        } else {
            j.c("bazaarForceUpdateViewModel");
            throw null;
        }
    }

    public static /* synthetic */ void a(f fVar, EntityState entityState, DownloaderProgressInfo downloaderProgressInfo, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            downloaderProgressInfo = null;
        }
        fVar.a(entityState, downloaderProgressInfo);
    }

    public final void a(EntityState entityState, DownloaderProgressInfo downloaderProgressInfo) {
        h hVar;
        C0423g gVar = this.ua;
        if (gVar != null) {
            switch (a.f6422a[entityState.ordinal()]) {
                case 1:
                    i(gVar);
                    hVar = h.f14579a;
                    break;
                case 2:
                    e(gVar);
                    hVar = h.f14579a;
                    break;
                case 3:
                    g(gVar);
                    hVar = h.f14579a;
                    break;
                case 4:
                    f(gVar);
                    hVar = h.f14579a;
                    break;
                case 5:
                    b(gVar);
                    hVar = h.f14579a;
                    break;
                case 6:
                    a(gVar, downloaderProgressInfo);
                    hVar = h.f14579a;
                    break;
                case 7:
                    h(gVar);
                    hVar = h.f14579a;
                    break;
                case 8:
                case 9:
                    a(gVar);
                    hVar = h.f14579a;
                    break;
                case 10:
                    c(gVar);
                    hVar = h.f14579a;
                    break;
                case 11:
                    d(gVar);
                    hVar = h.f14579a;
                    break;
                default:
                    e(gVar);
                    hVar = h.f14579a;
                    break;
            }
            c.a(hVar);
            return;
        }
        j.c("dataBinding");
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x002f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(c.c.a.f.C0423g r7, com.farsitel.bazaar.common.model.DownloaderProgressInfo r8) {
        /*
            r6 = this;
            r2 = 0
            r3 = 1
            r4 = 1
            r5 = 0
            r0 = r6
            r1 = r7
            a(r0, r1, r2, r3, r4, r5)
            android.widget.TextView r0 = r7.C
            java.lang.String r1 = "appDownloadState"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            android.content.Context r1 = r6.E()
            if (r1 == 0) goto L_0x0024
            android.content.res.Resources r1 = r1.getResources()
            if (r1 == 0) goto L_0x0024
            r2 = 2131755147(0x7f10008b, float:1.9141165E38)
            java.lang.String r1 = r1.getString(r2)
            goto L_0x0025
        L_0x0024:
            r1 = 0
        L_0x0025:
            r0.setText(r1)
            if (r8 == 0) goto L_0x002f
            int r8 = r8.getProgress()
            goto L_0x0030
        L_0x002f:
            r8 = 0
        L_0x0030:
            android.widget.ProgressBar r7 = r7.B
            java.lang.String r0 = "appDownloadProgressBar"
            h.f.b.j.a((java.lang.Object) r7, (java.lang.String) r0)
            if (r8 != 0) goto L_0x003a
            goto L_0x003f
        L_0x003a:
            r0 = 4
            int r8 = java.lang.Math.max(r8, r0)
        L_0x003f:
            r7.setProgress(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.i.f.a(c.c.a.f.g, com.farsitel.bazaar.common.model.DownloaderProgressInfo):void");
    }

    public final void a(C0423g gVar) {
        String str;
        a(this, gVar, false, true, 1, null);
        TextView textView = gVar.C;
        j.a((Object) textView, "appDownloadState");
        Context E = E();
        if (E != null) {
            Resources resources = E.getResources();
            if (resources != null) {
                str = resources.getString(R.string.download_checking);
                textView.setText(str);
            }
        }
        str = null;
        textView.setText(str);
    }

    public static /* synthetic */ void a(f fVar, C0423g gVar, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        fVar.a(gVar, z, z2);
    }

    public final void a(C0423g gVar, boolean z, boolean z2) {
        if (z) {
            C0423g gVar2 = this.ua;
            if (gVar2 != null) {
                MaterialButton materialButton = gVar2.F;
                j.a((Object) materialButton, "dataBinding.getBazaarButton");
                c.c.a.d.b.l.c(materialButton);
            } else {
                j.c("dataBinding");
                throw null;
            }
        } else {
            C0423g gVar3 = this.ua;
            if (gVar3 != null) {
                MaterialButton materialButton2 = gVar3.F;
                j.a((Object) materialButton2, "dataBinding.getBazaarButton");
                c.c.a.d.b.l.b(materialButton2);
            } else {
                j.c("dataBinding");
                throw null;
            }
        }
        if (z2) {
            C0423g gVar4 = this.ua;
            if (gVar4 != null) {
                Group group = gVar4.A;
                j.a((Object) group, "dataBinding.appDownloadGroup");
                c.c.a.d.b.l.c(group);
                return;
            }
            j.c("dataBinding");
            throw null;
        }
        C0423g gVar5 = this.ua;
        if (gVar5 != null) {
            Group group2 = gVar5.A;
            j.a((Object) group2, "dataBinding.appDownloadGroup");
            c.c.a.d.b.l.a(group2);
            return;
        }
        j.c("dataBinding");
        throw null;
    }
}
