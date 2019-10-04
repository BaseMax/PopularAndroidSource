.class public Lf/a/a/g/b/r;
.super Ljava/lang/Object;
.source "PlaybackManager.java"

# interfaces
.implements Lf/a/a/g/b/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/g/b/r$a;,
        Lf/a/a/g/b/r$b;
    }
.end annotation


# instance fields
.field public a:Lf/a/a/g/b/m;

.field public b:Lf/a/a/g/b/p;

.field public c:Lf/a/a/g/b/r$b;

.field public d:Lf/a/a/g/b/r$a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/g/b/m;

    invoke-direct {v0}, Lf/a/a/g/b/m;-><init>()V

    iput-object v0, p0, Lf/a/a/g/b/r;->a:Lf/a/a/g/b/m;

    .line 3
    new-instance v0, Lf/a/a/g/b/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf/a/a/g/b/r$a;-><init>(Lf/a/a/g/b/r;Lf/a/a/g/b/q;)V

    iput-object v0, p0, Lf/a/a/g/b/r;->d:Lf/a/a/g/b/r$a;

    .line 4
    new-instance v0, Lf/a/a/g/b/e;

    invoke-direct {v0, p1}, Lf/a/a/g/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    .line 5
    iget-object p1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {p1, p0}, Lf/a/a/g/b/p;->a(Lf/a/a/g/b/p$a;)V

    return-void
.end method

.method public static synthetic a(Lf/a/a/g/b/r;)Lf/a/a/g/b/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/g/b/r;)Lf/a/a/g/b/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/b/r;->a:Lf/a/a/g/b/m;

    return-object p0
.end method

.method public static synthetic c(Lf/a/a/g/b/r;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/b/r;->h()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/r;->a:Lf/a/a/g/b/m;

    invoke-virtual {v0}, Lf/a/a/g/b/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/b/r;->h()V

    .line 5
    invoke-virtual {p0}, Lf/a/a/g/b/r;->g()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lf/a/a/g/b/r;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lf/a/a/g/b/r;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lf/a/a/g/b/r$b;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lf/a/a/g/b/r;->c:Lf/a/a/g/b/r$b;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/r;->a:Lf/a/a/g/b/m;

    invoke-virtual {v0, p1}, Lf/a/a/g/b/m;->a(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lf/a/a/g/b/r;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lf/a/a/g/b/r;->f()V

    return-void
.end method

.method public b(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {p1}, Lf/a/a/g/b/p;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lf/a/a/g/b/r;->f()V

    .line 8
    iput-boolean v0, p0, Lf/a/a/g/b/r;->e:Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {p1}, Lf/a/a/g/b/p;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {p1}, Lf/a/a/g/b/p;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lf/a/a/g/b/r;->e:Z

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, Lf/a/a/g/b/r;->g()V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lf/a/a/g/b/r;->e:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStopRequest: mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v1}, Lf/a/a/g/b/p;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v0}, Lf/a/a/g/b/p;->stop()V

    .line 4
    iget-object v0, p0, Lf/a/a/g/b/r;->c:Lf/a/a/g/b/r$b;

    invoke-interface {v0}, Lf/a/a/g/b/r$b;->b()V

    .line 5
    invoke-virtual {p0, p1}, Lf/a/a/g/b/r;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c()J
    .locals 2

    .line 21
    iget-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v0}, Lf/a/a/g/b/p;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x232

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x234

    :goto_0
    return-wide v0
.end method

.method public c(I)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePlayRequest: mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v1}, Lf/a/a/g/b/p;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/r;->a:Lf/a/a/g/b/m;

    invoke-virtual {v0}, Lf/a/a/g/b/m;->b()Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/b/r;->h()V

    .line 5
    :cond_0
    iget-object v0, p0, Lf/a/a/g/b/r;->a:Lf/a/a/g/b/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/a/a/g/b/m;->a(Ljava/lang/Integer;)Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lf/a/a/g/b/r;->c:Lf/a/a/g/b/r$b;

    invoke-interface {v0}, Lf/a/a/g/b/r$b;->c()V

    .line 7
    iget-object v0, p0, Lf/a/a/g/b/r;->c:Lf/a/a/g/b/r$b;

    invoke-interface {v0, p1}, Lf/a/a/g/b/r$b;->a(Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V

    .line 8
    iget-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lf/a/a/g/b/p;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 9

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlaybackState, playback state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v1}, Lf/a/a/g/b/p;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0}, Lf/a/a/g/b/p;->a()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v4, v0

    .line 12
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$a;-><init>()V

    .line 13
    invoke-virtual {p0}, Lf/a/a/g/b/r;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a(J)Landroid/support/v4/media/session/PlaybackStateCompat$a;

    .line 14
    iget-object v1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v1}, Lf/a/a/g/b/p;->getState()I

    move-result v1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a(Ljava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$a;

    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v2, v0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$a;

    .line 17
    iget-object v1, p0, Lf/a/a/g/b/r;->a:Lf/a/a/g/b/m;

    invoke-virtual {v1}, Lf/a/a/g/b/m;->b()Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b(J)Landroid/support/v4/media/session/PlaybackStateCompat$a;

    .line 19
    :cond_2
    iget-object v1, p0, Lf/a/a/g/b/r;->c:Lf/a/a/g/b/r$b;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-interface {v1, v0}, Lf/a/a/g/b/r$b;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 20
    :cond_3
    iget-object p1, p0, Lf/a/a/g/b/r;->c:Lf/a/a/g/b/r$b;

    invoke-interface {p1}, Lf/a/a/g/b/r$b;->a()V

    :cond_4
    return-void
.end method

.method public d()Landroid/support/v4/media/session/MediaSessionCompat$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/r;->d:Lf/a/a/g/b/r$a;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSeekToRequest: mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v1}, Lf/a/a/g/b/p;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v0}, Lf/a/a/g/b/p;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v0, p1}, Lf/a/a/g/b/p;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public e()Lf/a/a/g/b/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePauseRequest: mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v1}, Lf/a/a/g/b/p;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v0}, Lf/a/a/g/b/p;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/r;->b:Lf/a/a/g/b/p;

    invoke-interface {v0}, Lf/a/a/g/b/p;->pause()V

    .line 4
    iget-object v0, p0, Lf/a/a/g/b/r;->c:Lf/a/a/g/b/r$b;

    invoke-interface {v0}, Lf/a/a/g/b/r$b;->b()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/r;->a:Lf/a/a/g/b/m;

    invoke-virtual {v0}, Lf/a/a/g/b/m;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lf/a/a/g/b/r;->c(I)V

    return-void
.end method

.method public final h()V
    .locals 8

    .line 1
    new-instance v7, Landroid/support/v4/media/session/PlaybackStateCompat$a;

    invoke-direct {v7}, Landroid/support/v4/media/session/PlaybackStateCompat$a;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$a;

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/r;->c:Lf/a/a/g/b/r$b;

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/a/a/g/b/r$b;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method
