.class public final Lcom/bumptech/glide/e/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/b/c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/e/b/f$a;

.field private b:Lcom/bumptech/glide/e/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/b/f<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/e/b/f$a;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/e/b/e;->a:Lcom/bumptech/glide/e/b/f$a;

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/e/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/e/b/b<",
            "TR;>;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/e/b/e;->b:Lcom/bumptech/glide/e/b/f;

    if-nez p1, :cond_1

    .line 30
    new-instance p1, Lcom/bumptech/glide/e/b/f;

    iget-object p2, p0, Lcom/bumptech/glide/e/b/e;->a:Lcom/bumptech/glide/e/b/f$a;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/e/b/f;-><init>(Lcom/bumptech/glide/e/b/f$a;)V

    iput-object p1, p0, Lcom/bumptech/glide/e/b/e;->b:Lcom/bumptech/glide/e/b/f;

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/e/b/e;->b:Lcom/bumptech/glide/e/b/f;

    return-object p1

    .line 27
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/e/b/a;->get()Lcom/bumptech/glide/e/b/b;

    move-result-object p1

    return-object p1
.end method
