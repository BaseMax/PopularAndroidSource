package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.RetryItem;
import com.google.android.material.button.MaterialButton;

/* renamed from: c.c.a.f.kb  reason: case insensitive filesystem */
/* compiled from: ItemRetryBinding */
public abstract class C0438kb extends ViewDataBinding {
    public final MaterialButton A;
    public final AppCompatTextView B;
    public RetryItem C;
    public m D;

    public C0438kb(Object obj, View view, int i2, MaterialButton materialButton, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = materialButton;
        this.B = appCompatTextView;
    }

    public static C0438kb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0438kb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0438kb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_retry, viewGroup, z, obj);
    }
}
