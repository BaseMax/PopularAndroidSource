package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import com.farsitel.bazaar.R;

/* renamed from: c.c.a.f.h  reason: case insensitive filesystem */
/* compiled from: DialogForceUpdateBindingImpl */
public class C0427h extends C0423g {
    public static final ViewDataBinding.b I = null;
    public static final SparseIntArray J = new SparseIntArray();
    public final CardView K;
    public long L;

    static {
        J.put(R.id.bazaarIcon, 1);
        J.put(R.id.forceUpdateMessage, 2);
        J.put(R.id.getBazaarButton, 3);
        J.put(R.id.appDownloadState, 4);
        J.put(R.id.appDownloadProgressBar, 5);
        J.put(R.id.ivCancelDownload, 6);
        J.put(R.id.appDownloadGroup, 7);
        J.put(R.id.ivCancelDownloadContainer, 8);
    }

    public C0427h(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 9, I, J));
    }

    public boolean a(int i2, Object obj) {
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        synchronized (this) {
            long j2 = this.L;
            this.L = 0;
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.L != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.L = 1;
        }
        k();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0427h(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[7], objArr[5], objArr[4], objArr[1], objArr[2], objArr[3], objArr[6], objArr[8]);
        this.L = -1;
        this.K = objArr[0];
        this.K.setTag(null);
        View view2 = view;
        b(view);
        l();
    }
}
