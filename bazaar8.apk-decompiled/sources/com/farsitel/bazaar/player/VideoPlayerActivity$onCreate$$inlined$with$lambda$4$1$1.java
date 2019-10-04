package com.farsitel.bazaar.player;

import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoPlayerActivity.kt */
final class VideoPlayerActivity$onCreate$$inlined$with$lambda$4$1$1 extends Lambda implements b<Integer, h> {
    public final /* synthetic */ t this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoPlayerActivity$onCreate$$inlined$with$lambda$4$1$1(t tVar) {
        super(1);
        this.this$0 = tVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a(((Number) obj).intValue());
        return h.f14579a;
    }

    public final void a(int i2) {
        BottomSheetBehavior bottomSheetBehavior = this.this$0.f6139b.f6143d;
        j.a((Object) bottomSheetBehavior, "behavior");
        bottomSheetBehavior.c(4);
        this.this$0.f6139b.f6140a.c(i2);
    }
}
