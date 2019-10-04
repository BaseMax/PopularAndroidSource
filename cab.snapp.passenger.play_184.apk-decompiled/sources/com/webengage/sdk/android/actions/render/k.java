package com.webengage.sdk.android.actions.render;

import com.webengage.sdk.android.callbacks.CustomPushRender;
import com.webengage.sdk.android.callbacks.CustomPushRerender;
import com.webengage.sdk.android.utils.WebEngageConstant;

class k {

    /* renamed from: com.webengage.sdk.android.actions.render.k$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5399a = new int[WebEngageConstant.STYLE.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                com.webengage.sdk.android.utils.WebEngageConstant$STYLE[] r0 = com.webengage.sdk.android.utils.WebEngageConstant.STYLE.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5399a = r0
                int[] r0 = f5399a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.utils.WebEngageConstant$STYLE r1 = com.webengage.sdk.android.utils.WebEngageConstant.STYLE.BIG_TEXT     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5399a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.utils.WebEngageConstant$STYLE r1 = com.webengage.sdk.android.utils.WebEngageConstant.STYLE.BIG_PICTURE     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5399a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.webengage.sdk.android.utils.WebEngageConstant$STYLE r1 = com.webengage.sdk.android.utils.WebEngageConstant.STYLE.CAROUSEL_V1     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f5399a     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.webengage.sdk.android.utils.WebEngageConstant$STYLE r1 = com.webengage.sdk.android.utils.WebEngageConstant.STYLE.RATING_V1     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.k.AnonymousClass1.<clinit>():void");
        }
    }

    static CustomPushRender a(WebEngageConstant.STYLE style) {
        int i = AnonymousClass1.f5399a[style.ordinal()];
        if (i == 1) {
            return new d();
        }
        if (i == 2) {
            return new c();
        }
        if (i == 3) {
            return new e();
        }
        if (i != 4) {
            return null;
        }
        return new l();
    }

    static CustomPushRerender b(WebEngageConstant.STYLE style) {
        int i = AnonymousClass1.f5399a[style.ordinal()];
        if (i == 3) {
            return new e();
        }
        if (i != 4) {
            return null;
        }
        return new l();
    }
}
