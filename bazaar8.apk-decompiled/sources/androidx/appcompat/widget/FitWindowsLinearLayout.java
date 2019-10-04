package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import b.b.g.J;

public class FitWindowsLinearLayout extends LinearLayout implements J {

    /* renamed from: a  reason: collision with root package name */
    public J.a f412a;

    public FitWindowsLinearLayout(Context context) {
        super(context);
    }

    public boolean fitSystemWindows(Rect rect) {
        J.a aVar = this.f412a;
        if (aVar != null) {
            aVar.a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(J.a aVar) {
        this.f412a = aVar;
    }

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
