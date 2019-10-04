package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import com.farsitel.bazaar.R;

/* renamed from: c.c.a.f.b  reason: case insensitive filesystem */
/* compiled from: ActivityMainBindingImpl */
public class C0403b extends C0399a {
    public static final ViewDataBinding.b K = null;
    public static final SparseIntArray L = new SparseIntArray();
    public long M;

    static {
        L.put(R.id.rootView, 1);
        L.put(R.id.homeTabContainer, 2);
        L.put(R.id.appTabContainer, 3);
        L.put(R.id.gameTabContainer, 4);
        L.put(R.id.videosTabContainer, 5);
        L.put(R.id.categoriesTabContainer, 6);
        L.put(R.id.searchTabContainer, 7);
        L.put(R.id.myBazaarTabContainer, 8);
        L.put(R.id.bottomNavigation, 9);
    }

    public C0403b(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 10, K, L));
    }

    public boolean a(int i2, Object obj) {
        return true;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        synchronized (this) {
            long j2 = this.M;
            this.M = 0;
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.M != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.M = 1;
        }
        k();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0403b(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[3], objArr[9], objArr[6], objArr[4], objArr[2], objArr[0], objArr[8], objArr[1], objArr[7], objArr[5]);
        this.M = -1;
        this.F.setTag(null);
        b(view);
        l();
    }
}
