package b.i.k.a;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* compiled from: AccessibilityClickableSpanCompat */
public final class a extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    public final int f2783a;

    /* renamed from: b  reason: collision with root package name */
    public final d f2784b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2785c;

    public a(int i2, d dVar, int i3) {
        this.f2783a = i2;
        this.f2784b = dVar;
        this.f2785c = i3;
    }

    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f2783a);
        this.f2784b.a(this.f2785c, bundle);
    }
}
