package b.b.f.a;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ExpandedMenuView;
import b.b.f.a.t;
import b.b.f.a.u;
import b.b.g;
import java.util.ArrayList;

/* compiled from: ListMenuPresenter */
public class i implements t, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public Context f1860a;

    /* renamed from: b  reason: collision with root package name */
    public LayoutInflater f1861b;

    /* renamed from: c  reason: collision with root package name */
    public k f1862c;

    /* renamed from: d  reason: collision with root package name */
    public ExpandedMenuView f1863d;

    /* renamed from: e  reason: collision with root package name */
    public int f1864e;

    /* renamed from: f  reason: collision with root package name */
    public int f1865f;

    /* renamed from: g  reason: collision with root package name */
    public int f1866g;

    /* renamed from: h  reason: collision with root package name */
    public t.a f1867h;

    /* renamed from: i  reason: collision with root package name */
    public a f1868i;

    /* renamed from: j  reason: collision with root package name */
    public int f1869j;

    /* compiled from: ListMenuPresenter */
    private class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        public int f1870a = -1;

        public a() {
            a();
        }

        public void a() {
            o f2 = i.this.f1862c.f();
            if (f2 != null) {
                ArrayList<o> j2 = i.this.f1862c.j();
                int size = j2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (j2.get(i2) == f2) {
                        this.f1870a = i2;
                        return;
                    }
                }
            }
            this.f1870a = -1;
        }

        public int getCount() {
            int size = i.this.f1862c.j().size() - i.this.f1864e;
            return this.f1870a < 0 ? size : size - 1;
        }

        public long getItemId(int i2) {
            return (long) i2;
        }

        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                i iVar = i.this;
                view = iVar.f1861b.inflate(iVar.f1866g, viewGroup, false);
            }
            ((u.a) view).a(getItem(i2), 0);
            return view;
        }

        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }

        public o getItem(int i2) {
            ArrayList<o> j2 = i.this.f1862c.j();
            int i3 = i2 + i.this.f1864e;
            int i4 = this.f1870a;
            if (i4 >= 0 && i3 >= i4) {
                i3++;
            }
            return j2.get(i3);
        }
    }

    public i(Context context, int i2) {
        this(i2, 0);
        this.f1860a = context;
        this.f1861b = LayoutInflater.from(this.f1860a);
    }

    public void a(Context context, k kVar) {
        int i2 = this.f1865f;
        if (i2 != 0) {
            this.f1860a = new ContextThemeWrapper(context, i2);
            this.f1861b = LayoutInflater.from(this.f1860a);
        } else if (this.f1860a != null) {
            this.f1860a = context;
            if (this.f1861b == null) {
                this.f1861b = LayoutInflater.from(this.f1860a);
            }
        }
        this.f1862c = kVar;
        a aVar = this.f1868i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public boolean a() {
        return false;
    }

    public boolean a(k kVar, o oVar) {
        return false;
    }

    public void b(Bundle bundle) {
        SparseArray sparseArray = new SparseArray();
        ExpandedMenuView expandedMenuView = this.f1863d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    public boolean b(k kVar, o oVar) {
        return false;
    }

    public ListAdapter c() {
        if (this.f1868i == null) {
            this.f1868i = new a();
        }
        return this.f1868i;
    }

    public int getId() {
        return this.f1869j;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.f1862c.a((MenuItem) this.f1868i.getItem(i2), (t) this, 0);
    }

    public i(int i2, int i3) {
        this.f1866g = i2;
        this.f1865f = i3;
    }

    public Parcelable b() {
        if (this.f1863d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        b(bundle);
        return bundle;
    }

    public u a(ViewGroup viewGroup) {
        if (this.f1863d == null) {
            this.f1863d = (ExpandedMenuView) this.f1861b.inflate(g.abc_expanded_menu_layout, viewGroup, false);
            if (this.f1868i == null) {
                this.f1868i = new a();
            }
            this.f1863d.setAdapter(this.f1868i);
            this.f1863d.setOnItemClickListener(this);
        }
        return this.f1863d;
    }

    public void a(boolean z) {
        a aVar = this.f1868i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public void a(t.a aVar) {
        this.f1867h = aVar;
    }

    public boolean a(A a2) {
        if (!a2.hasVisibleItems()) {
            return false;
        }
        new l(a2).a((IBinder) null);
        t.a aVar = this.f1867h;
        if (aVar != null) {
            aVar.a(a2);
        }
        return true;
    }

    public void a(k kVar, boolean z) {
        t.a aVar = this.f1867h;
        if (aVar != null) {
            aVar.a(kVar, z);
        }
    }

    public void a(Bundle bundle) {
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f1863d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void a(Parcelable parcelable) {
        a((Bundle) parcelable);
    }
}
