package c.c.a.f;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import b.l.a.g;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;

/* compiled from: ItemPaymentOptionBindingImpl */
public class _a extends Za {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = null;
    public final ConstraintLayout G;
    public long H;

    public _a(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (34 == i2) {
            b((Boolean) obj);
        } else if (45 != i2) {
            return false;
        } else {
            a((PaymentGateway) obj);
        }
        return true;
    }

    public void b(Boolean bool) {
        this.D = bool;
        synchronized (this) {
            this.H |= 1;
        }
        a(34);
        super.k();
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        Drawable drawable;
        String str;
        String str2;
        int i2;
        AppCompatTextView appCompatTextView;
        int i3;
        AppCompatImageView appCompatImageView;
        long j3;
        long j4;
        synchronized (this) {
            j2 = this.H;
            this.H = 0;
        }
        Boolean bool = this.D;
        PaymentGateway paymentGateway = this.C;
        int i4 = 0;
        long j5 = j2 & 5;
        if (j5 != 0) {
            boolean a2 = ViewDataBinding.a(bool);
            if (j5 != 0) {
                if (a2) {
                    j4 = j2 | 16;
                    j3 = 64;
                } else {
                    j4 = j2 | 8;
                    j3 = 32;
                }
                j2 = j4 | j3;
            }
            if (a2) {
                appCompatTextView = this.B;
                i2 = R.color.green;
            } else {
                appCompatTextView = this.B;
                i2 = R.color.c_text_body2;
            }
            i4 = ViewDataBinding.a((View) appCompatTextView, i2);
            if (a2) {
                appCompatImageView = this.A;
                i3 = R.drawable.border_round_green;
            } else {
                appCompatImageView = this.A;
                i3 = R.drawable.border_round;
            }
            drawable = ViewDataBinding.b((View) appCompatImageView, i3);
        } else {
            drawable = null;
        }
        long j6 = 6 & j2;
        if (j6 == 0 || paymentGateway == null) {
            str2 = null;
            str = null;
        } else {
            String d2 = paymentGateway.d();
            str2 = paymentGateway.g();
            str = d2;
        }
        if ((j2 & 5) != 0) {
            g.a(this.A, drawable);
            this.B.setTextColor(i4);
        }
        if (j6 != 0) {
            AppCompatImageView appCompatImageView2 = this.A;
            b.a(appCompatImageView2, str, ViewDataBinding.b((View) appCompatImageView2, (int) R.drawable.ic_default_payment), null, null, null, null);
            f.a((TextView) this.B, (CharSequence) str2);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.H != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.H = 4;
        }
        k();
    }

    public _a(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1], objArr[2]);
        this.H = -1;
        this.A.setTag(null);
        this.G = objArr[0];
        this.G.setTag(null);
        this.B.setTag(null);
        b(view);
        l();
    }

    public void a(PaymentGateway paymentGateway) {
        this.C = paymentGateway;
        synchronized (this) {
            this.H |= 2;
        }
        a(45);
        super.k();
    }
}
