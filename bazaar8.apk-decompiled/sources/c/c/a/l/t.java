package c.c.a.l;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.l.a.b;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;
import java.util.List;

/* compiled from: VideoPlayerActivity.kt */
final class t implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ List f6138a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ u f6139b;

    public t(List list, u uVar) {
        this.f6138a = list;
        this.f6139b = uVar;
    }

    public final void onClick(View view) {
        ((AppCompatTextView) this.f6139b.f6141b.d(k.bottomSheetTitle)).setText(m.player_select_quality);
        RecyclerView recyclerView = (RecyclerView) this.f6139b.f6141b.d(k.list);
        j.a((Object) recyclerView, "list");
        recyclerView.setAdapter(new b(this.f6138a, new VideoPlayerActivity$onCreate$$inlined$with$lambda$4$1$1(this)));
        u uVar = this.f6139b;
        VideoPlayerActivity videoPlayerActivity = uVar.f6141b;
        BottomSheetBehavior bottomSheetBehavior = uVar.f6143d;
        j.a((Object) bottomSheetBehavior, "behavior");
        videoPlayerActivity.a((BottomSheetBehavior<?>) bottomSheetBehavior);
    }
}
