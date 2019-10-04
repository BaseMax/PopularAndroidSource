.class public final Lcom/bumptech/glide/load/b/k$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/k;

.field private final b:Lcom/bumptech/glide/load/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/l<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/e/i;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/e/i;Lcom/bumptech/glide/load/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/i;",
            "Lcom/bumptech/glide/load/b/l<",
            "*>;)V"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/bumptech/glide/load/b/k$d;->a:Lcom/bumptech/glide/load/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/bumptech/glide/load/b/k$d;->c:Lcom/bumptech/glide/e/i;

    .line 350
    iput-object p3, p0, Lcom/bumptech/glide/load/b/k$d;->b:Lcom/bumptech/glide/load/b/l;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/bumptech/glide/load/b/k$d;->a:Lcom/bumptech/glide/load/b/k;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/b/k$d;->b:Lcom/bumptech/glide/load/b/l;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/k$d;->c:Lcom/bumptech/glide/e/i;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/b/l;->c(Lcom/bumptech/glide/e/i;)V

    .line 360
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
