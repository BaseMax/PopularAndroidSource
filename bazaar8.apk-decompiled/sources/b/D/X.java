package b.D;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* compiled from: ViewOverlayApi18 */
public class X implements Y {

    /* renamed from: a  reason: collision with root package name */
    public final ViewOverlay f1129a;

    public X(View view) {
        this.f1129a = view.getOverlay();
    }

    public void a(Drawable drawable) {
        this.f1129a.add(drawable);
    }

    public void b(Drawable drawable) {
        this.f1129a.remove(drawable);
    }
}
