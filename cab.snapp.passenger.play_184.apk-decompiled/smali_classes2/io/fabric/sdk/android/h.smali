.class public final Lio/fabric/sdk/android/h;
.super Lio/fabric/sdk/android/services/concurrency/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/d<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final a:Lio/fabric/sdk/android/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/i<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/i<",
            "TResult;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/d;-><init>()V

    .line 34
    iput-object p1, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    return-void
.end method

.method private a(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/r;
    .locals 3

    .line 91
    new-instance v0, Lio/fabric/sdk/android/services/common/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    .line 92
    invoke-virtual {v2}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KitInitialization"

    invoke-direct {v0, p1, v1}, Lio/fabric/sdk/android/services/common/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/r;->startMeasuring()V

    return-object v0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string p1, "doInBackground"

    .line 1060
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/h;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/r;

    move-result-object p1

    .line 1062
    invoke-virtual {p0}, Lio/fabric/sdk/android/h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    invoke-virtual {v0}, Lio/fabric/sdk/android/i;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1066
    :goto_0
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/r;->stopMeasuring()V

    return-object v0
.end method

.method public final getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .locals 1

    .line 87
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/Priority;->HIGH:Lio/fabric/sdk/android/services/concurrency/Priority;

    return-object v0
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    invoke-virtual {v0}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Initialization was cancelled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance v0, Lio/fabric/sdk/android/g;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/g;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    iget-object p1, p1, Lio/fabric/sdk/android/i;->f:Lio/fabric/sdk/android/f;

    invoke-interface {p1, v0}, Lio/fabric/sdk/android/f;->failure(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    iget-object v0, v0, Lio/fabric/sdk/android/i;->f:Lio/fabric/sdk/android/f;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/f;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 6

    .line 39
    invoke-super {p0}, Lio/fabric/sdk/android/services/concurrency/d;->onPreExecute()V

    const-string v0, "onPreExecute"

    .line 41
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/h;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/r;

    move-result-object v0

    const/4 v1, 0x1

    .line 44
    :try_start_0
    iget-object v2, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    invoke-virtual {v2}, Lio/fabric/sdk/android/i;->onPreExecute()Z

    move-result v2
    :try_end_0
    .catch Lio/fabric/sdk/android/services/concurrency/k; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/r;->stopMeasuring()V

    if-nez v2, :cond_0

    .line 53
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/h;->cancel(Z)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 49
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Failure onPreExecute()"

    invoke-interface {v3, v4, v5, v2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/r;->stopMeasuring()V

    .line 53
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/h;->cancel(Z)Z

    return-void

    :catch_1
    move-exception v2

    .line 47
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :goto_0
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/r;->stopMeasuring()V

    .line 53
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/h;->cancel(Z)Z

    throw v2
.end method
