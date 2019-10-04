package c.e.a.a.b;

import android.media.AudioTrack;
import com.google.android.exoplayer2.audio.DefaultAudioSink;

/* compiled from: DefaultAudioSink */
class w extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AudioTrack f7512a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DefaultAudioSink f7513b;

    public w(DefaultAudioSink defaultAudioSink, AudioTrack audioTrack) {
        this.f7513b = defaultAudioSink;
        this.f7512a = audioTrack;
    }

    public void run() {
        try {
            this.f7512a.flush();
            this.f7512a.release();
        } finally {
            this.f7513b.f12528j.open();
        }
    }
}
