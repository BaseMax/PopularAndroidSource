package b.b.g;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;

/* renamed from: b.b.g.b  reason: case insensitive filesystem */
/* compiled from: ActionBarBackgroundDrawable */
public class C0207b extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public final ActionBarContainer f2154a;

    public C0207b(ActionBarContainer actionBarContainer) {
        this.f2154a = actionBarContainer;
    }

    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f2154a;
        if (actionBarContainer.f326h) {
            Drawable drawable = actionBarContainer.f325g;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f323e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f2154a;
        Drawable drawable3 = actionBarContainer2.f324f;
        if (drawable3 != null && actionBarContainer2.f327i) {
            drawable3.draw(canvas);
        }
    }

    public int getOpacity() {
        return 0;
    }

    public void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f2154a;
        if (actionBarContainer.f326h) {
            Drawable drawable = actionBarContainer.f325g;
            if (drawable != null) {
                drawable.getOutline(outline);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f323e;
        if (drawable2 != null) {
            drawable2.getOutline(outline);
        }
    }

    public void setAlpha(int i2) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }
}
