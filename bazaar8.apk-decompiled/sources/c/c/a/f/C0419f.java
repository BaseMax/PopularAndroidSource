package c.c.a.f;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;

/* renamed from: c.c.a.f.f  reason: case insensitive filesystem */
/* compiled from: AlertThirdpartReviewBindingImpl */
public class C0419f extends C0415e {
    public static final ViewDataBinding.b P = null;
    public static final SparseIntArray Q = new SparseIntArray();
    public final NestedScrollView R;
    public long S;

    static {
        Q.put(R.id.close, 5);
        Q.put(R.id.bazaarLogo, 6);
        Q.put(R.id.bazaarDivider, 7);
        Q.put(R.id.rbPostComment, 8);
        Q.put(R.id.etUserComment, 9);
        Q.put(R.id.tvCommentCounter, 10);
        Q.put(R.id.btSubmitPostComment, 11);
    }

    public C0419f(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 12, P, Q));
    }

    public boolean a(int i2, Object obj) {
        if (35 == i2) {
            b((String) obj);
        } else if (8 == i2) {
            c((String) obj);
        } else if (2 == i2) {
            a((String) obj);
        } else if (38 != i2) {
            return false;
        } else {
            a((Drawable) obj);
        }
        return true;
    }

    public void b(String str) {
        this.O = str;
        synchronized (this) {
            this.S |= 1;
        }
        a(35);
        super.k();
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void c(String str) {
        this.M = str;
        synchronized (this) {
            this.S |= 2;
        }
        a(8);
        super.k();
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.S;
            this.S = 0;
        }
        String str = this.O;
        String str2 = this.M;
        String str3 = this.L;
        Drawable drawable = this.N;
        long j3 = j2 & 17;
        long j4 = j2 & 18;
        long j5 = j2 & 20;
        if ((j2 & 24) != 0) {
            b.a(this.A, null, null, drawable, null, null, null);
        }
        if (j5 != 0) {
            f.a((TextView) this.B, (CharSequence) str3);
        }
        if (j4 != 0) {
            f.a((TextView) this.H, (CharSequence) str2);
        }
        if (j3 != 0) {
            f.a((TextView) this.K, (CharSequence) str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.S != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.S = 16;
        }
        k();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0419f(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1], objArr[3], objArr[7], objArr[6], objArr[11], objArr[5], objArr[9], objArr[2], objArr[8], objArr[10], objArr[4]);
        this.S = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.R = objArr[0];
        this.R.setTag(null);
        this.H.setTag(null);
        this.K.setTag(null);
        b(view);
        l();
    }

    public void a(String str) {
        this.L = str;
        synchronized (this) {
            this.S |= 4;
        }
        a(2);
        super.k();
    }

    public void a(Drawable drawable) {
        this.N = drawable;
        synchronized (this) {
            this.S |= 8;
        }
        a(38);
        super.k();
    }
}
