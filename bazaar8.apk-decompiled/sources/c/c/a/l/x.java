package c.c.a.l;

import b.r.u;
import c.c.a.l.a.c;
import com.farsitel.bazaar.analytics.model.what.PlayerActionEvent;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.player.view.InfoControl;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: LiveData.kt */
public final class x<T> implements u<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6151a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6152b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f6153c;

    public x(VideoPlayerActivity videoPlayerActivity, VideoPlayerActivity videoPlayerActivity2, BottomSheetBehavior bottomSheetBehavior) {
        this.f6151a = videoPlayerActivity;
        this.f6152b = videoPlayerActivity2;
        this.f6153c = bottomSheetBehavior;
    }

    public final void a(T t) {
        if (t != null) {
            c cVar = (c) t;
            ((InfoControl) this.f6151a.d(k.buttonQualityPicker)).setText(cVar.b());
            this.f6151a.a(PlayerActionEvent.PlayerAction.QUALITY_CHANGED, (Map<String, String>) z.a(f.a("quality", cVar.b())));
        }
    }
}
