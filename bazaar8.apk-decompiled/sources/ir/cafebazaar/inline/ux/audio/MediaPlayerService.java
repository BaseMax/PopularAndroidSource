package ir.cafebazaar.inline.ux.audio;

import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import androidx.media.session.MediaButtonReceiver;
import com.crashlytics.android.Crashlytics;
import f.a.a.g.b.l;
import f.a.a.g.b.r;
import ir.cafebazaar.inline.ui.InlineActivity;
import ir.cafebazaar.inline.ui.Theme;
import java.lang.ref.WeakReference;

public class MediaPlayerService extends Service implements r.b {

    /* renamed from: a  reason: collision with root package name */
    public final IBinder f15040a = new b();

    /* renamed from: b  reason: collision with root package name */
    public final a f15041b = new a(this, null);

    /* renamed from: c  reason: collision with root package name */
    public l f15042c;

    /* renamed from: d  reason: collision with root package name */
    public MediaSessionCompat f15043d;

    /* renamed from: e  reason: collision with root package name */
    public r f15044e;

    /* renamed from: f  reason: collision with root package name */
    public BroadcastReceiver f15045f = new f(this);

    /* renamed from: g  reason: collision with root package name */
    public BroadcastReceiver f15046g = new g(this);

    /* renamed from: h  reason: collision with root package name */
    public BroadcastReceiver f15047h = new h(this);

    /* renamed from: i  reason: collision with root package name */
    public BroadcastReceiver f15048i = new i(this);

    private static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        public final WeakReference<MediaPlayerService> f15049a;

        public /* synthetic */ a(MediaPlayerService mediaPlayerService, f fVar) {
            this(mediaPlayerService);
        }

        public void handleMessage(Message message) {
            MediaPlayerService mediaPlayerService = (MediaPlayerService) this.f15049a.get();
            if (!(mediaPlayerService == null || mediaPlayerService.f15044e.e() == null)) {
                if (mediaPlayerService.f15044e.e().isPlaying()) {
                    Log.d("MediaPlayerService", "Ignoring delayed stop since the media player is in use.");
                } else {
                    Log.d("MediaPlayerService", "Stopping service with delay handler.");
                    mediaPlayerService.stopSelf();
                }
            }
        }

        public a(MediaPlayerService mediaPlayerService) {
            this.f15049a = new WeakReference<>(mediaPlayerService);
        }
    }

    public class b extends Binder {
        public b() {
        }

        public MediaPlayerService a() {
            return MediaPlayerService.this;
        }
    }

    public void b() {
        this.f15043d.a(false);
        this.f15041b.removeCallbacksAndMessages(null);
        this.f15041b.sendEmptyMessageDelayed(0, 30000);
        stopForeground(true);
    }

    public void c() {
        this.f15043d.a(true);
        this.f15041b.removeCallbacksAndMessages(null);
        startService(new Intent(getApplicationContext(), MediaPlayerService.class));
    }

    public MediaSessionCompat.Token d() {
        return this.f15043d.b();
    }

    public final void e() {
        b.t.a.b.a((Context) this).a(this.f15047h, new IntentFilter("ir.cafebazaar.inline.audioplayer.RegisterAudio"));
    }

    public final void f() {
        registerReceiver(this.f15046g, new IntentFilter("ir.cafebazaar.inline.audioplayer.PausePlayingAudio"));
    }

    public final void g() {
        registerReceiver(this.f15045f, new IntentFilter("ir.cafebazaar.inline.audioplayer.PlayNewAudio"));
    }

    public final void h() {
        registerReceiver(this.f15048i, new IntentFilter("ir.cafebazaar.inline.audioplayer.SeekAudio"));
    }

    public void i() {
        this.f15044e.b((String) null);
        this.f15042c.c();
    }

    public IBinder onBind(Intent intent) {
        return this.f15040a;
    }

    public void onCreate() {
        super.onCreate();
        this.f15044e = new r(getApplicationContext());
        this.f15044e.a((r.b) this);
        this.f15043d = new MediaSessionCompat(this, "MediaPlayerService");
        this.f15043d.a(this.f15044e.d());
        this.f15043d.a(3);
        Context applicationContext = getApplicationContext();
        this.f15043d.a(PendingIntent.getActivity(applicationContext, 99, new Intent(applicationContext, InlineActivity.class), 134217728));
        try {
            this.f15042c = new l(this);
        } catch (RemoteException e2) {
            Crashlytics.logException(e2);
            e2.printStackTrace();
        }
        g();
        f();
        e();
        h();
    }

    public void onDestroy() {
        Log.d("MediaPlayerService", "onDestroy");
        this.f15044e.b((String) null);
        this.f15042c.c();
        this.f15041b.removeCallbacksAndMessages(null);
        this.f15043d.c();
        unregisterReceiver(this.f15045f);
        unregisterReceiver(this.f15046g);
        unregisterReceiver(this.f15048i);
        b.t.a.b.a((Context) this).a(this.f15047h);
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        if (intent != null) {
            MediaButtonReceiver.a(this.f15043d, intent);
            Parcelable parcelableExtra = intent.getParcelableExtra("KEY_THEME");
            if (parcelableExtra != null) {
                this.f15042c.a((Theme) parcelableExtra);
            }
        }
        this.f15041b.removeCallbacksAndMessages(null);
        this.f15041b.sendEmptyMessageDelayed(0, 30000);
        return 1;
    }

    public boolean onUnbind(Intent intent) {
        this.f15044e.b((String) null);
        this.f15042c.c();
        this.f15043d.c();
        return super.onUnbind(intent);
    }

    public void a() {
        this.f15042c.b();
    }

    public void a(PlaybackStateCompat playbackStateCompat) {
        this.f15043d.a(playbackStateCompat);
    }

    public void a(MusicDescriptor musicDescriptor) {
        c(musicDescriptor);
    }

    public final void c(MusicDescriptor musicDescriptor) {
        this.f15043d.a(b(musicDescriptor));
    }

    public final MediaMetadataCompat b(MusicDescriptor musicDescriptor) {
        String g2 = musicDescriptor.g();
        String a2 = musicDescriptor.a();
        String b2 = musicDescriptor.b();
        String f2 = musicDescriptor.f();
        long c2 = musicDescriptor.c();
        Bitmap e2 = musicDescriptor.e();
        Integer valueOf = Integer.valueOf(musicDescriptor.d());
        MediaMetadataCompat.a aVar = new MediaMetadataCompat.a();
        aVar.a("android.media.metadata.MEDIA_ID", String.valueOf(valueOf));
        aVar.a("android.media.metadata.MEDIA_URI", f2);
        aVar.a("android.media.metadata.ALBUM", a2);
        aVar.a("android.media.metadata.ARTIST", b2);
        aVar.a("android.media.metadata.DURATION", c2);
        aVar.a("android.media.metadata.TITLE", g2);
        aVar.a("android.media.metadata.DISPLAY_ICON", e2);
        return aVar.a();
    }
}
