.class public abstract Lc/e/a/a/o;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lc/e/a/a/M;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/o$b;,
        Lc/e/a/a/o$a;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/Z$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/a/Z$b;

    invoke-direct {v0}, Lc/e/a/a/Z$b;-><init>()V

    iput-object v0, p0, Lc/e/a/a/o;->a:Lc/e/a/a/Z$b;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lc/e/a/a/M;->j()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lc/e/a/a/M;->a(IJ)V

    return-void
.end method

.method public final h()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lc/e/a/a/M;->j()I

    move-result v1

    iget-object v2, p0, Lc/e/a/a/o;->a:Lc/e/a/a/Z$b;

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object v0

    iget-boolean v0, v0, Lc/e/a/a/Z$b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/o;->o()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPrevious()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/o;->m()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lc/e/a/a/M;->j()I

    move-result v1

    invoke-virtual {p0}, Lc/e/a/a/o;->x()I

    move-result v2

    invoke-interface {p0}, Lc/e/a/a/M;->s()Z

    move-result v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/a/Z;->b(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final o()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lc/e/a/a/M;->j()I

    move-result v1

    invoke-virtual {p0}, Lc/e/a/a/o;->x()I

    move-result v2

    invoke-interface {p0}, Lc/e/a/a/M;->s()Z

    move-result v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/a/Z;->a(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final w()J
    .locals 3

    .line 1
    invoke-interface {p0}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lc/e/a/a/M;->j()I

    move-result v1

    iget-object v2, p0, Lc/e/a/a/o;->a:Lc/e/a/a/Z$b;

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/a/Z$b;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final x()I
    .locals 2

    .line 1
    invoke-interface {p0}, Lc/e/a/a/M;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final y()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lc/e/a/a/M;->j()I

    move-result v1

    iget-object v2, p0, Lc/e/a/a/o;->a:Lc/e/a/a/Z$b;

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object v0

    iget-boolean v0, v0, Lc/e/a/a/Z$b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
