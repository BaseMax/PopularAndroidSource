.class public Lf/a/a/g/b/c;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayerPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/g/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/b/e;


# direct methods
.method public constructor <init>(Lf/a/a/g/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/b/c;->a:Lf/a/a/g/b/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MediaPlayerPlayback"

    const-string p2, "Headphones disconnected."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lf/a/a/g/b/c;->a:Lf/a/a/g/b/e;

    invoke-virtual {p1}, Lf/a/a/g/b/e;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lf/a/a/g/b/c;->a:Lf/a/a/g/b/e;

    invoke-static {p1}, Lf/a/a/g/b/e;->a(Lf/a/a/g/b/e;)Lf/a/a/g/b/p$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lf/a/a/g/b/c;->a:Lf/a/a/g/b/e;

    invoke-static {p1}, Lf/a/a/g/b/e;->a(Lf/a/a/g/b/e;)Lf/a/a/g/b/p$a;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/g/b/p$a;->b()V

    :cond_0
    return-void
.end method
