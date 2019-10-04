package b.b.g;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import b.b.a;

/* renamed from: b.b.g.t  reason: case insensitive filesystem */
/* compiled from: AppCompatSeekBar */
public class C0228t extends SeekBar {

    /* renamed from: a  reason: collision with root package name */
    public final C0229u f2235a;

    public C0228t(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.seekBarStyle);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f2235a.d();
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f2235a.e();
    }

    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f2235a.a(canvas);
    }

    public C0228t(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f2235a = new C0229u(this);
        this.f2235a.a(attributeSet, i2);
    }
}
