package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.z.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.widget.LocalAwareTextView;

/* renamed from: c.c.a.f.yb  reason: case insensitive filesystem */
/* compiled from: ItemSubscriptionAppBinding */
public abstract class C0479yb extends ViewDataBinding {
    public final AppCompatImageView A;
    public final AppCompatImageView B;
    public final LocalAwareTextView C;
    public final LocalAwareTextView D;
    public final LocalAwareTextView E;
    public final LocalAwareTextView F;
    public SubscriptionItem G;
    public b H;

    public C0479yb(Object obj, View view, int i2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LocalAwareTextView localAwareTextView, LocalAwareTextView localAwareTextView2, LocalAwareTextView localAwareTextView3, LocalAwareTextView localAwareTextView4) {
        super(obj, view, i2);
        this.A = appCompatImageView;
        this.B = appCompatImageView2;
        this.C = localAwareTextView;
        this.D = localAwareTextView2;
        this.E = localAwareTextView3;
        this.F = localAwareTextView4;
    }

    public static C0479yb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static C0479yb a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (C0479yb) ViewDataBinding.a(layoutInflater, (int) R.layout.item_subscription_app, viewGroup, z, obj);
    }
}
