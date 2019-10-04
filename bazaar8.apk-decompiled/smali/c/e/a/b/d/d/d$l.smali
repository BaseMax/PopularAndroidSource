.class public final Lc/e/a/b/d/d/d$l;
.super Lc/e/a/b/d/d/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/d/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/d/d/d$f;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lc/e/a/b/d/d/d;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/d/d;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/d/d$l;->g:Lc/e/a/b/d/d/d;

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lc/e/a/b/d/d/d$f;-><init>(Lc/e/a/b/d/d/d;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d$l;->g:Lc/e/a/b/d/d/d;

    invoke-virtual {v0}, Lc/e/a/b/d/d/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/d/d/d$l;->g:Lc/e/a/b/d/d/d;

    invoke-static {v0}, Lc/e/a/b/d/d/d;->b(Lc/e/a/b/d/d/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lc/e/a/b/d/d/d$l;->g:Lc/e/a/b/d/d/d;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lc/e/a/b/d/d/d;->a(Lc/e/a/b/d/d/d;I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/d/d/d$l;->g:Lc/e/a/b/d/d/d;

    iget-object v0, v0, Lc/e/a/b/d/d/d;->q:Lc/e/a/b/d/d/d$c;

    invoke-interface {v0, p1}, Lc/e/a/b/d/d/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/d/d$l;->g:Lc/e/a/b/d/d/d;

    invoke-virtual {v0, p1}, Lc/e/a/b/d/d/d;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d$l;->g:Lc/e/a/b/d/d/d;

    iget-object v0, v0, Lc/e/a/b/d/d/d;->q:Lc/e/a/b/d/d/d$c;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lc/e/a/b/d/d/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
