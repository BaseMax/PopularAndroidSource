package c.c.a.l;

import c.e.a.a.m.p;
import com.farsitel.bazaar.analytics.model.what.PlayerActionEvent;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import h.a.A;
import h.f;
import java.util.Map;

/* compiled from: VideoPlayerActivity.kt */
public final class p implements p.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6128a;

    public p(VideoPlayerActivity videoPlayerActivity) {
        this.f6128a = videoPlayerActivity;
    }

    public void a(c.e.a.a.m.p pVar, long j2) {
    }

    public void a(c.e.a.a.m.p pVar, long j2, boolean z) {
        VideoPlayerActivity videoPlayerActivity = this.f6128a;
        videoPlayerActivity.a(PlayerActionEvent.PlayerAction.SEEK, (Map<String, String>) A.b(f.a("start", String.valueOf(videoPlayerActivity.A)), f.a("end", String.valueOf(j2))));
        this.f6128a.A = 0;
    }

    public void b(c.e.a.a.m.p pVar, long j2) {
        this.f6128a.A = j2;
    }
}
