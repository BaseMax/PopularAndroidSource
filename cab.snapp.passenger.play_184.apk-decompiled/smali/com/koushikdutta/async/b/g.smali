.class public Lcom/koushikdutta/async/b/g;
.super Lcom/koushikdutta/async/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/b/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/b/f<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lcom/koushikdutta/async/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/b/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 11
    new-instance v0, Lcom/koushikdutta/async/b/g$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/b/g$1;-><init>(Lcom/koushikdutta/async/b/g;)V

    iput-object v0, p0, Lcom/koushikdutta/async/b/g;->b:Lcom/koushikdutta/async/b/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/b/g;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/g;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/b/f<",
            "TT;>;)",
            "Lcom/koushikdutta/async/b/g<",
            "TT;>;"
        }
    .end annotation

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/b/g;->a:Ljava/util/ArrayList;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object p1, p0, Lcom/koushikdutta/async/b/g;->b:Lcom/koushikdutta/async/b/f;

    invoke-super {p0, p1}, Lcom/koushikdutta/async/b/i;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/i;

    return-object p0

    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/i;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/b/g;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/g;

    move-result-object p1

    return-object p1
.end method
