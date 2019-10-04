package com.google.android.gms.common.internal;

import android.content.Context;
import android.widget.Button;

public final class zzby extends Button {
    public zzby(Context context) {
        this(context, (byte) 0);
    }

    private zzby(Context context, byte b2) {
        super(context, null, 16842824);
    }

    private static int a(int i, int i2, int i3, int i4) {
        if (i == 0) {
            return i2;
        }
        if (i == 1) {
            return i3;
        }
        if (i == 2) {
            return i4;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Unknown color scheme: ");
        sb.append(i);
        throw new IllegalStateException(sb.toString());
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x00b8  */
    /* JADX WARNING: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(android.content.res.Resources r7, int r8, int r9) {
        /*
            r6 = this;
            android.graphics.Typeface r0 = android.graphics.Typeface.DEFAULT_BOLD
            r6.setTypeface(r0)
            r0 = 1096810496(0x41600000, float:14.0)
            r6.setTextSize(r0)
            android.util.DisplayMetrics r0 = r7.getDisplayMetrics()
            float r0 = r0.density
            r1 = 1111490560(0x42400000, float:48.0)
            float r0 = r0 * r1
            r1 = 1056964608(0x3f000000, float:0.5)
            float r0 = r0 + r1
            int r0 = (int) r0
            r6.setMinHeight(r0)
            r6.setMinWidth(r0)
            int r0 = com.google.android.gms.a.b.common_google_signin_btn_icon_dark
            int r1 = com.google.android.gms.a.b.common_google_signin_btn_icon_light
            int r0 = a(r9, r0, r1, r1)
            int r1 = com.google.android.gms.a.b.common_google_signin_btn_text_dark
            int r2 = com.google.android.gms.a.b.common_google_signin_btn_text_light
            int r1 = a(r9, r1, r2, r2)
            java.lang.String r2 = "Unknown button size: "
            r3 = 32
            r4 = 2
            r5 = 1
            if (r8 == 0) goto L_0x0050
            if (r8 == r5) goto L_0x0050
            if (r8 != r4) goto L_0x003b
            goto L_0x0051
        L_0x003b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>(r3)
            r9.append(r2)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            r7.<init>(r8)
            throw r7
        L_0x0050:
            r0 = r1
        L_0x0051:
            android.graphics.drawable.Drawable r0 = r7.getDrawable(r0)
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.DrawableCompat.wrap(r0)
            int r1 = com.google.android.gms.a.C0059a.common_google_signin_btn_tint
            android.content.res.ColorStateList r1 = r7.getColorStateList(r1)
            androidx.core.graphics.drawable.DrawableCompat.setTintList(r0, r1)
            android.graphics.PorterDuff$Mode r1 = android.graphics.PorterDuff.Mode.SRC_ATOP
            androidx.core.graphics.drawable.DrawableCompat.setTintMode(r0, r1)
            r6.setBackgroundDrawable(r0)
            int r0 = com.google.android.gms.a.C0059a.common_google_signin_btn_text_dark
            int r1 = com.google.android.gms.a.C0059a.common_google_signin_btn_text_light
            int r9 = a(r9, r0, r1, r1)
            android.content.res.ColorStateList r9 = r7.getColorStateList(r9)
            java.lang.Object r9 = com.google.android.gms.common.internal.ap.checkNotNull(r9)
            android.content.res.ColorStateList r9 = (android.content.res.ColorStateList) r9
            r6.setTextColor(r9)
            r9 = 0
            if (r8 == 0) goto L_0x00a2
            if (r8 == r5) goto L_0x009f
            if (r8 != r4) goto L_0x008a
            r6.setText(r9)
            goto L_0x00ab
        L_0x008a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>(r3)
            r9.append(r2)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            r7.<init>(r8)
            throw r7
        L_0x009f:
            int r8 = com.google.android.gms.a.c.common_signin_button_text_long
            goto L_0x00a4
        L_0x00a2:
            int r8 = com.google.android.gms.a.c.common_signin_button_text
        L_0x00a4:
            java.lang.String r7 = r7.getString(r8)
            r6.setText(r7)
        L_0x00ab:
            r6.setTransformationMethod(r9)
            android.content.Context r7 = r6.getContext()
            boolean r7 = com.google.android.gms.common.util.f.zzcs(r7)
            if (r7 == 0) goto L_0x00bd
            r7 = 19
            r6.setGravity(r7)
        L_0x00bd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzby.zza(android.content.res.Resources, int, int):void");
    }
}
