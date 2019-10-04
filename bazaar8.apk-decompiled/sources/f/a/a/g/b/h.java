package f.a.a.g.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import ir.cafebazaar.inline.ux.audio.MediaPlayerService;
import ir.cafebazaar.inline.ux.audio.MusicDescriptor;

/* compiled from: MediaPlayerService */
class h extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MediaPlayerService f14400a;

    public h(MediaPlayerService mediaPlayerService) {
        this.f14400a = mediaPlayerService;
    }

    public void onReceive(Context context, Intent intent) {
        this.f14400a.f15044e.a((MusicDescriptor) intent.getParcelableExtra("KEY_REGISTER_AUDIO"));
    }
}
