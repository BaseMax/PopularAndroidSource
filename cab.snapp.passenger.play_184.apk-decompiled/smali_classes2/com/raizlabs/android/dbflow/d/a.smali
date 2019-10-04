.class public abstract Lcom/raizlabs/android/dbflow/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/structure/b/a/d;

.field private b:Lcom/raizlabs/android/dbflow/d/c;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/d;Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/d;

    .line 21
    new-instance p1, Lcom/raizlabs/android/dbflow/d/c;

    invoke-direct {p1, p2}, Lcom/raizlabs/android/dbflow/d/c;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/a;->b:Lcom/raizlabs/android/dbflow/d/c;

    .line 22
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/d/a;->checkQueue()V

    return-void
.end method


# virtual methods
.method public addTransaction(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/d/a;->getQueue()Lcom/raizlabs/android/dbflow/structure/b/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/d;->add(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V

    return-void
.end method

.method public cancelTransaction(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/d/a;->getQueue()Lcom/raizlabs/android/dbflow/structure/b/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/d;->cancel(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V

    return-void
.end method

.method public checkQueue()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/d/a;->getQueue()Lcom/raizlabs/android/dbflow/structure/b/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/d;->startIfNotAlive()V

    return-void
.end method

.method public getQueue()Lcom/raizlabs/android/dbflow/structure/b/a/d;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/d;

    return-object v0
.end method

.method public getSaveQueue()Lcom/raizlabs/android/dbflow/d/c;
    .locals 1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/a;->b:Lcom/raizlabs/android/dbflow/d/c;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/d/c;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/a;->b:Lcom/raizlabs/android/dbflow/d/c;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/d/c;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->logError(Ljava/lang/Throwable;)V

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/a;->b:Lcom/raizlabs/android/dbflow/d/c;

    return-object v0
.end method

.method public stopQueue()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/d/a;->getQueue()Lcom/raizlabs/android/dbflow/structure/b/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/d;->quit()V

    return-void
.end method
