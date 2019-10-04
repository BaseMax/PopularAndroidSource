package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadQualityHeader;

/* compiled from: ItemVideoDownloadHeaderBindingImpl */
public class qc extends pc {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = null;
    public final ConstraintLayout G;
    public long H;

    public qc(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((VideoDownloadQualityHeader) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        synchronized (this) {
            j2 = this.H;
            this.H = 0;
        }
        VideoDownloadQualityHeader videoDownloadQualityHeader = this.D;
        long j3 = j2 & 3;
        String str3 = null;
        if (j3 == 0 || videoDownloadQualityHeader == null) {
            str2 = null;
            str = null;
        } else {
            str3 = videoDownloadQualityHeader.c();
            str = videoDownloadQualityHeader.a();
            str2 = videoDownloadQualityHeader.b();
        }
        if (j3 != 0) {
            f.a((TextView) this.A, (CharSequence) str2);
            b.a((View) this.A, str2);
            f.a((TextView) this.B, (CharSequence) str3);
            f.a((TextView) this.C, (CharSequence) str);
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
            this.H = 2;
        }
        k();
    }

    public qc(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[3], objArr[1], objArr[2]);
        this.H = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        this.G = objArr[0];
        this.G.setTag(null);
        b(view);
        l();
    }

    public void a(VideoDownloadQualityHeader videoDownloadQualityHeader) {
        this.D = videoDownloadQualityHeader;
        synchronized (this) {
            this.H |= 1;
        }
        a(45);
        super.k();
    }
}
