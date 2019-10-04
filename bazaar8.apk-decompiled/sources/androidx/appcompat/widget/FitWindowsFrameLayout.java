package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import b.b.g.J;

public class FitWindowsFrameLayout extends FrameLayout implements J {

    /* renamed from: a  reason: collision with root package name */
    public J.a f411a;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public boolean fitSystemWindows(Rect rect) {
        J.a aVar = this.f411a;
        if (aVar != null) {
            aVar.a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(J.a aVar) {
        this.f411a = aVar;
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
