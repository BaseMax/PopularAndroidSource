package com.webengage.sdk.android.actions.render;

public class a {
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v3, resolved type: android.view.animation.AlphaAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v4, resolved type: android.view.animation.AlphaAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v12, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v14, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v15, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v9, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v10, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v11, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v12, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v13, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v14, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v15, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v16, resolved type: android.view.animation.TranslateAnimation} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.view.animation.Animation a(java.lang.String r10, android.view.animation.Animation.AnimationListener r11, long r12) {
        /*
            java.lang.String r0 = "TOP_IN"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x001f
            android.view.animation.TranslateAnimation r10 = new android.view.animation.TranslateAnimation
            r2 = 2
            r3 = 0
            r4 = 2
            r5 = 0
            r6 = 2
            r7 = -1082130432(0xffffffffbf800000, float:-1.0)
            r8 = 2
            r9 = 0
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
        L_0x0017:
            r10.setDuration(r12)
            r10.setAnimationListener(r11)
            goto L_0x00eb
        L_0x001f:
            java.lang.String r0 = "TOP_OUT"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x0037
            android.view.animation.TranslateAnimation r10 = new android.view.animation.TranslateAnimation
            r2 = 2
            r3 = 0
            r4 = 2
            r5 = 0
            r6 = 2
            r7 = 0
            r8 = 2
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            goto L_0x0017
        L_0x0037:
            java.lang.String r0 = "BOTTOM_IN"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x004f
            android.view.animation.TranslateAnimation r10 = new android.view.animation.TranslateAnimation
            r2 = 2
            r3 = 0
            r4 = 2
            r5 = 0
            r6 = 2
            r7 = 1065353216(0x3f800000, float:1.0)
            r8 = 2
            r9 = 0
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            goto L_0x0017
        L_0x004f:
            java.lang.String r0 = "BOTTOM_OUT"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x0067
            android.view.animation.TranslateAnimation r10 = new android.view.animation.TranslateAnimation
            r2 = 2
            r3 = 0
            r4 = 2
            r5 = 0
            r6 = 2
            r7 = 0
            r8 = 2
            r9 = 1065353216(0x3f800000, float:1.0)
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            goto L_0x0017
        L_0x0067:
            java.lang.String r0 = "LEFT_IN"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x007f
            android.view.animation.TranslateAnimation r10 = new android.view.animation.TranslateAnimation
            r2 = 2
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            r4 = 2
            r5 = 0
            r6 = 2
            r7 = 0
            r8 = 2
            r9 = 0
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            goto L_0x0017
        L_0x007f:
            java.lang.String r0 = "LEFT_OUT"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x0097
            android.view.animation.TranslateAnimation r10 = new android.view.animation.TranslateAnimation
            r2 = 2
            r3 = 0
            r4 = 2
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r6 = 2
            r7 = 0
            r8 = 2
            r9 = 0
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            goto L_0x0017
        L_0x0097:
            java.lang.String r0 = "RIGHT_IN"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x00b0
            android.view.animation.TranslateAnimation r10 = new android.view.animation.TranslateAnimation
            r2 = 2
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = 2
            r5 = 0
            r6 = 2
            r7 = 0
            r8 = 2
            r9 = 0
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            goto L_0x0017
        L_0x00b0:
            java.lang.String r0 = "RIGHT_OUT"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L_0x00c9
            android.view.animation.TranslateAnimation r10 = new android.view.animation.TranslateAnimation
            r2 = 2
            r3 = 0
            r4 = 2
            r5 = 1065353216(0x3f800000, float:1.0)
            r6 = 2
            r7 = 0
            r8 = 2
            r9 = 0
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            goto L_0x0017
        L_0x00c9:
            java.lang.String r0 = "FADE_IN"
            boolean r0 = r0.equals(r10)
            r1 = 1065353216(0x3f800000, float:1.0)
            r2 = 0
            if (r0 == 0) goto L_0x00db
            android.view.animation.AlphaAnimation r10 = new android.view.animation.AlphaAnimation
            r10.<init>(r2, r1)
            goto L_0x0017
        L_0x00db:
            java.lang.String r0 = "FADE_OUT"
            boolean r10 = r0.equals(r10)
            if (r10 == 0) goto L_0x00ea
            android.view.animation.AlphaAnimation r10 = new android.view.animation.AlphaAnimation
            r10.<init>(r1, r2)
            goto L_0x0017
        L_0x00ea:
            r10 = 0
        L_0x00eb:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.a.a(java.lang.String, android.view.animation.Animation$AnimationListener, long):android.view.animation.Animation");
    }
}
