package com.farsitel.bazaar.core.widget;

import android.graphics.RectF;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: AspectRatioRoundImageView.kt */
final class AspectRatioRoundImageView$rect$2 extends Lambda implements a<RectF> {
    public final /* synthetic */ AspectRatioRoundImageView this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AspectRatioRoundImageView$rect$2(AspectRatioRoundImageView aspectRatioRoundImageView) {
        super(0);
        this.this$0 = aspectRatioRoundImageView;
    }

    public final RectF invoke() {
        return new RectF(0.0f, 0.0f, (float) this.this$0.getWidth(), (float) this.this$0.getHeight());
    }
}
