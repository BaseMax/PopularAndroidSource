.class public Le/a/a/a/a/c/l;
.super Ljava/util/concurrent/FutureTask;
.source "PriorityFutureTask.java"

# interfaces
.implements Le/a/a/a/a/c/g;
.implements Le/a/a/a/a/c/m;
.implements Le/a/a/a/a/c/p;
.implements Le/a/a/a/a/c/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Le/a/a/a/a/c/g<",
        "Le/a/a/a/a/c/p;",
        ">;",
        "Le/a/a/a/a/c/m;",
        "Le/a/a/a/a/c/p;",
        "Le/a/a/a/a/c/f;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Le/a/a/a/a/c/l;->a(Ljava/lang/Object;)Le/a/a/a/a/c/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/a/a/c/l;->a:Ljava/lang/Object;

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

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    invoke-virtual {p0, p1}, Le/a/a/a/a/c/l;->a(Ljava/lang/Object;)Le/a/a/a/a/c/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/a/a/c/l;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Le/a/a/a/a/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Le/a/a/a/a/c/g<",
            "Le/a/a/a/a/c/p;",
            ">;:",
            "Le/a/a/a/a/c/m;",
            ":",
            "Le/a/a/a/a/c/p;",
            ">()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Le/a/a/a/a/c/l;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/a/a/c/g;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Le/a/a/a/a/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Le/a/a/a/a/c/g<",
            "Le/a/a/a/a/c/p;",
            ">;:",
            "Le/a/a/a/a/c/m;",
            ":",
            "Le/a/a/a/a/c/p;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Le/a/a/a/a/c/n;->isProperDelegate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Le/a/a/a/a/c/g;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Le/a/a/a/a/c/n;

    invoke-direct {p1}, Le/a/a/a/a/c/n;-><init>()V

    return-object p1
.end method

.method public a(Le/a/a/a/a/c/p;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/l;->a()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/g;

    invoke-interface {v0, p1}, Le/a/a/a/a/c/g;->addDependency(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addDependency(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/a/a/c/p;

    invoke-virtual {p0, p1}, Le/a/a/a/a/c/l;->a(Le/a/a/a/a/c/p;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/l;->a()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/g;

    invoke-interface {v0}, Le/a/a/a/a/c/g;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/l;->a()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getDependencies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Le/a/a/a/a/c/p;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/l;->a()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/g;

    invoke-interface {v0}, Le/a/a/a/a/c/g;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/l;->a()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    invoke-interface {v0}, Le/a/a/a/a/c/m;->getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/l;->a()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/p;

    invoke-interface {v0}, Le/a/a/a/a/c/p;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/l;->a()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/p;

    invoke-interface {v0, p1}, Le/a/a/a/a/c/p;->setError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setFinished(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/l;->a()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/p;

    invoke-interface {v0, p1}, Le/a/a/a/a/c/p;->setFinished(Z)V

    return-void
.end method
