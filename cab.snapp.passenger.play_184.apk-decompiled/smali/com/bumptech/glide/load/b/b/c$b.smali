.class final Lcom/bumptech/glide/load/b/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/load/b/b/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method final a()Lcom/bumptech/glide/load/b/b/c$a;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/c$b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/b/b/c$a;

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/bumptech/glide/load/b/b/c$a;

    invoke-direct {v1}, Lcom/bumptech/glide/load/b/b/c$a;-><init>()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 83
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
