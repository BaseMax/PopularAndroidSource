.class Landroid/support/v4/media/session/MediaControllerCompat$j;
.super Landroid/support/v4/media/session/MediaControllerCompat$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2464
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$i;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 2469
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$j;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/d$a;->playFromUri(Ljava/lang/Object;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
