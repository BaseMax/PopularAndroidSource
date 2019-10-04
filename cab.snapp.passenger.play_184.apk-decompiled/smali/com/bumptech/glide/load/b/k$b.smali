.class final Lcom/bumptech/glide/load/b/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/b/c/a;

.field final b:Lcom/bumptech/glide/load/b/c/a;

.field final c:Lcom/bumptech/glide/load/b/c/a;

.field final d:Lcom/bumptech/glide/load/b/c/a;

.field final e:Lcom/bumptech/glide/load/b/m;

.field final f:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/m;)V
    .locals 2

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    new-instance v0, Lcom/bumptech/glide/load/b/k$b$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/k$b$1;-><init>(Lcom/bumptech/glide/load/b/k$b;)V

    const/16 v1, 0x96

    .line 461
    invoke-static {v1, v0}, Lcom/bumptech/glide/g/a/a;->threadSafe(ILcom/bumptech/glide/g/a/a$a;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k$b;->f:Landroidx/core/util/Pools$Pool;

    .line 482
    iput-object p1, p0, Lcom/bumptech/glide/load/b/k$b;->a:Lcom/bumptech/glide/load/b/c/a;

    .line 483
    iput-object p2, p0, Lcom/bumptech/glide/load/b/k$b;->b:Lcom/bumptech/glide/load/b/c/a;

    .line 484
    iput-object p3, p0, Lcom/bumptech/glide/load/b/k$b;->c:Lcom/bumptech/glide/load/b/c/a;

    .line 485
    iput-object p4, p0, Lcom/bumptech/glide/load/b/k$b;->d:Lcom/bumptech/glide/load/b/c/a;

    .line 486
    iput-object p5, p0, Lcom/bumptech/glide/load/b/k$b;->e:Lcom/bumptech/glide/load/b/m;

    return-void
.end method
