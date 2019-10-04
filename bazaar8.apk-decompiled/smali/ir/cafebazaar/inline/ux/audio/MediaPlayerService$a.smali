.class public Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;
.super Landroid/os/Handler;
.source "MediaPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ux/audio/MediaPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lir/cafebazaar/inline/ux/audio/MediaPlayerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;Lf/a/a/g/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;-><init>(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->a(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)Lf/a/a/g/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/b/r;->e()Lf/a/a/g/b/p;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->a(Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)Lf/a/a/g/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/b/r;->e()Lf/a/a/g/b/p;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/g/b/p;->isPlaying()Z

    move-result v0

    const-string v1, "MediaPlayerService"

    if-eqz v0, :cond_0

    const-string p1, "Ignoring delayed stop since the media player is in use."

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "Stopping service with delay handler."

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method
