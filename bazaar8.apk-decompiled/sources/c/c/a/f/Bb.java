package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import b.l.a.g;
import c.c.a.j.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.transaction.TransactionItem;
import com.farsitel.bazaar.common.model.transaction.TransactionItemCommunicator;

/* compiled from: ItemTransactionBindingImpl */
public class Bb extends Ab implements b.a {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = null;
    public final FrameLayout F;
    public final LinearLayout G;
    public final AppCompatTextView H;
    public final AppCompatTextView I;
    public final AppCompatTextView J;
    public final AppCompatTextView K;
    public final View L;
    public final View.OnLongClickListener M;
    public long N;

    public Bb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 7, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (29 == i2) {
            b((Integer) obj);
        } else if (9 == i2) {
            a((TransactionItemCommunicator) obj);
        } else if (45 != i2) {
            return false;
        } else {
            a((TransactionItem) obj);
        }
        return true;
    }

    public void b(Integer num) {
        this.C = num;
        synchronized (this) {
            this.N |= 1;
        }
        a(29);
        super.k();
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        int i2;
        boolean z;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        boolean z2;
        int i3;
        AppCompatTextView appCompatTextView;
        int i4;
        LinearLayout linearLayout;
        synchronized (this) {
            j2 = this.N;
            this.N = 0;
        }
        Integer num = this.C;
        TransactionItemCommunicator transactionItemCommunicator = this.B;
        TransactionItem transactionItem = this.A;
        long j3 = j2 & 9;
        boolean z3 = 0;
        if (j3 != 0) {
            boolean z4 = true;
            if (ViewDataBinding.a(num) % 2 != 1) {
                z4 = false;
            }
            if (j3 != 0) {
                j2 |= z4 ? 32 : 16;
            }
            if (z4) {
                linearLayout = this.G;
                i4 = R.color.bg_gray_transactions;
            } else {
                linearLayout = this.G;
                i4 = R.color.white;
            }
            i2 = ViewDataBinding.a((View) linearLayout, i4);
        } else {
            i2 = 0;
        }
        long j4 = j2 & 12;
        String str6 = null;
        if (j4 != 0) {
            if (transactionItem != null) {
                str6 = transactionItem.getDescription();
                String dateTimeString = transactionItem.getDateTimeString();
                z2 = transactionItem.isIncome();
                str5 = transactionItem.getToken();
                str4 = transactionItem.getAmountString();
                String str7 = dateTimeString;
                z3 = transactionItem.isRefunded();
                str3 = str7;
            } else {
                str3 = null;
                str5 = null;
                str4 = null;
                z2 = false;
            }
            if (j4 != 0) {
                j2 |= z2 ? 128 : 64;
            }
            if (z2) {
                appCompatTextView = this.I;
                i3 = R.color.green;
            } else {
                appCompatTextView = this.I;
                i3 = R.color.error_text;
            }
            z = z3;
            z3 = ViewDataBinding.a((View) appCompatTextView, i3);
            str2 = str6;
            str = str5;
            str6 = str4;
        } else {
            str3 = null;
            str2 = null;
            str = null;
            z = false;
        }
        if ((9 & j2) != 0) {
            g.a(this.G, b.l.a.b.a(i2));
        }
        if ((j2 & 12) != 0) {
            f.a((TextView) this.H, (CharSequence) str3);
            f.a((TextView) this.I, (CharSequence) str6);
            this.I.setTextColor((int) z3);
            f.a((TextView) this.J, (CharSequence) str2);
            f.a((TextView) this.K, (CharSequence) str);
            c.c.a.d.a.b.a(this.L, Boolean.valueOf(z));
        }
        if ((j2 & 8) != 0) {
            this.K.setOnLongClickListener(this.M);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.N != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.N = 8;
        }
        k();
    }

    public Bb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0);
        this.N = -1;
        this.F = objArr[0];
        this.F.setTag(null);
        this.G = objArr[1];
        this.G.setTag(null);
        this.H = objArr[2];
        this.H.setTag(null);
        this.I = objArr[3];
        this.I.setTag(null);
        this.J = objArr[4];
        this.J.setTag(null);
        this.K = objArr[5];
        this.K.setTag(null);
        this.L = objArr[6];
        this.L.setTag(null);
        b(view);
        this.M = new b(this, 1);
        l();
    }

    public void a(TransactionItemCommunicator transactionItemCommunicator) {
        this.B = transactionItemCommunicator;
        synchronized (this) {
            this.N |= 2;
        }
        a(9);
        super.k();
    }

    public void a(TransactionItem transactionItem) {
        this.A = transactionItem;
        synchronized (this) {
            this.N |= 4;
        }
        a(45);
        super.k();
    }

    public final boolean a(int i2, View view) {
        TransactionItem transactionItem = this.A;
        TransactionItemCommunicator transactionItemCommunicator = this.B;
        boolean z = true;
        if (!(transactionItemCommunicator != null)) {
            return false;
        }
        if (transactionItem == null) {
            z = false;
        }
        if (z) {
            return transactionItemCommunicator.onTokenItemLongClicked(transactionItem.getToken());
        }
        return false;
    }
}
