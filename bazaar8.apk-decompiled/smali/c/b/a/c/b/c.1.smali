.class public final Lc/b/a/c/b/c;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/b/c$b;,
        Lc/b/a/c/b/c$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/b/a/c/c;",
            "Lc/b/a/c/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lc/b/a/c/b/x$a;

.field public e:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lc/b/a/c/b/x<",
            "*>;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Thread;

.field public volatile g:Z

.field public volatile h:Lc/b/a/c/b/c$a;


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc/b/a/c/b/a;

    invoke-direct {v2, p0}, Lc/b/a/c/b/a;-><init>(Lc/b/a/c/b/c;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc/b/a/c/b/c;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/c/b/c;->c:Ljava/util/Map;

    .line 4
    iput-boolean p1, p0, Lc/b/a/c/b/c;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 14
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lc/b/a/c/b/c;->g:Z

    if-nez v0, :cond_1

    .line 15
    :try_start_0
    iget-object v0, p0, Lc/b/a/c/b/c;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lc/b/a/c/b/c$b;

    .line 16
    iget-object v1, p0, Lc/b/a/c/b/c;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 17
    iget-object v0, p0, Lc/b/a/c/b/c;->h:Lc/b/a/c/b/c$a;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0}, Lc/b/a/c/b/c$a;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lc/b/a/c/b/c$b;)V
    .locals 4

    .line 8
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 9
    iget-object v0, p0, Lc/b/a/c/b/c;->c:Ljava/util/Map;

    iget-object v1, p1, Lc/b/a/c/b/c$b;->a:Lc/b/a/c/c;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v0, p1, Lc/b/a/c/b/c$b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lc/b/a/c/b/c$b;->c:Lc/b/a/c/b/D;

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lc/b/a/c/b/x;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lc/b/a/c/b/x;-><init>(Lc/b/a/c/b/D;ZZ)V

    .line 12
    iget-object v0, p1, Lc/b/a/c/b/c$b;->a:Lc/b/a/c/c;

    iget-object v2, p0, Lc/b/a/c/b/c;->d:Lc/b/a/c/b/x$a;

    invoke-virtual {v1, v0, v2}, Lc/b/a/c/b/x;->a(Lc/b/a/c/c;Lc/b/a/c/b/x$a;)V

    .line 13
    iget-object v0, p0, Lc/b/a/c/b/c;->d:Lc/b/a/c/b/x$a;

    iget-object p1, p1, Lc/b/a/c/b/c$b;->a:Lc/b/a/c/c;

    invoke-interface {v0, p1, v1}, Lc/b/a/c/b/x$a;->a(Lc/b/a/c/c;Lc/b/a/c/b/x;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lc/b/a/c/b/x$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/c/b/c;->d:Lc/b/a/c/b/x$a;

    return-void
.end method

.method public a(Lc/b/a/c/c;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lc/b/a/c/b/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c/b/c$b;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lc/b/a/c/b/c$b;->a()V

    :cond_0
    return-void
.end method

.method public a(Lc/b/a/c/c;Lc/b/a/c/b/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Lc/b/a/c/b/x<",
            "*>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lc/b/a/c/b/c$b;

    .line 3
    invoke-virtual {p0}, Lc/b/a/c/b/c;->b()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    iget-boolean v2, p0, Lc/b/a/c/b/c;->a:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lc/b/a/c/b/c$b;-><init>(Lc/b/a/c/c;Lc/b/a/c/b/x;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 4
    iget-object p2, p0, Lc/b/a/c/b/c;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c/b/c$b;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lc/b/a/c/b/c$b;->a()V

    :cond_0
    return-void
.end method

.method public b(Lc/b/a/c/c;)Lc/b/a/c/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            ")",
            "Lc/b/a/c/b/x<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c/b/c$b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/b/x;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lc/b/a/c/b/c;->a(Lc/b/a/c/b/c$b;)V

    :cond_1
    return-object v0
.end method

.method public final b()Ljava/lang/ref/ReferenceQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lc/b/a/c/b/x<",
            "*>;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/b/a/c/b/c;->e:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lc/b/a/c/b/c;->e:Ljava/lang/ref/ReferenceQueue;

    .line 6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc/b/a/c/b/b;

    invoke-direct {v1, p0}, Lc/b/a/c/b/b;-><init>(Lc/b/a/c/b/c;)V

    const-string v2, "glide-active-resources"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lc/b/a/c/b/c;->f:Ljava/lang/Thread;

    .line 7
    iget-object v0, p0, Lc/b/a/c/b/c;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    :cond_0
    iget-object v0, p0, Lc/b/a/c/b/c;->e:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method
