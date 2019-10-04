package b.b.f.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import b.b.f.a.t;
import b.b.f.a.u;
import java.util.ArrayList;

/* renamed from: b.b.f.a.b  reason: case insensitive filesystem */
/* compiled from: BaseMenuPresenter */
public abstract class C0204b implements t {

    /* renamed from: a  reason: collision with root package name */
    public Context f1826a;

    /* renamed from: b  reason: collision with root package name */
    public Context f1827b;

    /* renamed from: c  reason: collision with root package name */
    public k f1828c;

    /* renamed from: d  reason: collision with root package name */
    public LayoutInflater f1829d;

    /* renamed from: e  reason: collision with root package name */
    public LayoutInflater f1830e;

    /* renamed from: f  reason: collision with root package name */
    public t.a f1831f;

    /* renamed from: g  reason: collision with root package name */
    public int f1832g;

    /* renamed from: h  reason: collision with root package name */
    public int f1833h;

    /* renamed from: i  reason: collision with root package name */
    public u f1834i;

    /* renamed from: j  reason: collision with root package name */
    public int f1835j;

    public C0204b(Context context, int i2, int i3) {
        this.f1826a = context;
        this.f1829d = LayoutInflater.from(context);
        this.f1832g = i2;
        this.f1833h = i3;
    }

    public void a(Context context, k kVar) {
        this.f1827b = context;
        this.f1830e = LayoutInflater.from(this.f1827b);
        this.f1828c = kVar;
    }

    public abstract void a(o oVar, u.a aVar);

    public abstract boolean a(int i2, o oVar);

    public boolean a(k kVar, o oVar) {
        return false;
    }

    public u b(ViewGroup viewGroup) {
        if (this.f1834i == null) {
            this.f1834i = (u) this.f1829d.inflate(this.f1832g, viewGroup, false);
            this.f1834i.a(this.f1828c);
            a(true);
        }
        return this.f1834i;
    }

    public boolean b(k kVar, o oVar) {
        return false;
    }

    public t.a c() {
        return this.f1831f;
    }

    public int getId() {
        return this.f1835j;
    }

    public void a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f1834i;
        if (viewGroup != null) {
            k kVar = this.f1828c;
            int i2 = 0;
            if (kVar != null) {
                kVar.b();
                ArrayList<o> n = this.f1828c.n();
                int size = n.size();
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    o oVar = n.get(i4);
                    if (a(i3, oVar)) {
                        View childAt = viewGroup.getChildAt(i3);
                        o itemData = childAt instanceof u.a ? ((u.a) childAt).getItemData() : null;
                        View a2 = a(oVar, childAt, viewGroup);
                        if (oVar != itemData) {
                            a2.setPressed(false);
                            a2.jumpDrawablesToCurrentState();
                        }
                        if (a2 != childAt) {
                            a(a2, i3);
                        }
                        i3++;
                    }
                }
                i2 = i3;
            }
            while (i2 < viewGroup.getChildCount()) {
                if (!a(viewGroup, i2)) {
                    i2++;
                }
            }
        }
    }

    public void a(View view, int i2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f1834i).addView(view, i2);
    }

    public boolean a(ViewGroup viewGroup, int i2) {
        viewGroup.removeViewAt(i2);
        return true;
    }

    public void a(t.a aVar) {
        this.f1831f = aVar;
    }

    public u.a a(ViewGroup viewGroup) {
        return (u.a) this.f1829d.inflate(this.f1833h, viewGroup, false);
    }

    public View a(o oVar, View view, ViewGroup viewGroup) {
        u.a aVar;
        if (view instanceof u.a) {
            aVar = (u.a) view;
        } else {
            aVar = a(viewGroup);
        }
        a(oVar, aVar);
        return (View) aVar;
    }

    public void a(k kVar, boolean z) {
        t.a aVar = this.f1831f;
        if (aVar != null) {
            aVar.a(kVar, z);
        }
    }

    public boolean a(A a2) {
        t.a aVar = this.f1831f;
        if (aVar != null) {
            return aVar.a(a2);
        }
        return false;
    }

    public void a(int i2) {
        this.f1835j = i2;
    }
}
