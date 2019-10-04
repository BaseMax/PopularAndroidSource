.class public La/a/b/b/a/l$b;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "La/a/b/b/a/l$a;",
        ">",
        "Landroid/media/session/MediaSession$Callback;"
    }
.end annotation


# instance fields
.field public final a:La/a/b/b/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/a/b/b/a/l$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 2
    iput-object p1, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0, p1, p2, p3}, La/a/b/b/a/l$a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0, p1, p2}, La/a/b/b/a/l$a;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFastForward()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0}, La/a/b/b/a/l$a;->h()V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0, p1}, La/a/b/b/a/l$a;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0}, La/a/b/b/a/l$a;->e()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0}, La/a/b/b/a/l$a;->f()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0, p1, p2}, La/a/b/b/a/l$a;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0, p1, p2}, La/a/b/b/a/l$a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewind()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0}, La/a/b/b/a/l$a;->d()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0, p1, p2}, La/a/b/b/a/l$a;->b(J)V

    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0, p1}, La/a/b/b/a/l$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0}, La/a/b/b/a/l$a;->c()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0}, La/a/b/b/a/l$a;->g()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0, p1, p2}, La/a/b/b/a/l$a;->a(J)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    invoke-interface {v0}, La/a/b/b/a/l$a;->b()V

    return-void
.end method
