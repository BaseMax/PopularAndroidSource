.class final Landroid/support/v4/media/session/MediaControllerCompat$e;
.super Landroid/support/v4/media/session/MediaControllerCompat$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2479
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$d;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method


# virtual methods
.method public final getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$h;
    .locals 2

    .line 2484
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$e;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2485
    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat$k;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$k;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
