package b.b.f.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import b.b.d;
import b.b.f.a.t;
import b.b.g;
import b.b.g.O;
import b.b.g.P;
import b.i.k.C0260c;
import b.i.k.z;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CascadingMenuPopup */
public final class h extends q implements t, View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: b  reason: collision with root package name */
    public static final int f1846b = g.abc_cascading_menu_item_layout;
    public PopupWindow.OnDismissListener A;
    public boolean B;

    /* renamed from: c  reason: collision with root package name */
    public final Context f1847c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1848d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1849e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1850f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f1851g;

    /* renamed from: h  reason: collision with root package name */
    public final Handler f1852h;

    /* renamed from: i  reason: collision with root package name */
    public final List<k> f1853i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    public final List<a> f1854j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    public final ViewTreeObserver.OnGlobalLayoutListener f1855k = new d(this);

    /* renamed from: l  reason: collision with root package name */
    public final View.OnAttachStateChangeListener f1856l = new e(this);
    public final O m = new g(this);
    public int n = 0;
    public int o = 0;
    public View p;
    public View q;
    public int r;
    public boolean s;
    public boolean t;
    public int u;
    public int v;
    public boolean w;
    public boolean x;
    public t.a y;
    public ViewTreeObserver z;

    /* compiled from: CascadingMenuPopup */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final P f1857a;

        /* renamed from: b  reason: collision with root package name */
        public final k f1858b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1859c;

        public a(P p, k kVar, int i2) {
            this.f1857a = p;
            this.f1858b = kVar;
            this.f1859c = i2;
        }

        public ListView a() {
            return this.f1857a.f();
        }
    }

    public h(Context context, View view, int i2, int i3, boolean z2) {
        this.f1847c = context;
        this.p = view;
        this.f1849e = i2;
        this.f1850f = i3;
        this.f1851g = z2;
        this.w = false;
        this.r = i();
        Resources resources = context.getResources();
        this.f1848d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(d.abc_config_prefDialogWidth));
        this.f1852h = new Handler();
    }

    public void a(Parcelable parcelable) {
    }

    public void a(k kVar) {
        kVar.a((t) this, this.f1847c);
        if (c()) {
            d(kVar);
        } else {
            this.f1853i.add(kVar);
        }
    }

    public boolean a() {
        return false;
    }

    public Parcelable b() {
        return null;
    }

    public void b(boolean z2) {
        this.w = z2;
    }

    public boolean c() {
        return this.f1854j.size() > 0 && this.f1854j.get(0).f1857a.c();
    }

    public void d() {
        if (!c()) {
            for (k d2 : this.f1853i) {
                d(d2);
            }
            this.f1853i.clear();
            this.q = this.p;
            if (this.q != null) {
                boolean z2 = this.z == null;
                this.z = this.q.getViewTreeObserver();
                if (z2) {
                    this.z.addOnGlobalLayoutListener(this.f1855k);
                }
                this.q.addOnAttachStateChangeListener(this.f1856l);
            }
        }
    }

    public void dismiss() {
        int size = this.f1854j.size();
        if (size > 0) {
            a[] aVarArr = (a[]) this.f1854j.toArray(new a[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                a aVar = aVarArr[i2];
                if (aVar.f1857a.c()) {
                    aVar.f1857a.dismiss();
                }
            }
        }
    }

    public boolean e() {
        return false;
    }

    public ListView f() {
        if (this.f1854j.isEmpty()) {
            return null;
        }
        List<a> list = this.f1854j;
        return list.get(list.size() - 1).a();
    }

    public final P h() {
        P p2 = new P(this.f1847c, null, this.f1849e, this.f1850f);
        p2.a(this.m);
        p2.a((AdapterView.OnItemClickListener) this);
        p2.a((PopupWindow.OnDismissListener) this);
        p2.a(this.p);
        p2.f(this.o);
        p2.a(true);
        p2.g(2);
        return p2;
    }

    public final int i() {
        return z.m(this.p) == 1 ? 0 : 1;
    }

    public void onDismiss() {
        a aVar;
        int size = this.f1854j.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                aVar = null;
                break;
            }
            aVar = this.f1854j.get(i2);
            if (!aVar.f1857a.c()) {
                break;
            }
            i2++;
        }
        if (aVar != null) {
            aVar.f1858b.a(false);
        }
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    public void b(int i2) {
        this.s = true;
        this.u = i2;
    }

    public final int c(k kVar) {
        int size = this.f1854j.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (kVar == this.f1854j.get(i2).f1858b) {
                return i2;
            }
        }
        return -1;
    }

    public final MenuItem a(k kVar, k kVar2) {
        int size = kVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = kVar.getItem(i2);
            if (item.hasSubMenu() && kVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    public void c(int i2) {
        this.t = true;
        this.v = i2;
    }

    public void c(boolean z2) {
        this.x = z2;
    }

    public final View a(a aVar, k kVar) {
        int i2;
        j jVar;
        MenuItem a2 = a(aVar.f1858b, kVar);
        if (a2 == null) {
            return null;
        }
        ListView a3 = aVar.a();
        ListAdapter adapter = a3.getAdapter();
        int i3 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i2 = headerViewListAdapter.getHeadersCount();
            jVar = (j) headerViewListAdapter.getWrappedAdapter();
        } else {
            jVar = (j) adapter;
            i2 = 0;
        }
        int count = jVar.getCount();
        while (true) {
            if (i3 >= count) {
                i3 = -1;
                break;
            } else if (a2 == jVar.getItem(i3)) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 == -1) {
            return null;
        }
        int firstVisiblePosition = (i3 + i2) - a3.getFirstVisiblePosition();
        if (firstVisiblePosition < 0 || firstVisiblePosition >= a3.getChildCount()) {
            return null;
        }
        return a3.getChildAt(firstVisiblePosition);
    }

    public final int d(int i2) {
        List<a> list = this.f1854j;
        ListView a2 = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        a2.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.q.getWindowVisibleDisplayFrame(rect);
        if (this.r == 1) {
            if (iArr[0] + a2.getWidth() + i2 > rect.right) {
                return 0;
            }
            return 1;
        } else if (iArr[0] - i2 < 0) {
            return 1;
        } else {
            return 0;
        }
    }

    public final void d(k kVar) {
        View view;
        a aVar;
        int i2;
        int i3;
        int i4;
        LayoutInflater from = LayoutInflater.from(this.f1847c);
        j jVar = new j(kVar, from, this.f1851g, f1846b);
        if (!c() && this.w) {
            jVar.a(true);
        } else if (c()) {
            jVar.a(q.b(kVar));
        }
        int a2 = q.a(jVar, null, this.f1847c, this.f1848d);
        P h2 = h();
        h2.a((ListAdapter) jVar);
        h2.e(a2);
        h2.f(this.o);
        if (this.f1854j.size() > 0) {
            List<a> list = this.f1854j;
            aVar = list.get(list.size() - 1);
            view = a(aVar, kVar);
        } else {
            aVar = null;
            view = null;
        }
        if (view != null) {
            h2.d(false);
            h2.a((Object) null);
            int d2 = d(a2);
            boolean z2 = d2 == 1;
            this.r = d2;
            if (Build.VERSION.SDK_INT >= 26) {
                h2.a(view);
                i3 = 0;
                i2 = 0;
            } else {
                int[] iArr = new int[2];
                this.p.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.o & 7) == 5) {
                    iArr[0] = iArr[0] + this.p.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i2 = iArr2[0] - iArr[0];
                i3 = iArr2[1] - iArr[1];
            }
            if ((this.o & 5) != 5) {
                if (z2) {
                    a2 = view.getWidth();
                }
                i4 = i2 - a2;
                h2.a(i4);
                h2.b(true);
                h2.b(i3);
            } else if (!z2) {
                a2 = view.getWidth();
                i4 = i2 - a2;
                h2.a(i4);
                h2.b(true);
                h2.b(i3);
            }
            i4 = i2 + a2;
            h2.a(i4);
            h2.b(true);
            h2.b(i3);
        } else {
            if (this.s) {
                h2.a(this.u);
            }
            if (this.t) {
                h2.b(this.v);
            }
            h2.a(g());
        }
        this.f1854j.add(new a(h2, kVar, this.r));
        h2.d();
        ListView f2 = h2.f();
        f2.setOnKeyListener(this);
        if (aVar == null && this.x && kVar.h() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(g.abc_popup_menu_header_item_layout, f2, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(kVar.h());
            f2.addHeaderView(frameLayout, null, false);
            h2.d();
        }
    }

    public void a(boolean z2) {
        for (a a2 : this.f1854j) {
            q.a(a2.a().getAdapter()).notifyDataSetChanged();
        }
    }

    public void a(t.a aVar) {
        this.y = aVar;
    }

    public boolean a(A a2) {
        for (a next : this.f1854j) {
            if (a2 == next.f1858b) {
                next.a().requestFocus();
                return true;
            }
        }
        if (!a2.hasVisibleItems()) {
            return false;
        }
        a((k) a2);
        t.a aVar = this.y;
        if (aVar != null) {
            aVar.a(a2);
        }
        return true;
    }

    public void a(k kVar, boolean z2) {
        int c2 = c(kVar);
        if (c2 >= 0) {
            int i2 = c2 + 1;
            if (i2 < this.f1854j.size()) {
                this.f1854j.get(i2).f1858b.a(false);
            }
            a remove = this.f1854j.remove(c2);
            remove.f1858b.b((t) this);
            if (this.B) {
                remove.f1857a.b(null);
                remove.f1857a.d(0);
            }
            remove.f1857a.dismiss();
            int size = this.f1854j.size();
            if (size > 0) {
                this.r = this.f1854j.get(size - 1).f1859c;
            } else {
                this.r = i();
            }
            if (size == 0) {
                dismiss();
                t.a aVar = this.y;
                if (aVar != null) {
                    aVar.a(kVar, true);
                }
                ViewTreeObserver viewTreeObserver = this.z;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.z.removeGlobalOnLayoutListener(this.f1855k);
                    }
                    this.z = null;
                }
                this.q.removeOnAttachStateChangeListener(this.f1856l);
                this.A.onDismiss();
            } else if (z2) {
                this.f1854j.get(0).f1858b.a(false);
            }
        }
    }

    public void a(int i2) {
        if (this.n != i2) {
            this.n = i2;
            this.o = C0260c.a(i2, z.m(this.p));
        }
    }

    public void a(View view) {
        if (this.p != view) {
            this.p = view;
            this.o = C0260c.a(this.n, z.m(this.p));
        }
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.A = onDismissListener;
    }
}
