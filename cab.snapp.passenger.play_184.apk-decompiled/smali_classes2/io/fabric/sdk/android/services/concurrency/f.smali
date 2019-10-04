.class public Lio/fabric/sdk/android/services/concurrency/f;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/a;
.implements Lio/fabric/sdk/android/services/concurrency/g;
.implements Lio/fabric/sdk/android/services/concurrency/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lio/fabric/sdk/android/services/concurrency/a<",
        "Lio/fabric/sdk/android/services/concurrency/j;",
        ">;",
        "Lio/fabric/sdk/android/services/concurrency/g;",
        "Lio/fabric/sdk/android/services/concurrency/j;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 45
    invoke-static {p1}, Lio/fabric/sdk/android/services/concurrency/f;->a(Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object p1

    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 40
    invoke-static {p1}, Lio/fabric/sdk/android/services/concurrency/f;->a(Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object p1

    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/f;->b:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/a<",
            "Lio/fabric/sdk/android/services/concurrency/j;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/g;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/j;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lio/fabric/sdk/android/services/concurrency/h;->isProperDelegate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    check-cast p0, Lio/fabric/sdk/android/services/concurrency/a;

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Lio/fabric/sdk/android/services/concurrency/h;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/h;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addDependency(Lio/fabric/sdk/android/services/concurrency/j;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->getDelegate()Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/a;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->addDependency(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addDependency(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/j;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/f;->addDependency(Lio/fabric/sdk/android/services/concurrency/j;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->getDelegate()Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/a;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/a;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->getDelegate()Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/g;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getDelegate()Lio/fabric/sdk/android/services/concurrency/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/a<",
            "Lio/fabric/sdk/android/services/concurrency/j;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/g;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/j;",
            ">()TT;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/f;->b:Ljava/lang/Object;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/a;

    return-object v0
.end method

.method public getDependencies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/services/concurrency/j;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->getDelegate()Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/a;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/a;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->getDelegate()Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/j;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/j;->getError()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->getDelegate()Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/g;->getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->getDelegate()Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/j;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/j;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->getDelegate()Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/j;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/j;->setError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setFinished(Z)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->getDelegate()Lio/fabric/sdk/android/services/concurrency/a;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/j;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/j;->setFinished(Z)V

    return-void
.end method
