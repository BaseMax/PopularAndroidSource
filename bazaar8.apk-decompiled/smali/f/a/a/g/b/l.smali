.class public Lf/a/a/g/b/l;
.super Landroid/content/BroadcastReceiver;
.source "MusicNotificationManager.java"


# instance fields
.field public final a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

.field public final b:Lb/i/a/q;

.field public final c:Landroid/app/PendingIntent;

.field public final d:Landroid/app/PendingIntent;

.field public final e:Landroid/app/PendingIntent;

.field public final f:Landroid/app/PendingIntent;

.field public g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public h:Landroid/support/v4/media/session/MediaControllerCompat;

.field public i:Landroid/support/v4/media/session/MediaControllerCompat$h;

.field public j:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public k:Landroid/support/v4/media/MediaMetadataCompat;

.field public l:Z

.field public m:Lir/cafebazaar/inline/ui/Theme;

.field public final n:Landroid/support/v4/media/session/MediaControllerCompat$a;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/a/a/g/b/l;->l:Z

    .line 3
    new-instance v0, Lf/a/a/g/b/k;

    invoke-direct {v0, p0}, Lf/a/a/g/b/k;-><init>(Lf/a/a/g/b/l;)V

    iput-object v0, p0, Lf/a/a/g/b/l;->n:Landroid/support/v4/media/session/MediaControllerCompat$a;

    .line 4
    iput-object p1, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    .line 5
    invoke-virtual {p0}, Lf/a/a/g/b/l;->d()V

    .line 6
    invoke-static {p1}, Lb/i/a/q;->a(Landroid/content/Context;)Lb/i/a/q;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/g/b/l;->b:Lb/i/a/q;

    .line 7
    iget-object p1, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {p1}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ir.cafebazaar.inline.ACTION_PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    const/16 v3, 0x64

    .line 10
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/b/l;->c:Landroid/app/PendingIntent;

    .line 11
    iget-object v0, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "ir.cafebazaar.inline.audioplayer.ACTION_PLAY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 13
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/b/l;->d:Landroid/app/PendingIntent;

    .line 14
    iget-object v0, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "ir.cafebazaar.inline.ACTION_PREVIOUS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 16
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/b/l;->e:Landroid/app/PendingIntent;

    .line 17
    iget-object v0, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "ir.cafebazaar.inline.ACTION_NEXT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 19
    invoke-static {v0, v3, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/g/b/l;->f:Landroid/app/PendingIntent;

    .line 20
    iget-object p1, p0, Lf/a/a/g/b/l;->b:Lb/i/a/q;

    invoke-virtual {p1}, Lb/i/a/q;->a()V

    return-void
.end method

.method public static synthetic a(Lf/a/a/g/b/l;)Landroid/app/Notification;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lf/a/a/g/b/l;->a()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lf/a/a/g/b/l;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 3
    iput-object p1, p0, Lf/a/a/g/b/l;->k:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1
.end method

.method public static synthetic a(Lf/a/a/g/b/l;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object p1
.end method

.method public static synthetic b(Lf/a/a/g/b/l;)Lb/i/a/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/b/l;->b:Lb/i/a/q;

    return-object p0
.end method

.method public static synthetic c(Lf/a/a/g/b/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/b/l;->d()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 11

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNotificationMetadata. mMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/g/b/l;->k:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lf/a/a/g/b/l;->k:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    new-instance v0, Lb/i/a/n$d;

    iget-object v1, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-direct {v0, v1}, Lb/i/a/n$d;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-eqz v7, :cond_1

    .line 8
    sget v1, Lf/a/a/d;->ic_skip_previous_white_24dp:I

    iget-object v2, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    sget v7, Lf/a/a/g;->label_previous:I

    .line 9
    invoke-virtual {v2, v7}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lf/a/a/g/b/l;->e:Landroid/app/PendingIntent;

    .line 10
    invoke-virtual {v0, v1, v2, v7}, Lb/i/a/n$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lb/i/a/n$d;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Lf/a/a/g/b/l;->a(Lb/i/a/n$d;)V

    .line 12
    iget-object v2, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()J

    move-result-wide v7

    const-wide/16 v9, 0x20

    and-long/2addr v7, v9

    cmp-long v2, v7, v3

    if-eqz v2, :cond_2

    .line 13
    sget v2, Lf/a/a/d;->ic_skip_next_white_24dp:I

    iget-object v3, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    sget v4, Lf/a/a/g;->label_next:I

    .line 14
    invoke-virtual {v3, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lf/a/a/g/b/l;->f:Landroid/app/PendingIntent;

    .line 15
    invoke-virtual {v0, v2, v3, v4}, Lb/i/a/n$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lb/i/a/n$d;

    .line 16
    :cond_2
    iget-object v2, p0, Lf/a/a/g/b/l;->k:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat;->b()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    .line 17
    new-instance v3, Lb/u/a/a;

    invoke-direct {v3}, Lb/u/a/a;-><init>()V

    new-array v4, v6, [I

    aput v1, v4, v5

    invoke-virtual {v3, v4}, Lb/u/a/a;->a([I)Lb/u/a/a;

    iget-object v1, p0, Lf/a/a/g/b/l;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v3, v1}, Lb/u/a/a;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lb/u/a/a;

    invoke-virtual {v0, v3}, Lb/i/a/n$d;->a(Lb/i/a/n$e;)Lb/i/a/n$d;

    sget v1, Lf/a/a/d;->ic_player_notification:I

    .line 18
    invoke-virtual {v0, v1}, Lb/i/a/n$d;->c(I)Lb/i/a/n$d;

    .line 19
    invoke-virtual {v0, v6}, Lb/i/a/n$d;->d(I)Lb/i/a/n$d;

    .line 20
    invoke-virtual {v0, v6}, Lb/i/a/n$d;->e(Z)Lb/i/a/n$d;

    .line 21
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/i/a/n$d;->c(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    .line 22
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/i/a/n$d;->b(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    iget-object v1, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    .line 23
    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lf/a/a/d;->ic_default_art:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/i/a/n$d;->b(Landroid/graphics/Bitmap;)Lb/i/a/n$d;

    .line 24
    iget-object v1, p0, Lf/a/a/g/b/l;->m:Lir/cafebazaar/inline/ui/Theme;

    if-eqz v1, :cond_3

    .line 25
    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/i/a/n$d;->a(I)Lb/i/a/n$d;

    goto :goto_1

    .line 26
    :cond_3
    iget-object v1, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lf/a/a/b;->colorAccent:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/i/a/n$d;->a(I)Lb/i/a/n$d;

    .line 27
    :goto_1
    invoke-virtual {p0, v0}, Lf/a/a/g/b/l;->b(Lb/i/a/n$d;)V

    .line 28
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/i/a/n$d;->b(Landroid/graphics/Bitmap;)Lb/i/a/n$d;

    .line 30
    :cond_4
    invoke-virtual {v0}, Lb/i/a/n$d;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lb/i/a/n$d;)V
    .locals 4

    const-string v0, "NotificationManager"

    const-string v1, "updatePlayPauseAction"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    sget v1, Lf/a/a/g;->label_pause:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    sget v1, Lf/a/a/d;->ic_pause_white_24dp:I

    .line 35
    iget-object v2, p0, Lf/a/a/g/b/l;->c:Landroid/app/PendingIntent;

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    sget v1, Lf/a/a/g;->label_play:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    sget v1, Lf/a/a/d;->ic_play_arrow_white_24dp:I

    .line 38
    iget-object v2, p0, Lf/a/a/g/b/l;->d:Landroid/app/PendingIntent;

    .line 39
    :goto_0
    new-instance v3, Lb/i/a/n$a;

    invoke-direct {v3, v1, v0, v2}, Lb/i/a/n$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v3}, Lb/i/a/n$d;->a(Lb/i/a/n$a;)Lb/i/a/n$d;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/Theme;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lf/a/a/g/b/l;->m:Lir/cafebazaar/inline/ui/Theme;

    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lf/a/a/g/b/l;->l:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/l;->h:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/b/l;->k:Landroid/support/v4/media/MediaMetadataCompat;

    .line 4
    iget-object v0, p0, Lf/a/a/g/b/l;->h:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 5
    invoke-virtual {p0}, Lf/a/a/g/b/l;->a()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lf/a/a/g/b/l;->h:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Lf/a/a/g/b/l;->n:Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 7
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "ir.cafebazaar.inline.ACTION_NEXT"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "ir.cafebazaar.inline.ACTION_PAUSE"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "ir.cafebazaar.inline.audioplayer.ACTION_PLAY"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "ir.cafebazaar.inline.ACTION_PREVIOUS"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v2, p0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    const/16 v2, 0x94

    invoke-virtual {v1, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lf/a/a/g/b/l;->l:Z

    :cond_0
    return-void
.end method

.method public final b(Lb/i/a/n$d;)V
    .locals 9

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNotificationPlaybackState. mPlaybackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lf/a/a/g/b/l;->l:Z

    if-nez v3, :cond_0

    goto :goto_2

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()I

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 18
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-ltz v0, :cond_1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNotificationPlaybackState. updating playback position to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v7, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()J

    move-result-wide v7

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lb/i/a/n$d;->a(J)Lb/i/a/n$d;

    .line 23
    invoke-virtual {p1, v2}, Lb/i/a/n$d;->d(Z)Lb/i/a/n$d;

    .line 24
    invoke-virtual {p1, v2}, Lb/i/a/n$d;->e(Z)Lb/i/a/n$d;

    goto :goto_0

    :cond_1
    const-string v0, "updateNotificationPlaybackState. hiding playback position"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p1, v3, v4}, Lb/i/a/n$d;->a(J)Lb/i/a/n$d;

    .line 27
    invoke-virtual {p1, v6}, Lb/i/a/n$d;->d(Z)Lb/i/a/n$d;

    .line 28
    invoke-virtual {p1, v6}, Lb/i/a/n$d;->e(Z)Lb/i/a/n$d;

    .line 29
    :goto_0
    iget-object v0, p0, Lf/a/a/g/b/l;->j:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()I

    move-result v0

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Lb/i/a/n$d;->c(Z)Lb/i/a/n$d;

    return-void

    :cond_3
    :goto_2
    const-string p1, "updateNotificationPlaybackState. cancelling notification!"

    .line 30
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {p1, v2}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lf/a/a/g/b/l;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lf/a/a/g/b/l;->l:Z

    .line 4
    iget-object v0, p0, Lf/a/a/g/b/l;->h:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lf/a/a/g/b/l;->n:Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->b(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lf/a/a/g/b/l;->b:Lb/i/a/q;

    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Lb/i/a/q;->a(I)V

    .line 6
    iget-object v0, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v0, p0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/a/a/g/b/l;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lf/a/a/g/b/l;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    :cond_1
    iget-object v1, p0, Lf/a/a/g/b/l;->h:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, p0, Lf/a/a/g/b/l;->n:Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->b(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 6
    :cond_2
    iput-object v0, p0, Lf/a/a/g/b/l;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 7
    iget-object v0, p0, Lf/a/a/g/b/l;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_3

    .line 8
    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Lf/a/a/g/b/l;->a:Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v1, p0, Lf/a/a/g/b/l;->h:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 9
    iget-object v0, p0, Lf/a/a/g/b/l;->h:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->d()Landroid/support/v4/media/session/MediaControllerCompat$h;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/b/l;->i:Landroid/support/v4/media/session/MediaControllerCompat$h;

    .line 10
    iget-boolean v0, p0, Lf/a/a/g/b/l;->l:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lf/a/a/g/b/l;->h:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lf/a/a/g/b/l;->n:Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received intent with action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotificationManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ir.cafebazaar.inline.ACTION_PREVIOUS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "ir.cafebazaar.inline.ACTION_NEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "ir.cafebazaar.inline.ACTION_PAUSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "ir.cafebazaar.inline.audioplayer.ACTION_PLAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown intent ignored. Action="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lf/a/a/g/b/l;->i:Landroid/support/v4/media/session/MediaControllerCompat$h;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$h;->d()V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lf/a/a/g/b/l;->i:Landroid/support/v4/media/session/MediaControllerCompat$h;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$h;->c()V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Lf/a/a/g/b/l;->i:Landroid/support/v4/media/session/MediaControllerCompat$h;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$h;->b()V

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p0, Lf/a/a/g/b/l;->i:Landroid/support/v4/media/session/MediaControllerCompat$h;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$h;->a()V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50ed5d7a -> :sswitch_3
        -0x2ac2f593 -> :sswitch_2
        0x1764377c -> :sswitch_1
        0x3289f300 -> :sswitch_0
    .end sparse-switch
.end method
