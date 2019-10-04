package b.b.f.a;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* compiled from: MenuPopup */
public abstract class q implements w, t, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public Rect f1918a;

    public static boolean b(k kVar) {
        int size = kVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = kVar.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    public abstract void a(int i2);

    public void a(Context context, k kVar) {
    }

    public void a(Rect rect) {
        this.f1918a = rect;
    }

    public abstract void a(View view);

    public abstract void a(PopupWindow.OnDismissListener onDismissListener);

    public abstract void a(k kVar);

    public boolean a(k kVar, o oVar) {
        return false;
    }

    public abstract void b(int i2);

    public abstract void b(boolean z);

    public boolean b(k kVar, o oVar) {
        return false;
    }

    public abstract void c(int i2);

    public abstract void c(boolean z);

    public boolean e() {
        return true;
    }

    public Rect g() {
        return this.f1918a;
    }

    public int getId() {
        return 0;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        a(listAdapter).f1872a.a((MenuItem) listAdapter.getItem(i2), (t) this, e() ? 0 : 4);
    }

    public static int a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        ViewGroup viewGroup2 = viewGroup;
        View view = null;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < count; i5++) {
            int itemViewType = listAdapter.getItemViewType(i5);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            if (viewGroup2 == null) {
                viewGroup2 = new FrameLayout(context);
            }
            view = listAdapter.getView(i5, view, viewGroup2);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i2) {
                return i2;
            }
            if (measuredWidth > i3) {
                i3 = measuredWidth;
            }
        }
        return i3;
    }

    public static j a(ListAdapter listAdapter) {
        if (listAdapter instanceof HeaderViewListAdapter) {
            return (j) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter();
        }
        return (j) listAdapter;
    }
}
