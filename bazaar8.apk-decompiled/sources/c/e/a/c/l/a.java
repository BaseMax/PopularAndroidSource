package c.e.a.c.l;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import b.i.k.C0258a;
import b.i.k.a.d;
import com.google.android.material.internal.CheckableImageButton;

/* compiled from: CheckableImageButton */
class a extends C0258a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ CheckableImageButton f11362d;

    public a(CheckableImageButton checkableImageButton) {
        this.f11362d = checkableImageButton;
    }

    public void a(View view, d dVar) {
        super.a(view, dVar);
        dVar.b(true);
        dVar.c(this.f11362d.isChecked());
    }

    public void b(View view, AccessibilityEvent accessibilityEvent) {
        super.b(view, accessibilityEvent);
        accessibilityEvent.setChecked(this.f11362d.isChecked());
    }
}
