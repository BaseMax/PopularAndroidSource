.class public Lir/cafebazaar/inline/ux/audio/MediaPlayerService;
.super Landroid/app/Service;
.source "MediaPlayerService.java"

# interfaces
.implements Lf/a/a/g/b/r$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ux/audio/MediaPlayerService$b;,
        Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/IBinder;

.field public final b:Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;

.field public c:Lf/a/a/g/b/l;

.field public d:Landroid/support/v4/media/session/MediaSessionCompat;

.field public e:Lf/a/a/g/b/r;

.field public f:Landroid/content/BroadcastReceiver;

.field public g:Landroid/content/BroadcastReceiver;

.field public h:Landroid/content/BroadcastReceiver;

.field public i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$b;

    invoke-direct {v0, p0}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$b;-><init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->a:Landroid/os/IBinder;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;-><init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;Lf/a/a/g/b/f;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->b:Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;

    .line 4
    new-instance v0, Lf/a/a/g/b/f;

    invoke-direct {v0, p0}, Lf/a/a/g/b/f;-><init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->f:Landroid/content/BroadcastReceiver;

    .line 5
    new-instance v0, Lf/a/a/g/b/g;

    invoke-direct {v0, p0}, Lf/a/a/g/b/g;-><init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->g:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Lf/a/a/g/b/h;

    invoke-direct {v0, p0}, Lf/a/a/g/b/h;-><init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->h:Landroid/content/BroadcastReceiver;

    .line 7
    new-instance v0, Lf/a/a/g/b/i;

    invoke-direct {v0, p0}, Lf/a/a/g/b/i;-><init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)Lf/a/a/g/b/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->e:Lf/a/a/g/b/r;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->c:Lf/a/a/g/b/l;

    invoke-virtual {v0}, Lf/a/a/g/b/l;->b()V

    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->c(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V

    return-void
.end method

.method public final b(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 9

    .line 5
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->g()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->b()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->f()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c()J

    move-result-wide v4

    .line 10
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->e()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 11
    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 12
    new-instance v7, Landroid/support/v4/media/MediaMetadataCompat$a;

    invoke-direct {v7}, Landroid/support/v4/media/MediaMetadataCompat$a;-><init>()V

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v7, v8, p1}, Landroid/support/v4/media/MediaMetadataCompat$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$a;

    const-string p1, "android.media.metadata.MEDIA_URI"

    .line 14
    invoke-virtual {v7, p1, v3}, Landroid/support/v4/media/MediaMetadataCompat$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$a;

    const-string p1, "android.media.metadata.ALBUM"

    .line 15
    invoke-virtual {v7, p1, v1}, Landroid/support/v4/media/MediaMetadataCompat$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$a;

    const-string p1, "android.media.metadata.ARTIST"

    .line 16
    invoke-virtual {v7, p1, v2}, Landroid/support/v4/media/MediaMetadataCompat$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$a;

    const-string p1, "android.media.metadata.DURATION"

    .line 17
    invoke-virtual {v7, p1, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$a;->a(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$a;

    const-string p1, "android.media.metadata.TITLE"

    .line 18
    invoke-virtual {v7, p1, v0}, Landroid/support/v4/media/MediaMetadataCompat$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$a;

    const-string p1, "android.media.metadata.DISPLAY_ICON"

    .line 19
    invoke-virtual {v7, p1, v6}, Landroid/support/v4/media/MediaMetadataCompat$a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$a;

    .line 20
    invoke-virtual {v7}, Landroid/support/v4/media/MediaMetadataCompat$a;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Z)V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->b:Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->b:Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Z)V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->b:Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final c(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->b(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public d()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ir.cafebazaar.inline.audioplayer.RegisterAudio"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lb/t/a/b;->a(Landroid/content/Context;)Lb/t/a/b;

    move-result-object v1

    iget-object v2, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lb/t/a/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ir.cafebazaar.inline.audioplayer.PausePlayingAudio"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ir.cafebazaar.inline.audioplayer.PlayNewAudio"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ir.cafebazaar.inline.audioplayer.SeekAudio"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->e:Lf/a/a/g/b/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/a/a/g/b/r;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->c:Lf/a/a/g/b/l;

    invoke-virtual {v0}, Lf/a/a/g/b/l;->c()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->a:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Lf/a/a/g/b/r;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/a/a/g/b/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->e:Lf/a/a/g/b/r;

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->e:Lf/a/a/g/b/r;

    invoke-virtual {v0, p0}, Lf/a/a/g/b/r;->a(Lf/a/a/g/b/r$b;)V

    .line 4
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v1, "MediaPlayerService"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 5
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->e:Lf/a/a/g/b/r;

    invoke-virtual {v1}, Lf/a/a/g/b/r;->d()Landroid/support/v4/media/session/MediaSessionCompat$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/MediaSessionCompat$a;)V

    .line 6
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x63

    const/high16 v3, 0x8000000

    .line 9
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/app/PendingIntent;)V

    .line 11
    :try_start_0
    new-instance v0, Lf/a/a/g/b/l;

    invoke-direct {v0, p0}, Lf/a/a/g/b/l;-><init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->c:Lf/a/a/g/b/l;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->g()V

    .line 15
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->f()V

    .line 16
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->e()V

    .line 17
    invoke-virtual {p0}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->h()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MediaPlayerService"

    const-string v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->e:Lf/a/a/g/b/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/a/a/g/b/r;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->c:Lf/a/a/g/b/l;

    invoke-virtual {v0}, Lf/a/a/g/b/l;->c()V

    .line 4
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->b:Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->c()V

    .line 6
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    invoke-static {p0}, Lb/t/a/b;->a(Landroid/content/Context;)Lb/t/a/b;

    move-result-object v0

    iget-object v1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/t/a/b;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-static {p2, p1}, Landroidx/media/session/MediaButtonReceiver;->a(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/content/Intent;)Landroid/view/KeyEvent;

    const-string p2, "KEY_THEME"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->c:Lf/a/a/g/b/l;

    check-cast p1, Lir/cafebazaar/inline/ui/Theme;

    invoke-virtual {p2, p1}, Lf/a/a/g/b/l;->a(Lir/cafebazaar/inline/ui/Theme;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->b:Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->b:Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;

    const/4 p2, 0x0

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->e:Lf/a/a/g/b/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/a/a/g/b/r;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->c:Lf/a/a/g/b/l;

    invoke-virtual {v0}, Lf/a/a/g/b/l;->c()V

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->c()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
