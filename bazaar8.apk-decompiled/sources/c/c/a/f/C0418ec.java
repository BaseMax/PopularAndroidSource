package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.CinemaBigScreenshotItem;

/* renamed from: c.c.a.f.ec  reason: case insensitive filesystem */
/* compiled from: ItemVideoDetailVideoBigScreenshotCoverItemBindingImpl */
public class C0418ec extends C0414dc {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = new SparseIntArray();
    public long G;

    static {
        F.put(R.id.screenShotItemConstraintLayout, 2);
    }

    public C0418ec(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 != i2) {
            return false;
        }
        a((CinemaBigScreenshotItem) obj);
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.G;
            this.G = 0;
        }
        CinemaBigScreenshotItem cinemaBigScreenshotItem = this.D;
        String str = null;
        long j3 = j2 & 3;
        if (!(j3 == 0 || cinemaBigScreenshotItem == null)) {
            str = cinemaBigScreenshotItem.getThumbnailUrl();
        }
        String str2 = str;
        if (j3 != 0) {
            b.a(this.C, str2, null, null, null, null, null);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.G != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.G = 2;
        }
        k();
    }

    public C0418ec(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[0], objArr[2], objArr[1]);
        this.G = -1;
        this.A.setTag(null);
        this.C.setTag(null);
        b(view);
        l();
    }

    public void a(CinemaBigScreenshotItem cinemaBigScreenshotItem) {
        this.D = cinemaBigScreenshotItem;
        synchronized (this) {
            this.G |= 1;
        }
        a(45);
        super.k();
    }
}
