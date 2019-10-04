.class final Lcom/bumptech/glide/load/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/s;->a:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/s;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final a(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/bumptech/glide/load/b/s;->b:Ljava/util/Map;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/b/s;->a:Ljava/util/Map;

    return-object p1
.end method

.method final a(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d;",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;)V"
        }
    .end annotation

    .line 1184
    iget-boolean v0, p2, Lcom/bumptech/glide/load/b/l;->b:Z

    .line 27
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/b/s;->a(Z)Ljava/util/Map;

    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
