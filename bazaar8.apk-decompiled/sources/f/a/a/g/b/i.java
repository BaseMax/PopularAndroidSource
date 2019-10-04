package f.a.a.g.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import ir.cafebazaar.inline.ux.audio.MediaPlayerService;

/* compiled from: MediaPlayerService */
class i extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MediaPlayerService f14401a;

    public i(MediaPlayerService mediaPlayerService) {
        this.f14401a = mediaPlayerService;
    }

    public void onReceive(Context context, Intent intent) {
        this.f14401a.f15044e.d(intent.getIntExtra("KEY_SEEK_TO_POSITION", 0));
    }
}
