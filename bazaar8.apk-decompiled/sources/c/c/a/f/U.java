package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppReviewInfoItem;

/* compiled from: ItemAppdetailRateInfoBindingImpl */
public class U extends T {
    public static final ViewDataBinding.b V = null;
    public static final SparseIntArray W = new SparseIntArray();
    public final ConstraintLayout X;
    public long Y;

    static {
        W.put(R.id.reviewAndComments, 8);
        W.put(R.id.star1, 9);
        W.put(R.id.star2, 10);
        W.put(R.id.star3, 11);
        W.put(R.id.star4, 12);
        W.put(R.id.star5, 13);
        W.put(R.id.star1Label, 14);
        W.put(R.id.star2Label, 15);
        W.put(R.id.star3Label, 16);
        W.put(R.id.star4Label, 17);
        W.put(R.id.star5Label, 18);
        W.put(R.id.startBarGuid, 19);
        W.put(R.id.constraintRateCount, 20);
    }

    public U(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 21, V, W));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((AppReviewInfoItem) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        int i2;
        int i3;
        int i4;
        int i5;
        long j3;
        String str;
        String str2;
        int i6;
        String str3;
        synchronized (this) {
            j2 = this.Y;
            this.Y = 0;
        }
        float f2 = 0.0f;
        AppReviewInfoItem appReviewInfoItem = this.U;
        long j4 = j2 & 3;
        int i7 = 0;
        if (j4 != 0) {
            if (appReviewInfoItem != null) {
                f2 = appReviewInfoItem.getRate();
                i5 = appReviewInfoItem.getRate5();
                i4 = appReviewInfoItem.getRate4();
                i3 = appReviewInfoItem.getRate3();
                i2 = appReviewInfoItem.getRate2();
                i6 = appReviewInfoItem.getRate1();
                str3 = appReviewInfoItem.getReviewCount();
            } else {
                str3 = null;
                i5 = 0;
                i4 = 0;
                i3 = 0;
                i2 = 0;
                i6 = 0;
            }
            str2 = this.A.getResources().getString(R.string.rate_placeholder, new Object[]{Float.valueOf(f2)});
            str = this.B.getResources().getString(R.string.review_placeholder, new Object[]{str3});
            i7 = i6;
            j3 = 0;
        } else {
            j3 = 0;
            str2 = null;
            str = null;
            i5 = 0;
            i4 = 0;
            i3 = 0;
            i2 = 0;
        }
        if (j4 != j3) {
            f.a((TextView) this.A, (CharSequence) str2);
            f.a((TextView) this.B, (CharSequence) str);
            this.F.setProgress(i7);
            this.I.setProgress(i2);
            this.L.setProgress(i3);
            this.O.setProgress(i4);
            this.R.setProgress(i5);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.Y != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.Y = 2;
        }
        k();
    }

    public U(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[6], objArr[7], objArr[20], objArr[8], objArr[9], objArr[5], objArr[14], objArr[10], objArr[1], objArr[15], objArr[11], objArr[2], objArr[16], objArr[12], objArr[3], objArr[17], objArr[13], objArr[4], objArr[18], objArr[19]);
        this.Y = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.X = objArr[0];
        this.X.setTag(null);
        this.F.setTag(null);
        this.I.setTag(null);
        this.L.setTag(null);
        this.O.setTag(null);
        this.R.setTag(null);
        b(view);
        l();
    }

    public void a(AppReviewInfoItem appReviewInfoItem) {
        this.U = appReviewInfoItem;
        synchronized (this) {
            this.Y |= 1;
        }
        a(45);
        super.k();
    }
}
