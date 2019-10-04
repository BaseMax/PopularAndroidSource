package f.a.a.e.b.a;

import android.graphics.Matrix;
import androidx.viewpager.widget.ViewPager;
import com.github.chrisbanes.photoview.PhotoView;
import f.a.a.e;
import ir.cafebazaar.inline.ui.inflaters.activities.FullScreenImageActivity;

/* compiled from: FullScreenImageActivity */
class a implements ViewPager.f {

    /* renamed from: a  reason: collision with root package name */
    public int f14106a = this.f14107b.f15020b.getCurrentItem();

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ FullScreenImageActivity f14107b;

    public a(FullScreenImageActivity fullScreenImageActivity) {
        this.f14107b = fullScreenImageActivity;
    }

    public void a(int i2) {
        if (i2 == 0 && this.f14106a != this.f14107b.f15020b.getCurrentItem()) {
            for (int i3 = 0; i3 < this.f14107b.f15020b.getChildCount(); i3++) {
                PhotoView photoView = (PhotoView) this.f14107b.f15020b.getChildAt(i3).findViewById(e.image);
                photoView.a(new Matrix());
                photoView.b(new Matrix());
            }
            this.f14106a = this.f14107b.f15020b.getCurrentItem();
        }
    }

    public void a(int i2, float f2, int i3) {
    }

    public void b(int i2) {
    }
}
