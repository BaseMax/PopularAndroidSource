package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;

/* renamed from: c.c.a.f.z  reason: case insensitive filesystem */
/* compiled from: FragmentScreenshotItemBindingImpl */
public class C0480z extends C0477y {
    public static final ViewDataBinding.b C = null;
    public static final SparseIntArray D = null;
    public final ConstraintLayout E;
    public long F;

    public C0480z(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, C, D));
    }

    public boolean a(int i2, Object obj) {
        if (4 != i2) {
            return false;
        }
        a((EntityScreenshotItem) obj);
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
            j2 = this.F;
            this.F = 0;
        }
        EntityScreenshotItem entityScreenshotItem = this.B;
        long j3 = j2 & 3;
        if (j3 == 0 || entityScreenshotItem == null) {
            str2 = null;
            str = null;
        } else {
            String mainUrl = entityScreenshotItem.getMainUrl();
            str = entityScreenshotItem.getThumbnailUrl();
            str2 = mainUrl;
        }
        if (j3 != 0) {
            b.a(this.A, str2, null, null, null, str, null);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.F != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.F = 2;
        }
        k();
    }

    public C0480z(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1]);
        this.F = -1;
        this.E = objArr[0];
        this.E.setTag(null);
        this.A.setTag(null);
        b(view);
        l();
    }

    public void a(EntityScreenshotItem entityScreenshotItem) {
        this.B = entityScreenshotItem;
        synchronized (this) {
            this.F |= 1;
        }
        a(4);
        super.k();
    }
}
