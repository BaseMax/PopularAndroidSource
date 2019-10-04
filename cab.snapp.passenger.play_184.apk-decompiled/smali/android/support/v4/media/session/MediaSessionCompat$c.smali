.class Landroid/support/v4/media/session/MediaSessionCompat$c;
.super Landroid/support/v4/media/session/MediaSessionCompat$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static x:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 0

    .line 3216
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method a(J)I
    .locals 4

    .line 3258
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(J)I

    move-result v0

    const-wide/16 v1, 0x100

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    or-int/lit16 v0, v0, 0x100

    :cond_0
    return v0
.end method

.method final a(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 1

    .line 3270
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$c;->x:Z

    if-eqz v0, :cond_0

    .line 3272
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3276
    sput-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$c;->x:Z

    .line 3280
    :cond_0
    :goto_0
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$c;->x:Z

    if-nez v0, :cond_1

    .line 3281
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method final a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 10

    .line 3239
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v0

    .line 3240
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v2

    .line 3241
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v3

    .line 3242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3243
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-lez v9, :cond_1

    cmp-long v9, v3, v7

    if-lez v9, :cond_0

    sub-long v7, v5, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    long-to-float v3, v7

    mul-float v3, v3, v2

    float-to-long v7, v3

    :cond_0
    add-long/2addr v0, v7

    .line 3253
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Landroid/media/RemoteControlClient;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(I)I

    move-result p1

    invoke-virtual {v3, p1, v0, v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    return-void
.end method

.method final b(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 1

    .line 3288
    sget-boolean v0, Landroid/support/v4/media/session/MediaSessionCompat$c;->x:Z

    if-eqz v0, :cond_0

    .line 3289
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->c:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    return-void

    .line 3291
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$g;->b(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V
    .locals 0

    .line 3221
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$g;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    if-nez p1, :cond_0

    .line 3223
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Landroid/media/RemoteControlClient;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    return-void

    .line 3225
    :cond_0
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat$c$1;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$c$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    .line 3233
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Landroid/media/RemoteControlClient;

    invoke-virtual {p2, p1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    return-void
.end method
