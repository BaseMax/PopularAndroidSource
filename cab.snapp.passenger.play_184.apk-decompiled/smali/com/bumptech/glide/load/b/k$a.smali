.class final Lcom/bumptech/glide/load/b/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/b/h$d;

.field final b:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/h$d;)V
    .locals 2

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Lcom/bumptech/glide/load/b/k$a$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/k$a$1;-><init>(Lcom/bumptech/glide/load/b/k$a;)V

    const/16 v1, 0x96

    .line 401
    invoke-static {v1, v0}, Lcom/bumptech/glide/g/a/a;->threadSafe(ILcom/bumptech/glide/g/a/a$a;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/k$a;->b:Landroidx/core/util/Pools$Pool;

    .line 411
    iput-object p1, p0, Lcom/bumptech/glide/load/b/k$a;->a:Lcom/bumptech/glide/load/b/h$d;

    return-void
.end method
