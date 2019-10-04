package f.a.a.g.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import ir.cafebazaar.inline.ux.audio.MediaPlayerService;

/* compiled from: MediaPlayerService */
class f extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MediaPlayerService f14398a;

    public f(MediaPlayerService mediaPlayerService) {
        this.f14398a = mediaPlayerService;
    }

    public void onReceive(Context context, Intent intent) {
        this.f14398a.f15044e.c(intent.getIntExtra("KEY_AUDIO_ID", -1));
    }
}
