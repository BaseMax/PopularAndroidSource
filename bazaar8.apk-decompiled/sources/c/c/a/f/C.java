package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import b.l.g;
import com.farsitel.bazaar.R;

/* compiled from: ItemAppDetailScreenShotBinding */
public abstract class C extends ViewDataBinding {
    public final RecyclerView A;

    public C(Object obj, View view, int i2, RecyclerView recyclerView) {
        super(obj, view, i2);
        this.A = recyclerView;
    }

    public static C a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C) ViewDataBinding.a(layoutInflater, (int) R.layout.item_app_detail_screen_shot, viewGroup, z, obj);
    }
}
