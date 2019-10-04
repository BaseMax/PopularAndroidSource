.class public La/a/b/b/a/n$b;
.super La/a/b/b/a/m$b;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "La/a/b/b/a/n$a;",
        ">",
        "La/a/b/b/a/m$b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(La/a/b/b/a/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, La/a/b/b/a/m$b;-><init>(La/a/b/b/a/m$a;)V

    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    check-cast v0, La/a/b/b/a/n$a;

    invoke-interface {v0}, La/a/b/b/a/n$a;->a()V

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    check-cast v0, La/a/b/b/a/n$a;

    invoke-interface {v0, p1, p2}, La/a/b/b/a/n$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    check-cast v0, La/a/b/b/a/n$a;

    invoke-interface {v0, p1, p2}, La/a/b/b/a/n$a;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    check-cast v0, La/a/b/b/a/n$a;

    invoke-interface {v0, p1, p2}, La/a/b/b/a/n$a;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
