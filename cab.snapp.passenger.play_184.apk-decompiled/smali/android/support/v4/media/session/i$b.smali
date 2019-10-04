.class final Landroid/support/v4/media/session/i$b;
.super Landroid/support/v4/media/session/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/i$a;",
        ">",
        "Landroid/support/v4/media/session/h$b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/h$b;-><init>(Landroid/support/v4/media/session/h$a;)V

    return-void
.end method


# virtual methods
.method public final onPrepare()V
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/support/v4/media/session/i$b;->a:Landroid/support/v4/media/session/f$a;

    check-cast v0, Landroid/support/v4/media/session/i$a;

    invoke-interface {v0}, Landroid/support/v4/media/session/i$a;->onPrepare()V

    return-void
.end method

.method public final onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Landroid/support/v4/media/session/i$b;->a:Landroid/support/v4/media/session/f$a;

    check-cast v0, Landroid/support/v4/media/session/i$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/i$a;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Landroid/support/v4/media/session/i$b;->a:Landroid/support/v4/media/session/f$a;

    check-cast v0, Landroid/support/v4/media/session/i$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/i$a;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Landroid/support/v4/media/session/i$b;->a:Landroid/support/v4/media/session/f$a;

    check-cast v0, Landroid/support/v4/media/session/i$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/i$a;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
