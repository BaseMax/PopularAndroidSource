package b.E.a.a;

import android.graphics.drawable.Drawable;

/* compiled from: AnimatedVectorDrawableCompat */
class c implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f1225a;

    public c(d dVar) {
        this.f1225a = dVar;
    }

    public void invalidateDrawable(Drawable drawable) {
        this.f1225a.invalidateSelf();
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        this.f1225a.scheduleSelf(runnable, j2);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        this.f1225a.unscheduleSelf(runnable);
    }
}
