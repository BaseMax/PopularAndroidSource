.class final Landroid/support/v4/media/session/MediaSessionCompat$a$d;
.super Landroid/support/v4/media/session/MediaSessionCompat$a$c;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic c:Landroid/support/v4/media/session/MediaSessionCompat$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V
    .locals 0

    .line 1520
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$d;->c:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a$c;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$a;)V

    return-void
.end method


# virtual methods
.method public final onPrepare()V
    .locals 1

    .line 1525
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$d;->c:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPrepare()V

    return-void
.end method

.method public final onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1530
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$d;->c:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1535
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$d;->c:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 1540
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$a$d;->c:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
