.class public Lf/a/a/e/b;
.super Ljava/lang/Object;
.source "CommonPageFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/c;


# direct methods
.method public constructor <init>(Lf/a/a/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b;->a:Lf/a/a/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    check-cast p2, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$b;

    .line 2
    iget-object p1, p0, Lf/a/a/e/b;->a:Lf/a/a/e/c;

    invoke-virtual {p2}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService$b;->a()Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    move-result-object p2

    invoke-static {p1, p2}, Lf/a/a/e/c;->a(Lf/a/a/e/c;Lir/cafebazaar/inline/ux/audio/MediaPlayerService;)Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    .line 3
    iget-object p1, p0, Lf/a/a/e/b;->a:Lf/a/a/e/c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lf/a/a/e/c;->a(Lf/a/a/e/c;Z)Z

    const-string p1, "CommonPageFragment"

    const-string p2, "onConnected"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    iget-object p2, p0, Lf/a/a/e/b;->a:Lf/a/a/e/c;

    iget-object v0, p0, Lf/a/a/e/b;->a:Lf/a/a/e/c;

    invoke-static {v0}, Lf/a/a/e/c;->b(Lf/a/a/e/c;)Lir/cafebazaar/inline/ux/audio/MediaPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/audio/MediaPlayerService;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p2, v0}, Lf/a/a/e/c;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-static {p2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "could not connect media controller"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/e/b;->a:Lf/a/a/e/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lf/a/a/e/c;->a(Lf/a/a/e/c;Z)Z

    return-void
.end method
