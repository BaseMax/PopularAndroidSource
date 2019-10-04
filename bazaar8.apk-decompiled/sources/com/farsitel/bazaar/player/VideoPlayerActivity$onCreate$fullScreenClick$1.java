package com.farsitel.bazaar.player;

import android.content.res.Resources;
import android.view.View;
import com.farsitel.bazaar.analytics.model.what.PlayerActionEvent;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoPlayerActivity.kt */
final class VideoPlayerActivity$onCreate$fullScreenClick$1 extends Lambda implements b<View, h> {
    public final /* synthetic */ VideoPlayerActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoPlayerActivity$onCreate$fullScreenClick$1(VideoPlayerActivity videoPlayerActivity) {
        super(1);
        this.this$0 = videoPlayerActivity;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((View) obj);
        return h.f14579a;
    }

    public final void a(View view) {
        j.b(view, "it");
        Resources resources = this.this$0.getResources();
        j.a((Object) resources, "resources");
        int i2 = resources.getConfiguration().orientation;
        if (i2 == 1) {
            this.this$0.setRequestedOrientation(0);
            VideoPlayerActivity.a(this.this$0, PlayerActionEvent.PlayerAction.FULL_SCREEN, null, 2, null);
        } else if (i2 == 2) {
            this.this$0.setRequestedOrientation(1);
            VideoPlayerActivity.a(this.this$0, PlayerActionEvent.PlayerAction.EXIT_FULL_SCREEN, null, 2, null);
        }
    }
}
