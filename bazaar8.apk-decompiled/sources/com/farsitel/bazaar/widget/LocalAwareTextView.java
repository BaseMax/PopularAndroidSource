package com.farsitel.bazaar.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import h.f.b.f;

/* compiled from: LocalAwareTextView.kt */
public final class LocalAwareTextView extends AppCompatTextView {
    public LocalAwareTextView(Context context) {
        this(context, null, 0, 6, null);
    }

    public LocalAwareTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LocalAwareTextView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0055, code lost:
        if (r5.getLayoutDirection() == 1) goto L_0x0059;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0040, code lost:
        if (r5.getLayoutDirection() == 1) goto L_0x0058;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public LocalAwareTextView(android.content.Context r4, android.util.AttributeSet r5, int r6) {
        /*
            r3 = this;
            java.lang.String r0 = "context"
            h.f.b.j.b(r4, r0)
            r3.<init>(r4, r5, r6)
            int[] r6 = c.c.a.f.LocalAwareTextView
            r0 = 0
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r6, r0, r0)
            if (r4 == 0) goto L_0x001d
            int r5 = r4.getInt(r0, r0)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r4.recycle()
            goto L_0x001e
        L_0x001d:
            r5 = 0
        L_0x001e:
            r4 = 5
            r6 = 3
            java.lang.String r0 = "resources.configuration"
            java.lang.String r1 = "resources"
            r2 = 1
            if (r5 != 0) goto L_0x0028
            goto L_0x0043
        L_0x0028:
            int r5 = r5.intValue()
            if (r5 != r2) goto L_0x0043
            android.content.res.Resources r5 = r3.getResources()
            h.f.b.j.a((java.lang.Object) r5, (java.lang.String) r1)
            android.content.res.Configuration r5 = r5.getConfiguration()
            h.f.b.j.a((java.lang.Object) r5, (java.lang.String) r0)
            int r5 = r5.getLayoutDirection()
            if (r5 != r2) goto L_0x0059
            goto L_0x0058
        L_0x0043:
            android.content.res.Resources r5 = r3.getResources()
            h.f.b.j.a((java.lang.Object) r5, (java.lang.String) r1)
            android.content.res.Configuration r5 = r5.getConfiguration()
            h.f.b.j.a((java.lang.Object) r5, (java.lang.String) r0)
            int r5 = r5.getLayoutDirection()
            if (r5 != r2) goto L_0x0058
            goto L_0x0059
        L_0x0058:
            r4 = 3
        L_0x0059:
            r3.setGravity(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.widget.LocalAwareTextView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
