.class final Lcom/bumptech/glide/load/b/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/l;

.field private final b:Lcom/bumptech/glide/e/i;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/e/i;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/bumptech/glide/load/b/l$a;->a:Lcom/bumptech/glide/load/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/bumptech/glide/load/b/l$a;->b:Lcom/bumptech/glide/e/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/load/b/l$a;->a:Lcom/bumptech/glide/load/b/l;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/b/l$a;->a:Lcom/bumptech/glide/load/b/l;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/l;->a:Lcom/bumptech/glide/load/b/l$e;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/l$a;->b:Lcom/bumptech/glide/e/i;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/b/l$e;->a(Lcom/bumptech/glide/e/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/bumptech/glide/load/b/l$a;->a:Lcom/bumptech/glide/load/b/l;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/l$a;->b:Lcom/bumptech/glide/e/i;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/b/l;->b(Lcom/bumptech/glide/e/i;)V

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/b/l$a;->a:Lcom/bumptech/glide/load/b/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/l;->a()V

    .line 380
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
