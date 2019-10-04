package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.ToolbarInfoModel;

/* renamed from: c.c.a.f.v  reason: case insensitive filesystem */
/* compiled from: FragmentReportAppBindingImpl */
public class C0468v extends C0465u {
    public static final ViewDataBinding.b S = null;
    public static final SparseIntArray T = new SparseIntArray();
    public long U;

    static {
        T.put(R.id.appBarLayout, 5);
        T.put(R.id.toolbar, 6);
        T.put(R.id.toolbarBackButton, 7);
        T.put(R.id.nsReport, 8);
        T.put(R.id.rgReport, 9);
        T.put(R.id.reportInappropriate, 10);
        T.put(R.id.unpleasantImage, 11);
        T.put(R.id.offensiveContent, 12);
        T.put(R.id.violentImages, 13);
        T.put(R.id.otherObjection, 14);
        T.put(R.id.etUserReport, 15);
        T.put(R.id.btSubmitReport, 16);
    }

    public C0468v(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 17, S, T));
    }

    public boolean a(int i2, Object obj) {
        if (53 != i2) {
            return false;
        }
        a((ToolbarInfoModel) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        String str3;
        String str4;
        synchronized (this) {
            j2 = this.U;
            this.U = 0;
        }
        ToolbarInfoModel toolbarInfoModel = this.R;
        long j3 = j2 & 3;
        String str5 = null;
        if (j3 != 0) {
            if (toolbarInfoModel != null) {
                String b2 = toolbarInfoModel.b();
                str3 = toolbarInfoModel.c();
                String str6 = b2;
                str5 = toolbarInfoModel.a();
                str4 = str6;
            } else {
                str4 = null;
                str3 = null;
            }
            str2 = String.format(this.L.getResources().getString(R.string.reportTitle), new Object[]{str5});
            str = str4;
        } else {
            str3 = null;
            str2 = null;
            str = null;
        }
        if (j3 != 0) {
            b.a(this.B, str, null, null, null, null, null);
            f.a((TextView) this.C, (CharSequence) str5);
            f.a((TextView) this.I, (CharSequence) str3);
            f.a((TextView) this.L, (CharSequence) str2);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.U != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.U = 2;
        }
        k();
    }

    public C0468v(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[5], objArr[1], objArr[3], objArr[16], objArr[15], objArr[8], objArr[12], objArr[14], objArr[2], objArr[10], objArr[0], objArr[4], objArr[9], objArr[6], objArr[7], objArr[11], objArr[13]);
        this.U = -1;
        this.B.setTag(null);
        this.C.setTag(null);
        this.I.setTag(null);
        this.K.setTag(null);
        this.L.setTag(null);
        b(view);
        l();
    }

    public void a(ToolbarInfoModel toolbarInfoModel) {
        this.R = toolbarInfoModel;
        synchronized (this) {
            this.U |= 1;
        }
        a(53);
        super.k();
    }
}
