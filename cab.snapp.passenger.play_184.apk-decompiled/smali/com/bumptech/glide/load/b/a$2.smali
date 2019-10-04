.class final Lcom/bumptech/glide/load/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/b/a;-><init>(ZLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/a;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/load/b/a$2;->a:Lcom/bumptech/glide/load/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a$2;->a:Lcom/bumptech/glide/load/b/a;

    .line 1130
    :cond_0
    :goto_0
    iget-boolean v1, v0, Lcom/bumptech/glide/load/b/a;->e:Z

    if-nez v1, :cond_1

    .line 1132
    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/load/b/a;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/b/a$b;

    .line 1133
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/b/a$b;)V

    .line 1136
    iget-object v1, v0, Lcom/bumptech/glide/load/b/a;->f:Lcom/bumptech/glide/load/b/a$a;

    if-eqz v1, :cond_0

    .line 1138
    invoke-interface {v1}, Lcom/bumptech/glide/load/b/a$a;->onResourceDequeued()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1142
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method
