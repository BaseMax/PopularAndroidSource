package c.e.a.a.b;

import android.media.AudioTrack;
import com.google.android.exoplayer2.audio.DefaultAudioSink;

/* compiled from: DefaultAudioSink */
class x extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AudioTrack f7514a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DefaultAudioSink f7515b;

    public x(DefaultAudioSink defaultAudioSink, AudioTrack audioTrack) {
        this.f7515b = defaultAudioSink;
        this.f7514a = audioTrack;
    }

    public void run() {
        this.f7514a.release();
    }
}
