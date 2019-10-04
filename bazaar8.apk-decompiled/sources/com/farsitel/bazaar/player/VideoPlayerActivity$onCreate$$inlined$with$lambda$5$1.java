package com.farsitel.bazaar.player;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.l.k;
import c.c.a.l.m;
import c.c.a.l.v;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoPlayerActivity.kt */
final class VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1 extends Lambda implements b<View, h> {
    public final /* synthetic */ List $items;
    public final /* synthetic */ v this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1(List list, v vVar) {
        super(1);
        this.$items = list;
        this.this$0 = vVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((View) obj);
        return h.f14579a;
    }

    public final void a(View view) {
        j.b(view, "it");
        ((AppCompatTextView) this.this$0.f6145b.d(k.bottomSheetTitle)).setText(m.player_select_subtitle);
        RecyclerView recyclerView = (RecyclerView) this.this$0.f6145b.d(k.list);
        j.a((Object) recyclerView, "list");
        recyclerView.setAdapter(new c.c.a.l.a.b(this.$items, new b<Integer, h>(this) {
            public final /* synthetic */ VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1 this$0;

            {
                this.this$0 = r1;
            }

            public /* bridge */ /* synthetic */ Object a(Object obj) {
                a(((Number) obj).intValue());
                return h.f14579a;
            }

            public final void a(int i2) {
                BottomSheetBehavior bottomSheetBehavior = this.this$0.this$0.f6147d;
                j.a((Object) bottomSheetBehavior, "behavior");
                bottomSheetBehavior.c(4);
                this.this$0.this$0.f6144a.d(i2);
            }
        }));
        v vVar = this.this$0;
        VideoPlayerActivity videoPlayerActivity = vVar.f6145b;
        BottomSheetBehavior bottomSheetBehavior = vVar.f6147d;
        j.a((Object) bottomSheetBehavior, "behavior");
        videoPlayerActivity.a((BottomSheetBehavior<?>) bottomSheetBehavior);
    }
}
