package f.a.a.g.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* compiled from: MediaPlayerPlayback */
class c extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f14384a;

    public c(e eVar) {
        this.f14384a = eVar;
    }

    public void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            Log.d("MediaPlayerPlayback", "Headphones disconnected.");
            if (this.f14384a.isPlaying() && this.f14384a.f14392g != null) {
                this.f14384a.f14392g.b();
            }
        }
    }
}
