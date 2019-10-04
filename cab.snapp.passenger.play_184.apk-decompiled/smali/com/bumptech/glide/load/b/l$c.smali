.class final Lcom/bumptech/glide/load/b/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/b/v;Z)Lcom/bumptech/glide/load/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/v<",
            "TR;>;Z)",
            "Lcom/bumptech/glide/load/b/p<",
            "TR;>;"
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/bumptech/glide/load/b/p;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bumptech/glide/load/b/p;-><init>(Lcom/bumptech/glide/load/b/v;ZZ)V

    return-object v0
.end method
