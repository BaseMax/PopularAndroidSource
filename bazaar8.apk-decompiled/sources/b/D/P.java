package b.D;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* compiled from: ViewGroupOverlayApi18 */
public class P implements Q {

    /* renamed from: a  reason: collision with root package name */
    public final ViewGroupOverlay f1115a;

    public P(ViewGroup viewGroup) {
        this.f1115a = viewGroup.getOverlay();
    }

    public void a(Drawable drawable) {
        this.f1115a.add(drawable);
    }

    public void b(Drawable drawable) {
        this.f1115a.remove(drawable);
    }

    public void a(View view) {
        this.f1115a.add(view);
    }

    public void b(View view) {
        this.f1115a.remove(view);
    }
}
