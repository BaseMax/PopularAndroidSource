package c.c.a.l;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.widget.ImageView;
import android.widget.TextView;
import b.i.b.a.h;
import c.c.a.d.g.a.i;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.ui.SubtitleView;
import e.a.a.a.a.b.C1046a;
import h.f.b.f;
import h.f.b.j;

/* compiled from: CafePlayerUIController.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6112a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final f f6113b;

    /* compiled from: CafePlayerUIController.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public e(f fVar) {
        j.b(fVar, "params");
        this.f6113b = fVar;
    }

    public final void a(PlayerView playerView) {
        Typeface typeface;
        j.b(playerView, "playerView");
        f fVar = this.f6113b;
        Context context = playerView.getContext();
        ImageView imageView = (ImageView) playerView.findViewById(k.exo_watermark);
        Uri h2 = fVar.h();
        if (h2 != null) {
            i iVar = i.f4812a;
            j.a((Object) imageView, "watermarkView");
            String uri = h2.toString();
            j.a((Object) uri, "it.toString()");
            i.a(iVar, imageView, uri, null, null, null, 0, 60, null);
        }
        playerView.setFastForwardIncrementMs(C1046a.DEFAULT_TIMEOUT);
        playerView.setRewindIncrementMs(C1046a.DEFAULT_TIMEOUT);
        SubtitleView subtitleView = (SubtitleView) playerView.findViewById(k.exo_subtitles);
        try {
            typeface = h.a(context, j.medium);
        } catch (Resources.NotFoundException unused) {
            j.a((Object) subtitleView, "subtitleView");
            typeface = Typeface.create(new TextView(subtitleView.getContext()).getTypeface(), 0);
        }
        c.e.a.a.k.a aVar = new c.e.a.a.k.a(-1, b.i.b.a.a(context, h.player_subtitle_background), 0, 0, -1, typeface);
        subtitleView.setStyle(aVar);
    }
}
