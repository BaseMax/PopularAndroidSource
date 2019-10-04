.class public Lf/a/a/g/b/r$a;
.super Landroid/support/v4/media/session/MediaSessionCompat$a;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/g/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lf/a/a/g/b/r;


# direct methods
.method public constructor <init>(Lf/a/a/g/b/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lf/a/a/g/b/r;Lf/a/a/g/b/q;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lf/a/a/g/b/r$a;-><init>(Lf/a/a/g/b/r;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-static {v0}, Lf/a/a/g/b/r;->a(Lf/a/a/g/b/r;)Lf/a/a/g/b/p;

    move-result-object v0

    long-to-int p2, p1

    invoke-interface {v0, p2}, Lf/a/a/g/b/p;->seekTo(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-virtual {v0}, Lf/a/a/g/b/r;->f()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-virtual {v0}, Lf/a/a/g/b/r;->g()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-static {v0}, Lf/a/a/g/b/r;->b(Lf/a/a/g/b/r;)Lf/a/a/g/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/b/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-static {v0}, Lf/a/a/g/b/r;->c(Lf/a/a/g/b/r;)V

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-virtual {v0}, Lf/a/a/g/b/r;->g()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-static {v0}, Lf/a/a/g/b/r;->b(Lf/a/a/g/b/r;)Lf/a/a/g/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/b/m;->d()V

    .line 2
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-static {v0}, Lf/a/a/g/b/r;->c(Lf/a/a/g/b/r;)V

    .line 3
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    invoke-virtual {v0}, Lf/a/a/g/b/r;->g()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/r$a;->e:Lf/a/a/g/b/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/a/a/g/b/r;->b(Ljava/lang/String;)V

    return-void
.end method
