.class public La/a/b/b/a/m$b;
.super La/a/b/b/a/l$b;
.source "MediaSessionCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "La/a/b/b/a/m$a;",
        ">",
        "La/a/b/b/a/l$b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(La/a/b/b/a/m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, La/a/b/b/a/l$b;-><init>(La/a/b/b/a/l$a;)V

    return-void
.end method


# virtual methods
.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, La/a/b/b/a/l$b;->a:La/a/b/b/a/l$a;

    check-cast v0, La/a/b/b/a/m$a;

    invoke-interface {v0, p1, p2}, La/a/b/b/a/m$a;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
