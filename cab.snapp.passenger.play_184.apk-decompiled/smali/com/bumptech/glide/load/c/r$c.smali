.class final Lcom/bumptech/glide/load/c/r$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Ljava/util/List;Landroidx/core/util/Pools$Pool;)Lcom/bumptech/glide/load/c/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "TModel;TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Lcom/bumptech/glide/load/c/q<",
            "TModel;TData;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/bumptech/glide/load/c/q;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/c/q;-><init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method
