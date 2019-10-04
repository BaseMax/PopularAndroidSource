package com.farsitel.bazaar.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import b.i.l.j;
import h.f.b.f;

/* compiled from: AutosizingTextView.kt */
public class AutosizingTextView extends AppCompatTextView {

    /* renamed from: e  reason: collision with root package name */
    public final int f12373e;

    /* renamed from: f  reason: collision with root package name */
    public final int f12374f;

    /* renamed from: g  reason: collision with root package name */
    public final int f12375g;

    public AutosizingTextView(Context context) {
        this(context, null, 0, 6, null);
    }

    public AutosizingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AutosizingTextView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    public final void e() {
        j.a((TextView) this, 0);
    }

    public final void f() {
        int i2 = this.f12373e;
        if (i2 > 0) {
            int i3 = this.f12374f;
            if (i3 > 0) {
                int i4 = this.f12375g;
                if (i4 > 0) {
                    j.a((TextView) this, i2, i3, i4, 0);
                }
            }
        }
    }

    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        e();
        super.setText(charSequence, bufferType);
        post(new a(this));
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AutosizingTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        h.f.b.j.b(context, "context");
        Resources resources = getResources();
        h.f.b.j.a((Object) resources, "resources");
        Configuration configuration = resources.getConfiguration();
        h.f.b.j.a((Object) configuration, "resources.configuration");
        setGravity(configuration.getLayoutDirection() == 1 ? 5 : 3);
        this.f12373e = j.b(this);
        this.f12374f = j.a((TextView) this);
        this.f12375g = j.c(this);
    }
}
