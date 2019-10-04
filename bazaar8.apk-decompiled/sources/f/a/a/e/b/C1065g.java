package f.a.a.e.b;

import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.widget.SeekBar;
import android.widget.Toast;
import f.a.a.e.g;
import ir.cafebazaar.inline.ux.audio.PlayPauseView;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: f.a.a.e.b.g  reason: case insensitive filesystem */
/* compiled from: AudioInflater */
class C1065g extends MediaControllerCompat.a {

    /* renamed from: d  reason: collision with root package name */
    public Thread f14237d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f14238e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f14239f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Runnable f14240g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ PlayPauseView f14241h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ SeekBar f14242i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ g f14243j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ C1067i f14244k;

    public C1065g(C1067i iVar, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, Runnable runnable, PlayPauseView playPauseView, SeekBar seekBar, g gVar) {
        this.f14244k = iVar;
        this.f14238e = atomicBoolean;
        this.f14239f = atomicBoolean2;
        this.f14240g = runnable;
        this.f14241h = playPauseView;
        this.f14242i = seekBar;
        this.f14243j = gVar;
    }

    public void a(PlaybackStateCompat playbackStateCompat) {
        if (playbackStateCompat != null) {
            Thread thread = this.f14237d;
            if (thread != null) {
                thread.interrupt();
            }
            this.f14238e.set(playbackStateCompat.f() == 3);
            this.f14239f.set(playbackStateCompat.f() == 3 || playbackStateCompat.f() == 6);
            int f2 = playbackStateCompat.f();
            if (f2 != 0) {
                if (f2 == 1) {
                    this.f14241h.setState(PlayPauseView.State.STOPPED);
                    this.f14242i.setProgress(0);
                } else if (f2 == 2) {
                    this.f14241h.setState(PlayPauseView.State.PAUSED);
                } else if (f2 == 3) {
                    this.f14237d = new Thread(this.f14240g);
                    this.f14237d.start();
                    this.f14241h.setState(PlayPauseView.State.PLAYING);
                } else if (f2 == 6) {
                    this.f14241h.setState(PlayPauseView.State.BUFFERING);
                } else if (f2 != 7) {
                    Log.d("InlineAudioInflater", "Unhandled state " + playbackStateCompat.f());
                } else {
                    this.f14241h.setState(PlayPauseView.State.ERROR);
                    Toast.makeText(this.f14243j.f(), this.f14243j.f().getString(f.a.a.g.error_loading_music), 1).show();
                }
            }
        }
    }
}
