.class final Landroid/support/v4/media/c$b;
.super Landroid/support/v4/media/a$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/c$a;",
        ">",
        "Landroid/support/v4/media/a$e<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/media/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Landroid/support/v4/media/a$e;-><init>(Landroid/support/v4/media/a$d;)V

    return-void
.end method


# virtual methods
.method public final onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Landroid/support/v4/media/c$b;->a:Landroid/support/v4/media/a$d;

    check-cast v0, Landroid/support/v4/media/c$a;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/c$a;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Landroid/support/v4/media/c$b;->a:Landroid/support/v4/media/a$d;

    check-cast v0, Landroid/support/v4/media/c$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/c$a;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
