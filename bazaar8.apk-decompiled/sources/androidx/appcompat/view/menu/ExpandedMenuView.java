package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import b.b.f.a.k;
import b.b.f.a.o;
import b.b.f.a.u;
import b.b.g.pa;

public final class ExpandedMenuView extends ListView implements k.b, u, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f304a = {16842964, 16843049};

    /* renamed from: b  reason: collision with root package name */
    public k f305b;

    /* renamed from: c  reason: collision with root package name */
    public int f306c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public void a(k kVar) {
        this.f305b = kVar;
    }

    public int getWindowAnimations() {
        return this.f306c;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    public void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        a((o) getAdapter().getItem(i2));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        pa a2 = pa.a(context, attributeSet, f304a, i2, 0);
        if (a2.g(0)) {
            setBackgroundDrawable(a2.b(0));
        }
        if (a2.g(1)) {
            setDivider(a2.b(1));
        }
        a2.a();
    }

    public boolean a(o oVar) {
        return this.f305b.a((MenuItem) oVar, 0);
    }
}
