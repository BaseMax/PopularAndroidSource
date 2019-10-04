.class public Le/a/a/a/k;
.super Le/a/a/a/a/c/j;
.source "InitializationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/a/a/a/c/j<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field public final p:Le/a/a/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a/a/l<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/a/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/a/l<",
            "TResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/a/a/a/c/j;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/a/k;->p:Le/a/a/a/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Le/a/a/a/a/b/C;
    .locals 3

    .line 6
    new-instance v0, Le/a/a/a/a/b/C;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/a/a/a/k;->p:Le/a/a/a/l;

    .line 7
    invoke-virtual {v2}, Le/a/a/a/l;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KitInitialization"

    invoke-direct {v0, p1, v1}, Le/a/a/a/a/b/C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Le/a/a/a/a/b/C;->b()V

    return-object v0
.end method

.method public bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Le/a/a/a/k;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    const-string p1, "doInBackground"

    .line 2
    invoke-virtual {p0, p1}, Le/a/a/a/k;->a(Ljava/lang/String;)Le/a/a/a/a/b/C;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/a/a/k;->p:Le/a/a/a/l;

    invoke-virtual {v0}, Le/a/a/a/l;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Le/a/a/a/a/b/C;->c()V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/a/k;->p:Le/a/a/a/l;

    invoke-virtual {v0, p1}, Le/a/a/a/l;->onCancelled(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Le/a/a/a/k;->p:Le/a/a/a/l;

    invoke-virtual {v0}, Le/a/a/a/l;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Initialization was cancelled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lio/fabric/sdk/android/InitializationException;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/InitializationException;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/a/a/k;->p:Le/a/a/a/l;

    iget-object p1, p1, Le/a/a/a/l;->initializationCallback:Le/a/a/a/j;

    invoke-interface {p1, v0}, Le/a/a/a/j;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    invoke-super {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->c()V

    const-string v0, "onPreExecute"

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/a/k;->a(Ljava/lang/String;)Le/a/a/a/a/b/C;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Le/a/a/a/k;->p:Le/a/a/a/l;

    invoke-virtual {v2}, Le/a/a/a/l;->onPreExecute()Z

    move-result v2
    :try_end_0
    .catch Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Le/a/a/a/a/b/C;->c()V

    if-nez v2, :cond_0

    .line 5
    :goto_0
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->a(Z)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 6
    :try_start_1
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Failure onPreExecute()"

    invoke-interface {v3, v4, v5, v2}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-virtual {v0}, Le/a/a/a/a/b/C;->c()V

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v2

    .line 8
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_2
    invoke-virtual {v0}, Le/a/a/a/a/b/C;->c()V

    .line 10
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->a(Z)Z

    .line 11
    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Le/a/a/a/k;->p:Le/a/a/a/l;

    invoke-virtual {v0, p1}, Le/a/a/a/l;->onPostExecute(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Le/a/a/a/k;->p:Le/a/a/a/l;

    iget-object v0, v0, Le/a/a/a/l;->initializationCallback:Le/a/a/a/j;

    invoke-interface {v0, p1}, Le/a/a/a/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .locals 1

    .line 1
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/Priority;->HIGH:Lio/fabric/sdk/android/services/concurrency/Priority;

    return-object v0
.end method
