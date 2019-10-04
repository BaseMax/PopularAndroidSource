package c.c.a.n.c.c.a.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import c.c.a.c.b.c;
import c.c.a.d.a.b;
import c.c.a.d.b.l;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import h.f.b.f;
import h.f.b.j;
import h.h;
import java.lang.ref.WeakReference;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: AppListDownloadView.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public PageAppItem f6295a;

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference<Context> f6296b;

    /* renamed from: c  reason: collision with root package name */
    public final View f6297c;

    /* renamed from: d  reason: collision with root package name */
    public final Button f6298d;

    /* renamed from: e  reason: collision with root package name */
    public final View f6299e;

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f6300f;

    /* renamed from: g  reason: collision with root package name */
    public final View f6301g;

    /* renamed from: h  reason: collision with root package name */
    public final View f6302h;

    public b(WeakReference<Context> weakReference, View view, Button button, View view2, ProgressBar progressBar, View view3, View view4) {
        j.b(weakReference, "contextRef");
        j.b(view, "itemView");
        j.b(button, "primaryButton");
        j.b(view2, "cancelDownload");
        j.b(progressBar, "progressBar");
        this.f6296b = weakReference;
        this.f6297c = view;
        this.f6298d = button;
        this.f6299e = view2;
        this.f6300f = progressBar;
        this.f6301g = view3;
        this.f6302h = view4;
    }

    public final void a(Boolean bool) {
        String str;
        if (j.a((Object) bool, (Object) false)) {
            a(this, false, false, false, 7, null);
            if (((Context) this.f6296b.get()) != null) {
                this.f6297c.setAlpha(0.4f);
                return;
            }
            return;
        }
        a(this, true, false, false, 6, null);
        Button button = this.f6298d;
        Context context = (Context) this.f6296b.get();
        if (context != null) {
            Resources resources = context.getResources();
            if (resources != null) {
                str = resources.getString(R.string.not_compatible);
                button.setText(str);
                this.f6298d.setEnabled(false);
            }
        }
        str = null;
        button.setText(str);
        this.f6298d.setEnabled(false);
    }

    public final void b(PageAppItem pageAppItem) {
        a(this, true, false, false, 6, null);
        Context context = (Context) this.f6296b.get();
        if (context != null) {
            Button button = this.f6298d;
            j.a((Object) context, "context");
            button.setText(pageAppItem.getInstallButtonLabel(context));
        }
    }

    public final void c(PageAppItem pageAppItem) {
        this.f6295a = pageAppItem;
    }

    public final void d() {
        String str;
        a(this, true, false, false, 6, null);
        Button button = this.f6298d;
        Context context = (Context) this.f6296b.get();
        if (context != null) {
            Resources resources = context.getResources();
            if (resources != null) {
                str = resources.getString(R.string.install);
                button.setText(str);
            }
        }
        str = null;
        button.setText(str);
    }

    public final void e() {
        a(this, false, true, true, 1, null);
        this.f6300f.setProgress(0);
        this.f6300f.setIndeterminate(true);
    }

    public final void f() {
        String str;
        a(this, true, false, false, 6, null);
        Button button = this.f6298d;
        Context context = (Context) this.f6296b.get();
        if (context != null) {
            Resources resources = context.getResources();
            if (resources != null) {
                str = resources.getString(R.string.run);
                button.setText(str);
            }
        }
        str = null;
        button.setText(str);
    }

    public final void g() {
        a(this, true, false, false, 6, null);
        Context context = (Context) this.f6296b.get();
        if (context != null) {
            this.f6298d.setText(context.getString(R.string.uninstall));
        }
    }

    public final void h() {
        a(this, false, true, true, 1, null);
        this.f6300f.setIndeterminate(true);
    }

    public final void i() {
        a(this, true, false, false, 6, null);
    }

    public final void j() {
        a(this, false, true, true, 1, null);
        this.f6300f.setProgress(0);
    }

    public final void k() {
        a(this, false, false, false, 7, null);
        View view = this.f6301g;
        if (view != null) {
            b.a aVar = c.c.a.d.a.b.f4745a;
            PageAppItem pageAppItem = this.f6295a;
            aVar.a(view, pageAppItem != null ? Boolean.valueOf(pageAppItem.getIapVisibility()) : null);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void l() {
        /*
            r6 = this;
            r1 = 1
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            r0 = r6
            a(r0, r1, r2, r3, r4, r5)
            android.widget.Button r0 = r6.f6298d
            java.lang.ref.WeakReference<android.content.Context> r1 = r6.f6296b
            java.lang.Object r1 = r1.get()
            android.content.Context r1 = (android.content.Context) r1
            r2 = 0
            if (r1 == 0) goto L_0x0024
            android.content.res.Resources r1 = r1.getResources()
            if (r1 == 0) goto L_0x0024
            r3 = 2131755532(0x7f10020c, float:1.9141946E38)
            java.lang.String r1 = r1.getString(r3)
            goto L_0x0025
        L_0x0024:
            r1 = r2
        L_0x0025:
            r0.setText(r1)
            android.view.View r0 = r6.f6301g
            if (r0 == 0) goto L_0x003d
            c.c.a.d.a.b$a r1 = c.c.a.d.a.b.f4745a
            com.farsitel.bazaar.common.model.page.PageAppItem r3 = r6.f6295a
            if (r3 == 0) goto L_0x003a
            boolean r2 = r3.getIapVisibility()
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
        L_0x003a:
            r1.a((android.view.View) r0, r2)
        L_0x003d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.c.c.a.a.a.b.l():void");
    }

    public final void m() {
        h hVar;
        PageAppItem pageAppItem = this.f6295a;
        if (pageAppItem != null) {
            this.f6298d.setEnabled(true);
            this.f6297c.setAlpha(1.0f);
            switch (a.f6294a[pageAppItem.getGetEntityStateForInitializeView().ordinal()]) {
                case 1:
                    k();
                    hVar = h.f14579a;
                    break;
                case 2:
                    b(pageAppItem);
                    hVar = h.f14579a;
                    break;
                case 3:
                    l();
                    hVar = h.f14579a;
                    break;
                case 4:
                    h();
                    hVar = h.f14579a;
                    break;
                case 5:
                    i();
                    hVar = h.f14579a;
                    break;
                case 6:
                    PageAppItem pageAppItem2 = this.f6295a;
                    a(pageAppItem2 != null ? pageAppItem2.isEnabled() : null);
                    hVar = h.f14579a;
                    break;
                case 7:
                    b();
                    hVar = h.f14579a;
                    break;
                case 8:
                    a(pageAppItem);
                    hVar = h.f14579a;
                    break;
                case 9:
                    j();
                    hVar = h.f14579a;
                    break;
                case 10:
                    a();
                    hVar = h.f14579a;
                    break;
                case 11:
                    c();
                    hVar = h.f14579a;
                    break;
                case 12:
                case 13:
                    d();
                    hVar = h.f14579a;
                    break;
                case 14:
                    f();
                    hVar = h.f14579a;
                    break;
                case 15:
                    e();
                    hVar = h.f14579a;
                    break;
                case 16:
                    g();
                    hVar = h.f14579a;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            c.a(hVar);
        }
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(WeakReference weakReference, View view, Button button, View view2, ProgressBar progressBar, View view3, View view4, int i2, f fVar) {
        this(weakReference, view, button, view2, progressBar, view3, (i2 & 64) != 0 ? null : view4);
    }

    public final void c() {
        String str;
        a(this, true, false, false, 6, null);
        Button button = this.f6298d;
        Context context = (Context) this.f6296b.get();
        if (context != null) {
            Resources resources = context.getResources();
            if (resources != null) {
                str = resources.getString(R.string.low_storage);
                button.setText(str);
            }
        }
        str = null;
        button.setText(str);
    }

    public final void b() {
        String str;
        a(this, true, false, false, 6, null);
        Button button = this.f6298d;
        Context context = (Context) this.f6296b.get();
        if (context != null) {
            Resources resources = context.getResources();
            if (resources != null) {
                str = resources.getString(R.string.failed_download);
                button.setText(str);
            }
        }
        str = null;
        button.setText(str);
    }

    public final void a(PageAppItem pageAppItem) {
        int i2 = 0;
        a(this, false, true, true, 1, null);
        this.f6300f.setIndeterminate(false);
        ProgressBar progressBar = this.f6300f;
        DownloaderProgressInfo progressInfo = pageAppItem.getProgressInfo();
        if (progressInfo != null) {
            i2 = progressInfo.getProgress();
        }
        progressBar.setProgress(Math.max(i2, 4));
    }

    public final void a() {
        a(this, false, true, true, 1, null);
        this.f6300f.setIndeterminate(false);
        this.f6300f.setProgress(100);
    }

    public static /* synthetic */ void a(b bVar, boolean z, boolean z2, boolean z3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        if ((i2 & 4) != 0) {
            z3 = false;
        }
        bVar.a(z, z2, z3);
    }

    public final void a(boolean z, boolean z2, boolean z3) {
        PageAppItem pageAppItem = this.f6295a;
        boolean z4 = false;
        boolean z5 = (pageAppItem != null ? pageAppItem.getIapVisibility() : false) && !z3;
        PageAppItem pageAppItem2 = this.f6295a;
        String noDiscountPriceString = pageAppItem2 != null ? pageAppItem2.getNoDiscountPriceString() : null;
        if (!(noDiscountPriceString == null || noDiscountPriceString.length() == 0) && !z3) {
            z4 = true;
        }
        if (z) {
            l.c(this.f6298d);
        } else {
            l.a(this.f6298d);
        }
        if (z2) {
            l.c(this.f6299e);
        } else {
            l.a(this.f6299e);
        }
        if (z3) {
            l.c(this.f6300f);
        } else {
            l.a(this.f6300f);
        }
        if (z5) {
            View view = this.f6301g;
            if (view != null) {
                l.c(view);
            }
        } else {
            View view2 = this.f6301g;
            if (view2 != null) {
                l.a(view2);
            }
        }
        if (z4) {
            View view3 = this.f6302h;
            if (view3 != null) {
                l.c(view3);
                return;
            }
            return;
        }
        View view4 = this.f6302h;
        if (view4 != null) {
            l.a(view4);
        }
    }
}
