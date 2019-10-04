package b.b.f.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import b.b.f.a.u;
import java.util.ArrayList;

/* compiled from: MenuAdapter */
public class j extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    public k f1872a;

    /* renamed from: b  reason: collision with root package name */
    public int f1873b = -1;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1874c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f1875d;

    /* renamed from: e  reason: collision with root package name */
    public final LayoutInflater f1876e;

    /* renamed from: f  reason: collision with root package name */
    public final int f1877f;

    public j(k kVar, LayoutInflater layoutInflater, boolean z, int i2) {
        this.f1875d = z;
        this.f1876e = layoutInflater;
        this.f1872a = kVar;
        this.f1877f = i2;
        a();
    }

    public void a(boolean z) {
        this.f1874c = z;
    }

    public k b() {
        return this.f1872a;
    }

    public int getCount() {
        ArrayList<o> j2 = this.f1875d ? this.f1872a.j() : this.f1872a.n();
        if (this.f1873b < 0) {
            return j2.size();
        }
        return j2.size() - 1;
    }

    public long getItemId(int i2) {
        return (long) i2;
    }

    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f1876e.inflate(this.f1877f, viewGroup, false);
        }
        int groupId = getItem(i2).getGroupId();
        int i3 = i2 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f1872a.o() && groupId != (i3 >= 0 ? getItem(i3).getGroupId() : groupId));
        u.a aVar = (u.a) view;
        if (this.f1874c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.a(getItem(i2), 0);
        return view;
    }

    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }

    public void a() {
        o f2 = this.f1872a.f();
        if (f2 != null) {
            ArrayList<o> j2 = this.f1872a.j();
            int size = j2.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (j2.get(i2) == f2) {
                    this.f1873b = i2;
                    return;
                }
            }
        }
        this.f1873b = -1;
    }

    public o getItem(int i2) {
        ArrayList<o> j2 = this.f1875d ? this.f1872a.j() : this.f1872a.n();
        int i3 = this.f1873b;
        if (i3 >= 0 && i2 >= i3) {
            i2++;
        }
        return j2.get(i2);
    }
}
