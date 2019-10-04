package f.a.a.g.b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.BitmapFactory;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import b.i.a.n;
import b.i.a.q;
import b.u.a.a;
import com.crashlytics.android.Crashlytics;
import f.a.a.b;
import f.a.a.d;
import f.a.a.g;
import ir.cafebazaar.inline.ui.Theme;
import ir.cafebazaar.inline.ux.audio.MediaPlayerService;

/* compiled from: MusicNotificationManager */
public class l extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final MediaPlayerService f14403a;

    /* renamed from: b  reason: collision with root package name */
    public final q f14404b;

    /* renamed from: c  reason: collision with root package name */
    public final PendingIntent f14405c;

    /* renamed from: d  reason: collision with root package name */
    public final PendingIntent f14406d;

    /* renamed from: e  reason: collision with root package name */
    public final PendingIntent f14407e;

    /* renamed from: f  reason: collision with root package name */
    public final PendingIntent f14408f;

    /* renamed from: g  reason: collision with root package name */
    public MediaSessionCompat.Token f14409g;

    /* renamed from: h  reason: collision with root package name */
    public MediaControllerCompat f14410h;

    /* renamed from: i  reason: collision with root package name */
    public MediaControllerCompat.h f14411i;

    /* renamed from: j  reason: collision with root package name */
    public PlaybackStateCompat f14412j;

    /* renamed from: k  reason: collision with root package name */
    public MediaMetadataCompat f14413k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f14414l = false;
    public Theme m;
    public final MediaControllerCompat.a n = new k(this);

    public l(MediaPlayerService mediaPlayerService) {
        this.f14403a = mediaPlayerService;
        d();
        this.f14404b = q.a((Context) mediaPlayerService);
        String packageName = this.f14403a.getPackageName();
        this.f14405c = PendingIntent.getBroadcast(this.f14403a.getApplicationContext(), 100, new Intent("ir.cafebazaar.inline.ACTION_PAUSE").setPackage(packageName), 268435456);
        this.f14406d = PendingIntent.getBroadcast(this.f14403a.getApplicationContext(), 100, new Intent("ir.cafebazaar.inline.audioplayer.ACTION_PLAY").setPackage(packageName), 268435456);
        this.f14407e = PendingIntent.getBroadcast(this.f14403a.getApplicationContext(), 100, new Intent("ir.cafebazaar.inline.ACTION_PREVIOUS").setPackage(packageName), 268435456);
        this.f14408f = PendingIntent.getBroadcast(this.f14403a.getApplicationContext(), 100, new Intent("ir.cafebazaar.inline.ACTION_NEXT").setPackage(packageName), 268435456);
        this.f14404b.a();
    }

    public final void d() {
        MediaSessionCompat.Token d2 = this.f14403a.d();
        if (this.f14409g != null || d2 == null) {
            MediaSessionCompat.Token token = this.f14409g;
            if (token == null || token.equals(d2)) {
                return;
            }
        }
        MediaControllerCompat mediaControllerCompat = this.f14410h;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.b(this.n);
        }
        this.f14409g = d2;
        MediaSessionCompat.Token token2 = this.f14409g;
        if (token2 != null) {
            this.f14410h = new MediaControllerCompat((Context) this.f14403a, token2);
            this.f14411i = this.f14410h.d();
            if (this.f14414l) {
                this.f14410h.a(this.n);
            }
        }
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            Log.d("NotificationManager", "Received intent with action " + action);
            char c2 = 65535;
            switch (action.hashCode()) {
                case -1357733242:
                    if (action.equals("ir.cafebazaar.inline.audioplayer.ACTION_PLAY")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -717419923:
                    if (action.equals("ir.cafebazaar.inline.ACTION_PAUSE")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 392443772:
                    if (action.equals("ir.cafebazaar.inline.ACTION_NEXT")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 847901440:
                    if (action.equals("ir.cafebazaar.inline.ACTION_PREVIOUS")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                this.f14411i.a();
            } else if (c2 == 1) {
                this.f14411i.b();
            } else if (c2 == 2) {
                this.f14411i.c();
            } else if (c2 != 3) {
                Log.w("NotificationManager", "Unknown intent ignored. Action=" + action);
            } else {
                this.f14411i.d();
            }
        }
    }

    public void b() {
        if (!this.f14414l) {
            this.f14413k = this.f14410h.a();
            this.f14412j = this.f14410h.b();
            Notification a2 = a();
            if (a2 != null) {
                this.f14410h.a(this.n);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("ir.cafebazaar.inline.ACTION_NEXT");
                intentFilter.addAction("ir.cafebazaar.inline.ACTION_PAUSE");
                intentFilter.addAction("ir.cafebazaar.inline.audioplayer.ACTION_PLAY");
                intentFilter.addAction("ir.cafebazaar.inline.ACTION_PREVIOUS");
                this.f14403a.registerReceiver(this, intentFilter);
                this.f14403a.startForeground(148, a2);
                this.f14414l = true;
            }
        }
    }

    public void c() {
        if (this.f14414l) {
            this.f14414l = false;
            this.f14410h.b(this.n);
            try {
                this.f14404b.a(148);
                this.f14403a.unregisterReceiver(this);
            } catch (IllegalArgumentException e2) {
                Crashlytics.logException(e2);
            }
            this.f14403a.stopForeground(true);
        }
    }

    public final Notification a() {
        int i2;
        Log.d("NotificationManager", "updateNotificationMetadata. mMetadata=" + this.f14413k);
        if (this.f14413k == null || this.f14412j == null) {
            return null;
        }
        n.d dVar = new n.d(this.f14403a);
        if ((this.f14412j.a() & 16) != 0) {
            dVar.a(d.ic_skip_previous_white_24dp, (CharSequence) this.f14403a.getString(g.label_previous), this.f14407e);
            i2 = 1;
        } else {
            i2 = 0;
        }
        a(dVar);
        if ((this.f14412j.a() & 32) != 0) {
            dVar.a(d.ic_skip_next_white_24dp, (CharSequence) this.f14403a.getString(g.label_next), this.f14408f);
        }
        MediaDescriptionCompat b2 = this.f14413k.b();
        a aVar = new a();
        aVar.a(i2);
        aVar.a(this.f14409g);
        dVar.a((n.e) aVar);
        dVar.c(d.ic_player_notification);
        dVar.d(1);
        dVar.e(true);
        dVar.c(b2.e());
        dVar.b(b2.d());
        dVar.b(BitmapFactory.decodeResource(this.f14403a.getResources(), d.ic_default_art));
        Theme theme = this.m;
        if (theme != null) {
            dVar.a(theme.h());
        } else {
            dVar.a(this.f14403a.getResources().getColor(b.colorAccent));
        }
        b(dVar);
        if (b2.a() != null) {
            dVar.b(b2.a());
        }
        return dVar.a();
    }

    public final void b(n.d dVar) {
        Log.d("NotificationManager", "updateNotificationPlaybackState. mPlaybackState=" + this.f14412j);
        PlaybackStateCompat playbackStateCompat = this.f14412j;
        boolean z = true;
        if (playbackStateCompat == null || !this.f14414l) {
            Log.d("NotificationManager", "updateNotificationPlaybackState. cancelling notification!");
            this.f14403a.stopForeground(true);
            return;
        }
        if (playbackStateCompat.f() != 3 || this.f14412j.e() < 0) {
            Log.d("NotificationManager", "updateNotificationPlaybackState. hiding playback position");
            dVar.a(0);
            dVar.d(false);
            dVar.e(false);
        } else {
            Log.d("NotificationManager", "updateNotificationPlaybackState. updating playback position to " + ((System.currentTimeMillis() - this.f14412j.e()) / 1000) + " seconds");
            dVar.a(System.currentTimeMillis() - this.f14412j.e());
            dVar.d(true);
            dVar.e(true);
        }
        if (this.f14412j.f() != 3) {
            z = false;
        }
        dVar.c(z);
    }

    public final void a(n.d dVar) {
        PendingIntent pendingIntent;
        int i2;
        String str;
        Log.d("NotificationManager", "updatePlayPauseAction");
        if (this.f14412j.f() == 3) {
            str = this.f14403a.getString(g.label_pause);
            i2 = d.ic_pause_white_24dp;
            pendingIntent = this.f14405c;
        } else {
            str = this.f14403a.getString(g.label_play);
            i2 = d.ic_play_arrow_white_24dp;
            pendingIntent = this.f14406d;
        }
        dVar.a(new n.a(i2, str, pendingIntent));
    }

    public void a(Theme theme) {
        this.m = theme;
    }
}
