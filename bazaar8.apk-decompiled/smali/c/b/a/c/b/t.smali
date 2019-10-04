.class public Lc/b/a/c/b/t;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$a;
.implements Lc/b/a/i/a/d$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/b/t$b;,
        Lc/b/a/c/b/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodeJob$a<",
        "TR;>;",
        "Lc/b/a/i/a/d$c;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/c/b/t$a;

.field public static final b:Landroid/os/Handler;


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/g/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lc/b/a/i/a/g;

.field public final e:Lb/i/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/j/e<",
            "Lc/b/a/c/b/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Lc/b/a/c/b/t$a;

.field public final g:Lc/b/a/c/b/u;

.field public final h:Lc/b/a/c/b/c/b;

.field public final i:Lc/b/a/c/b/c/b;

.field public final j:Lc/b/a/c/b/c/b;

.field public final k:Lc/b/a/c/b/c/b;

.field public l:Lc/b/a/c/c;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lc/b/a/c/b/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/D<",
            "*>;"
        }
    .end annotation
.end field

.field public r:Lcom/bumptech/glide/load/DataSource;

.field public s:Z

.field public t:Lcom/bumptech/glide/load/engine/GlideException;

.field public u:Z

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/g/h;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lc/b/a/c/b/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/x<",
            "*>;"
        }
    .end annotation
.end field

.field public x:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc/b/a/c/b/t$a;

    invoke-direct {v0}, Lc/b/a/c/b/t$a;-><init>()V

    sput-object v0, Lc/b/a/c/b/t;->a:Lc/b/a/c/b/t$a;

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc/b/a/c/b/t$b;

    invoke-direct {v2}, Lc/b/a/c/b/t$b;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lc/b/a/c/b/t;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/u;Lb/i/j/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/c/b;",
            "Lc/b/a/c/b/c/b;",
            "Lc/b/a/c/b/c/b;",
            "Lc/b/a/c/b/c/b;",
            "Lc/b/a/c/b/u;",
            "Lb/i/j/e<",
            "Lc/b/a/c/b/t<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    sget-object v7, Lc/b/a/c/b/t;->a:Lc/b/a/c/b/t$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lc/b/a/c/b/t;-><init>(Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/u;Lb/i/j/e;Lc/b/a/c/b/t$a;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/u;Lb/i/j/e;Lc/b/a/c/b/t$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/c/b;",
            "Lc/b/a/c/b/c/b;",
            "Lc/b/a/c/b/c/b;",
            "Lc/b/a/c/b/c/b;",
            "Lc/b/a/c/b/u;",
            "Lb/i/j/e<",
            "Lc/b/a/c/b/t<",
            "*>;>;",
            "Lc/b/a/c/b/t$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    .line 4
    invoke-static {}, Lc/b/a/i/a/g;->a()Lc/b/a/i/a/g;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/b/t;->d:Lc/b/a/i/a/g;

    .line 5
    iput-object p1, p0, Lc/b/a/c/b/t;->h:Lc/b/a/c/b/c/b;

    .line 6
    iput-object p2, p0, Lc/b/a/c/b/t;->i:Lc/b/a/c/b/c/b;

    .line 7
    iput-object p3, p0, Lc/b/a/c/b/t;->j:Lc/b/a/c/b/c/b;

    .line 8
    iput-object p4, p0, Lc/b/a/c/b/t;->k:Lc/b/a/c/b/c/b;

    .line 9
    iput-object p5, p0, Lc/b/a/c/b/t;->g:Lc/b/a/c/b/u;

    .line 10
    iput-object p6, p0, Lc/b/a/c/b/t;->e:Lb/i/j/e;

    .line 11
    iput-object p7, p0, Lc/b/a/c/b/t;->f:Lc/b/a/c/b/t$a;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c;ZZZZ)Lc/b/a/c/b/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "ZZZZ)",
            "Lc/b/a/c/b/t<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/c/b/t;->l:Lc/b/a/c/c;

    .line 2
    iput-boolean p2, p0, Lc/b/a/c/b/t;->m:Z

    .line 3
    iput-boolean p3, p0, Lc/b/a/c/b/t;->n:Z

    .line 4
    iput-boolean p4, p0, Lc/b/a/c/b/t;->o:Z

    .line 5
    iput-boolean p5, p0, Lc/b/a/c/b/t;->p:Z

    return-object p0
.end method

.method public a()V
    .locals 2

    .line 13
    iget-boolean v0, p0, Lc/b/a/c/b/t;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/b/a/c/b/t;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/b/a/c/b/t;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lc/b/a/c/b/t;->y:Z

    .line 15
    iget-object v0, p0, Lc/b/a/c/b/t;->x:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->h()V

    .line 16
    iget-object v0, p0, Lc/b/a/c/b/t;->g:Lc/b/a/c/b/u;

    iget-object v1, p0, Lc/b/a/c/b/t;->l:Lc/b/a/c/c;

    invoke-interface {v0, p0, v1}, Lc/b/a/c/b/u;->a(Lc/b/a/c/b/t;Lc/b/a/c/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lc/b/a/c/b/D;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lc/b/a/c/b/t;->q:Lc/b/a/c/b/D;

    .line 33
    iput-object p2, p0, Lc/b/a/c/b/t;->r:Lcom/bumptech/glide/load/DataSource;

    .line 34
    sget-object p1, Lc/b/a/c/b/t;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lc/b/a/g/h;)V
    .locals 2

    .line 6
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 7
    iget-object v0, p0, Lc/b/a/c/b/t;->d:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 8
    iget-boolean v0, p0, Lc/b/a/c/b/t;->s:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lc/b/a/c/b/t;->w:Lc/b/a/c/b/x;

    iget-object v1, p0, Lc/b/a/c/b/t;->r:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {p1, v0, v1}, Lc/b/a/g/h;->a(Lc/b/a/c/b/D;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lc/b/a/c/b/t;->u:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lc/b/a/c/b/t;->t:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lc/b/a/g/h;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lc/b/a/c/b/t;->b()Lc/b/a/c/b/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/c/b/c/b;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    .line 35
    iput-object p1, p0, Lc/b/a/c/b/t;->t:Lcom/bumptech/glide/load/engine/GlideException;

    .line 36
    sget-object p1, Lc/b/a/c/b/t;->b:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 17
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 18
    iget-object v0, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lc/b/a/c/b/t;->l:Lc/b/a/c/c;

    .line 20
    iput-object v0, p0, Lc/b/a/c/b/t;->w:Lc/b/a/c/b/x;

    .line 21
    iput-object v0, p0, Lc/b/a/c/b/t;->q:Lc/b/a/c/b/D;

    .line 22
    iget-object v1, p0, Lc/b/a/c/b/t;->v:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lc/b/a/c/b/t;->u:Z

    .line 25
    iput-boolean v1, p0, Lc/b/a/c/b/t;->y:Z

    .line 26
    iput-boolean v1, p0, Lc/b/a/c/b/t;->s:Z

    .line 27
    iget-object v1, p0, Lc/b/a/c/b/t;->x:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Z)V

    .line 28
    iput-object v0, p0, Lc/b/a/c/b/t;->x:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 29
    iput-object v0, p0, Lc/b/a/c/b/t;->t:Lcom/bumptech/glide/load/engine/GlideException;

    .line 30
    iput-object v0, p0, Lc/b/a/c/b/t;->r:Lcom/bumptech/glide/load/DataSource;

    .line 31
    iget-object p1, p0, Lc/b/a/c/b/t;->e:Lb/i/j/e;

    invoke-interface {p1, p0}, Lb/i/j/e;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lc/b/a/c/b/c/b;
    .locals 1

    .line 6
    iget-boolean v0, p0, Lc/b/a/c/b/t;->n:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/b/a/c/b/t;->j:Lc/b/a/c/b/c/b;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lc/b/a/c/b/t;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/b/a/c/b/t;->k:Lc/b/a/c/b/c/b;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/b/a/c/b/t;->i:Lc/b/a/c/b/c/b;

    :goto_0
    return-object v0
.end method

.method public final b(Lc/b/a/g/h;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lc/b/a/c/b/t;->v:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/b/a/c/b/t;->v:Ljava/util/List;

    .line 10
    :cond_0
    iget-object v0, p0, Lc/b/a/c/b/t;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lc/b/a/c/b/t;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/c/b/t;->x:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/b/a/c/b/t;->h:Lc/b/a/c/b/c/b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/b/a/c/b/t;->b()Lc/b/a/c/b/c/b;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lc/b/a/c/b/c/b;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/b/a/c/b/t;->d:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 3
    iget-boolean v0, p0, Lc/b/a/c/b/t;->y:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/b/a/c/b/t;->g:Lc/b/a/c/b/u;

    iget-object v1, p0, Lc/b/a/c/b/t;->l:Lc/b/a/c/c;

    invoke-interface {v0, p0, v1}, Lc/b/a/c/b/u;->a(Lc/b/a/c/b/t;Lc/b/a/c/c;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lc/b/a/c/b/t;->a(Z)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lc/b/a/g/h;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/t;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 4

    .line 8
    iget-object v0, p0, Lc/b/a/c/b/t;->d:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 9
    iget-boolean v0, p0, Lc/b/a/c/b/t;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Lc/b/a/c/b/t;->a(Z)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    iget-boolean v0, p0, Lc/b/a/c/b/t;->u:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lc/b/a/c/b/t;->u:Z

    .line 14
    iget-object v0, p0, Lc/b/a/c/b/t;->g:Lc/b/a/c/b/u;

    iget-object v2, p0, Lc/b/a/c/b/t;->l:Lc/b/a/c/c;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v2, v3}, Lc/b/a/c/b/u;->a(Lc/b/a/c/b/t;Lc/b/a/c/c;Lc/b/a/c/b/x;)V

    .line 15
    iget-object v0, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/g/h;

    .line 16
    invoke-virtual {p0, v2}, Lc/b/a/c/b/t;->c(Lc/b/a/g/h;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 17
    iget-object v3, p0, Lc/b/a/c/b/t;->t:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {v2, v3}, Lc/b/a/g/h;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0, v1}, Lc/b/a/c/b/t;->a(Z)V

    return-void

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public d(Lc/b/a/g/h;)V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 2
    iget-object v0, p0, Lc/b/a/c/b/t;->d:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 3
    iget-boolean v0, p0, Lc/b/a/c/b/t;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/b/a/c/b/t;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lc/b/a/c/b/t;->a()V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc/b/a/c/b/t;->b(Lc/b/a/g/h;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/t;->d:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 2
    iget-boolean v0, p0, Lc/b/a/c/b/t;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/b/a/c/b/t;->q:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->a()V

    .line 4
    invoke-virtual {p0, v1}, Lc/b/a/c/b/t;->a(Z)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    iget-boolean v0, p0, Lc/b/a/c/b/t;->s:Z

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lc/b/a/c/b/t;->f:Lc/b/a/c/b/t$a;

    iget-object v2, p0, Lc/b/a/c/b/t;->q:Lc/b/a/c/b/D;

    iget-boolean v3, p0, Lc/b/a/c/b/t;->m:Z

    invoke-virtual {v0, v2, v3}, Lc/b/a/c/b/t$a;->a(Lc/b/a/c/b/D;Z)Lc/b/a/c/b/x;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/b/t;->w:Lc/b/a/c/b/x;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lc/b/a/c/b/t;->s:Z

    .line 9
    iget-object v0, p0, Lc/b/a/c/b/t;->w:Lc/b/a/c/b/x;

    invoke-virtual {v0}, Lc/b/a/c/b/x;->d()V

    .line 10
    iget-object v0, p0, Lc/b/a/c/b/t;->g:Lc/b/a/c/b/u;

    iget-object v2, p0, Lc/b/a/c/b/t;->l:Lc/b/a/c/c;

    iget-object v3, p0, Lc/b/a/c/b/t;->w:Lc/b/a/c/b/x;

    invoke-interface {v0, p0, v2, v3}, Lc/b/a/c/b/u;->a(Lc/b/a/c/b/t;Lc/b/a/c/c;Lc/b/a/c/b/x;)V

    .line 11
    iget-object v0, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    iget-object v3, p0, Lc/b/a/c/b/t;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/g/h;

    .line 13
    invoke-virtual {p0, v3}, Lc/b/a/c/b/t;->c(Lc/b/a/g/h;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    iget-object v4, p0, Lc/b/a/c/b/t;->w:Lc/b/a/c/b/x;

    invoke-virtual {v4}, Lc/b/a/c/b/x;->d()V

    .line 15
    iget-object v4, p0, Lc/b/a/c/b/t;->w:Lc/b/a/c/b/x;

    iget-object v5, p0, Lc/b/a/c/b/t;->r:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v3, v4, v5}, Lc/b/a/g/h;->a(Lc/b/a/c/b/D;Lcom/bumptech/glide/load/DataSource;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lc/b/a/c/b/t;->w:Lc/b/a/c/b/x;

    invoke-virtual {v0}, Lc/b/a/c/b/x;->g()V

    .line 17
    invoke-virtual {p0, v1}, Lc/b/a/c/b/t;->a(Z)V

    return-void

    .line 18
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public f()Lc/b/a/i/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/t;->d:Lc/b/a/i/a/g;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/c/b/t;->p:Z

    return v0
.end method
