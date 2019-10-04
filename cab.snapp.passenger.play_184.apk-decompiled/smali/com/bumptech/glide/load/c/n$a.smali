.class public final Lcom/bumptech/glide/load/c/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final alternateKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/d;",
            ">;"
        }
    .end annotation
.end field

.field public final fetcher:Lcom/bumptech/glide/load/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/d<",
            "TData;>;"
        }
    .end annotation
.end field

.field public final sourceKey:Lcom/bumptech/glide/load/d;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/a/d<",
            "TData;>;)V"
        }
    .end annotation

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/d;Ljava/util/List;Lcom/bumptech/glide/load/a/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/d;Ljava/util/List;Lcom/bumptech/glide/load/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/d;",
            ">;",
            "Lcom/bumptech/glide/load/a/d<",
            "TData;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/d;

    iput-object p1, p0, Lcom/bumptech/glide/load/c/n$a;->sourceKey:Lcom/bumptech/glide/load/d;

    .line 57
    invoke-static {p2}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/bumptech/glide/load/c/n$a;->alternateKeys:Ljava/util/List;

    .line 58
    invoke-static {p3}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/a/d;

    iput-object p1, p0, Lcom/bumptech/glide/load/c/n$a;->fetcher:Lcom/bumptech/glide/load/a/d;

    return-void
.end method
