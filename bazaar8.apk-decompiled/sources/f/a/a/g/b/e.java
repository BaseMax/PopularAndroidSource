package f.a.a.g.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.wifi.WifiManager;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.crashlytics.android.Crashlytics;
import f.a.a.g.b.p;
import java.io.IOException;

/* compiled from: MediaPlayerPlayback */
public class e implements p, AudioManager.OnAudioFocusChangeListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener {

    /* renamed from: a  reason: collision with root package name */
    public final Context f14386a;

    /* renamed from: b  reason: collision with root package name */
    public final WifiManager.WifiLock f14387b;

    /* renamed from: c  reason: collision with root package name */
    public final AudioManager f14388c;

    /* renamed from: d  reason: collision with root package name */
    public final IntentFilter f14389d = new IntentFilter("android.media.AUDIO_BECOMING_NOISY");

    /* renamed from: e  reason: collision with root package name */
    public int f14390e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f14391f;

    /* renamed from: g  reason: collision with root package name */
    public p.a f14392g;

    /* renamed from: h  reason: collision with root package name */
    public volatile boolean f14393h;

    /* renamed from: i  reason: collision with root package name */
    public volatile int f14394i;

    /* renamed from: j  reason: collision with root package name */
    public volatile String f14395j;

    /* renamed from: k  reason: collision with root package name */
    public int f14396k = 0;

    /* renamed from: l  reason: collision with root package name */
    public MediaPlayer f14397l;
    public final BroadcastReceiver m = new c(this);
    public PhoneStateListener n;
    public TelephonyManager o;

    public e(Context context) {
        this.f14386a = context;
        this.f14388c = (AudioManager) context.getSystemService("audio");
        this.f14387b = ((WifiManager) context.getSystemService("wifi")).createWifiLock(1, "uAmp_lock");
        this.f14390e = 0;
    }

    public final void b() {
        this.o = (TelephonyManager) this.f14386a.getSystemService("phone");
        this.n = new d(this);
        this.o.listen(this.n, 32);
    }

    public final void c() {
        Log.d("MediaPlayerPlayback", "configMediaPlayerState. audioFocus=" + this.f14396k);
        if (this.f14396k != 0) {
            f();
            if (this.f14396k == 1) {
                this.f14397l.setVolume(0.2f, 0.2f);
            } else {
                MediaPlayer mediaPlayer = this.f14397l;
                if (mediaPlayer != null) {
                    mediaPlayer.setVolume(1.0f, 1.0f);
                }
            }
            if (this.f14391f) {
                MediaPlayer mediaPlayer2 = this.f14397l;
                if (mediaPlayer2 != null && !mediaPlayer2.isPlaying()) {
                    Log.d("MediaPlayerPlayback", "configMediaPlayerState startMediaPlayer. seeking to " + this.f14394i);
                    if (this.f14394i == this.f14397l.getCurrentPosition()) {
                        this.f14397l.start();
                        this.f14390e = 3;
                    } else {
                        this.f14397l.seekTo(this.f14394i);
                        this.f14390e = 6;
                    }
                }
                this.f14391f = false;
            }
        } else if (this.f14390e == 3) {
            pause();
        }
        p.a aVar = this.f14392g;
        if (aVar != null) {
            aVar.a(this.f14390e);
        }
    }

    public final void d() {
        StringBuilder sb = new StringBuilder();
        sb.append("createMediaPlayerIfNeeded. needed? ");
        sb.append(this.f14397l == null);
        Log.d("MediaPlayerPlayback", sb.toString());
        MediaPlayer mediaPlayer = this.f14397l;
        if (mediaPlayer == null) {
            this.f14397l = new MediaPlayer();
            this.f14397l.setWakeMode(this.f14386a, 1);
            this.f14397l.setOnPreparedListener(this);
            this.f14397l.setOnCompletionListener(this);
            this.f14397l.setOnErrorListener(this);
            this.f14397l.setOnSeekCompleteListener(this);
            return;
        }
        mediaPlayer.reset();
    }

    public final void e() {
        Log.d("MediaPlayerPlayback", "giveUpAudioFocus");
        if (this.f14388c.abandonAudioFocus(this) == 1) {
            this.f14396k = 0;
        }
    }

    public final void f() {
        if (!this.f14393h) {
            this.f14386a.registerReceiver(this.m, this.f14389d);
            this.f14393h = true;
        }
    }

    public final void g() {
        Log.d("MediaPlayerPlayback", "tryToGetAudioFocus");
        if (this.f14388c.requestAudioFocus(this, 3, 1) == 1) {
            this.f14396k = 2;
        } else {
            this.f14396k = 0;
        }
    }

    public int getState() {
        return this.f14390e;
    }

    public final void h() {
        if (this.f14393h) {
            this.f14386a.unregisterReceiver(this.m);
            this.f14393h = false;
        }
    }

    public final void i() {
        PhoneStateListener phoneStateListener = this.n;
        if (phoneStateListener != null) {
            this.o.listen(phoneStateListener, 0);
        }
    }

    public boolean isConnected() {
        return this.f14397l != null;
    }

    public boolean isPlaying() {
        if (!this.f14391f) {
            MediaPlayer mediaPlayer = this.f14397l;
            if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                return false;
            }
        }
        return true;
    }

    public void onAudioFocusChange(int i2) {
        Log.d("MediaPlayerPlayback", "onAudioFocusChange. focusChange=" + i2);
        if (i2 == 1) {
            this.f14396k = 2;
        } else if (i2 == -1 || i2 == -2 || i2 == -3) {
            int i3 = i2 == -3 ? 1 : 0;
            this.f14396k = i3;
            if (this.f14390e == 3 && i3 == 0) {
                this.f14391f = true;
            }
        } else {
            Log.e("MediaPlayerPlayback", "onAudioFocusChange: Ignoring unsupported focusChange: " + i2);
        }
        c();
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        Log.d("MediaPlayerPlayback", "onCompletion from MediaPlayer");
        p.a aVar = this.f14392g;
        if (aVar != null) {
            aVar.a();
        }
    }

    public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        Log.e("MediaPlayerPlayback", "Media player error: what=" + i2 + ", extra=" + i3);
        p.a aVar = this.f14392g;
        if (aVar != null) {
            aVar.a("MediaPlayer error " + i2 + " (" + i3 + ")");
        }
        return true;
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        Log.d("MediaPlayerPlayback", "onPrepared from MediaPlayer");
        c();
    }

    public void onSeekComplete(MediaPlayer mediaPlayer) {
        Log.d("MediaPlayerPlayback", "onSeekComplete from MediaPlayer:" + mediaPlayer.getCurrentPosition());
        this.f14394i = mediaPlayer.getCurrentPosition();
        if (this.f14390e == 6) {
            f();
            this.f14397l.start();
            this.f14390e = 3;
        }
        p.a aVar = this.f14392g;
        if (aVar != null) {
            aVar.a(this.f14390e);
        }
    }

    public void pause() {
        if (this.f14390e == 3) {
            MediaPlayer mediaPlayer = this.f14397l;
            if (mediaPlayer != null && mediaPlayer.isPlaying()) {
                this.f14397l.pause();
                this.f14394i = this.f14397l.getCurrentPosition();
            }
            a(false);
        }
        this.f14390e = 2;
        p.a aVar = this.f14392g;
        if (aVar != null) {
            aVar.a(this.f14390e);
        }
        h();
        i();
        PhoneStateListener phoneStateListener = this.n;
        if (phoneStateListener != null) {
            this.o.listen(phoneStateListener, 0);
        }
    }

    public void seekTo(int i2) {
        Log.d("MediaPlayerPlayback", "seekTo called with " + i2);
        MediaPlayer mediaPlayer = this.f14397l;
        if (mediaPlayer == null) {
            this.f14394i = i2;
            return;
        }
        if (mediaPlayer.isPlaying()) {
            this.f14390e = 6;
        }
        f();
        this.f14397l.seekTo(i2);
        p.a aVar = this.f14392g;
        if (aVar != null) {
            aVar.a(this.f14390e);
        }
    }

    public void stop() {
        this.f14390e = 1;
        p.a aVar = this.f14392g;
        if (aVar != null) {
            aVar.a(this.f14390e);
        }
        this.f14394i = a();
        e();
        h();
        h();
        a(true);
    }

    public int a() {
        MediaPlayer mediaPlayer = this.f14397l;
        return mediaPlayer != null ? mediaPlayer.getCurrentPosition() : this.f14394i;
    }

    public void a(Integer num, String str) {
        this.f14391f = true;
        g();
        f();
        b();
        String valueOf = String.valueOf(num);
        boolean z = !TextUtils.equals(valueOf, this.f14395j);
        if (z) {
            this.f14394i = 0;
            this.f14395j = valueOf;
        }
        if (this.f14390e != 2 || z || this.f14397l == null) {
            this.f14390e = 1;
            a(false);
            if (str == null) {
                this.f14390e = 7;
                p.a aVar = this.f14392g;
                if (aVar != null) {
                    aVar.a(this.f14390e);
                }
                return;
            }
            try {
                d();
                this.f14390e = 6;
                this.f14397l.setAudioStreamType(3);
                this.f14397l.setDataSource(str);
                this.f14397l.prepareAsync();
                this.f14387b.acquire();
                if (this.f14392g != null) {
                    this.f14392g.a(this.f14390e);
                }
            } catch (IOException e2) {
                Crashlytics.logException(e2);
                Log.e("MediaPlayerPlayback", e2 + "Exception playing song");
                p.a aVar2 = this.f14392g;
                if (aVar2 != null) {
                    aVar2.a(e2.getMessage());
                }
            }
        } else {
            c();
        }
    }

    public void a(p.a aVar) {
        this.f14392g = aVar;
    }

    public final void a(boolean z) {
        Log.d("MediaPlayerPlayback", "relaxResources. releaseMediaPlayer=" + z);
        if (z) {
            MediaPlayer mediaPlayer = this.f14397l;
            if (mediaPlayer != null) {
                mediaPlayer.reset();
                this.f14397l.release();
                this.f14397l = null;
            }
        }
        if (this.f14387b.isHeld()) {
            this.f14387b.release();
        }
    }
}
