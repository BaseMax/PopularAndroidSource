.class public abstract Le/a/a/a/a/c/j;
.super Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.source "PriorityAsyncTask.java"

# interfaces
.implements Le/a/a/a/a/c/g;
.implements Le/a/a/a/a/c/m;
.implements Le/a/a/a/a/c/p;
.implements Le/a/a/a/a/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/a/a/c/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/AsyncTask<",
        "TParams;TProgress;TResult;>;",
        "Le/a/a/a/a/c/g<",
        "Le/a/a/a/a/c/p;",
        ">;",
        "Le/a/a/a/a/c/m;",
        "Le/a/a/a/a/c/p;",
        "Le/a/a/a/a/c/f;"
    }
.end annotation


# instance fields
.field public final o:Le/a/a/a/a/c/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Le/a/a/a/a/c/n;

    invoke-direct {v0}, Le/a/a/a/a/c/n;-><init>()V

    iput-object v0, p0, Le/a/a/a/a/c/j;->o:Le/a/a/a/a/c/n;

    return-void
.end method


# virtual methods
.method public a(Le/a/a/a/a/c/p;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->a()Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->PENDING:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/a/a/a/c/j;->d()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/g;

    invoke-interface {v0, p1}, Le/a/a/a/a/c/g;->addDependency(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must not add Dependency after task is running"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/a/a/a/c/j$a;

    invoke-direct {v0, p1, p0}, Le/a/a/a/a/c/j$a;-><init>(Ljava/util/concurrent/Executor;Le/a/a/a/a/c/j;)V

    .line 2
    invoke-super {p0, v0, p2}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    return-void
.end method

.method public bridge synthetic addDependency(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/a/a/c/p;

    invoke-virtual {p0, p1}, Le/a/a/a/a/c/j;->a(Le/a/a/a/a/c/p;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/j;->d()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/g;

    invoke-interface {v0}, Le/a/a/a/a/c/g;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/concurrency/Priority;->a(Le/a/a/a/a/c/m;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public d()Le/a/a/a/a/c/g;
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

    .line 1
    iget-object v0, p0, Le/a/a/a/a/c/j;->o:Le/a/a/a/a/c/n;

    return-object v0
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
    invoke-virtual {p0}, Le/a/a/a/a/c/j;->d()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/g;

    invoke-interface {v0}, Le/a/a/a/a/c/g;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/j;->d()Le/a/a/a/a/c/g;

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
    invoke-virtual {p0}, Le/a/a/a/a/c/j;->d()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/p;

    invoke-interface {v0, p1}, Le/a/a/a/a/c/p;->setError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setFinished(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/a/a/c/j;->d()Le/a/a/a/a/c/g;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/c/m;

    check-cast v0, Le/a/a/a/a/c/p;

    invoke-interface {v0, p1}, Le/a/a/a/a/c/p;->setFinished(Z)V

    return-void
.end method
