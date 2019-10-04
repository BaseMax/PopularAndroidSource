package f.a.a.e.b;

import android.content.Intent;
import android.util.Log;
import f.a.a.e.g;
import ir.cafebazaar.inline.ux.audio.PlayPauseView;

/* renamed from: f.a.a.e.b.a  reason: case insensitive filesystem */
/* compiled from: AudioInflater */
class C1053a implements PlayPauseView.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PlayPauseView f14103a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f14104b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1067i f14105c;

    public C1053a(C1067i iVar, PlayPauseView playPauseView, g gVar) {
        this.f14105c = iVar;
        this.f14103a = playPauseView;
        this.f14104b = gVar;
    }

    public void a() {
        PlayPauseView.State state = this.f14103a.getState();
        if (state != null) {
            int i2 = C1066h.f14245a[state.ordinal()];
            if (i2 == 1) {
                return;
            }
            if (i2 == 2) {
                this.f14104b.f().sendBroadcast(new Intent("ir.cafebazaar.inline.audioplayer.PausePlayingAudio"));
            } else if (i2 == 3 || i2 == 4 || i2 == 5) {
                Intent intent = new Intent("ir.cafebazaar.inline.audioplayer.PlayNewAudio");
                intent.putExtra("KEY_AUDIO_ID", this.f14105c.f14247d);
                this.f14104b.f().sendBroadcast(intent);
            } else {
                Log.d("InlineAudioInflater", "onClick with state " + state);
            }
        }
    }
}
