package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;

/* compiled from: ItemPaymentOptionBinding */
public abstract class Za extends ViewDataBinding {
    public final AppCompatImageView A;
    public final AppCompatTextView B;
    public PaymentGateway C;
    public Boolean D;

    public Za(Object obj, View view, int i2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        super(obj, view, i2);
        this.A = appCompatImageView;
        this.B = appCompatTextView;
    }

    public static Za a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static Za a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (Za) ViewDataBinding.a(layoutInflater, (int) R.layout.item_payment_option, viewGroup, z, obj);
    }
}
