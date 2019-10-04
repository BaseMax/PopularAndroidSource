.class final Lcom/a/a/c/ag$e;
.super Lio/fabric/sdk/android/services/common/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/ag;

.field private final b:F

.field private final c:Lcom/a/a/c/ag$d;


# direct methods
.method constructor <init>(Lcom/a/a/c/ag;FLcom/a/a/c/ag$d;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/a/a/c/ag$e;->a:Lcom/a/a/c/ag;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/h;-><init>()V

    .line 166
    iput p2, p0, Lcom/a/a/c/ag$e;->b:F

    .line 167
    iput-object p3, p0, Lcom/a/a/c/ag$e;->c:Lcom/a/a/c/ag$d;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 8

    const-string v0, "CrashlyticsCore"

    .line 1183
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting report processing in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/a/a/c/ag$e;->b:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " second(s)..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget v1, p0, Lcom/a/a/c/ag$e;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1188
    :try_start_1
    iget v1, p0, Lcom/a/a/c/ag$e;->b:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1190
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_4

    .line 1195
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/a/a/c/ag$e;->a:Lcom/a/a/c/ag;

    invoke-virtual {v1}, Lcom/a/a/c/ag;->a()Ljava/util/List;

    move-result-object v1

    .line 1197
    iget-object v2, p0, Lcom/a/a/c/ag$e;->a:Lcom/a/a/c/ag;

    invoke-static {v2}, Lcom/a/a/c/ag;->b(Lcom/a/a/c/ag;)Lcom/a/a/c/ag$b;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/c/ag$b;->isHandlingException()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1202
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/a/a/c/ag$e;->c:Lcom/a/a/c/ag$d;

    invoke-interface {v2}, Lcom/a/a/c/ag$d;->canSendReports()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1204
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "User declined to send. Removing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1205
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Report(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1204
    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/c/af;

    .line 1207
    invoke-interface {v2}, Lcom/a/a/c/af;->remove()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1213
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1214
    iget-object v3, p0, Lcom/a/a/c/ag$e;->a:Lcom/a/a/c/ag;

    invoke-static {v3}, Lcom/a/a/c/ag;->b(Lcom/a/a/c/ag;)Lcom/a/a/c/ag$b;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/c/ag$b;->isHandlingException()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1227
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempting to send "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " report(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/c/af;

    .line 1230
    iget-object v4, p0, Lcom/a/a/c/ag$e;->a:Lcom/a/a/c/ag;

    invoke-virtual {v4, v3}, Lcom/a/a/c/ag;->a(Lcom/a/a/c/af;)Z

    goto :goto_3

    .line 1234
    :cond_3
    iget-object v1, p0, Lcom/a/a/c/ag$e;->a:Lcom/a/a/c/ag;

    invoke-virtual {v1}, Lcom/a/a/c/ag;->a()Ljava/util/List;

    move-result-object v1

    .line 1235
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1236
    invoke-static {}, Lcom/a/a/c/ag;->b()[S

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 1237
    invoke-static {}, Lcom/a/a/c/ag;->b()[S

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    .line 1236
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget-short v2, v3, v2

    int-to-long v2, v2

    .line 1238
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Report submisson: scheduling delayed retry in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v5, 0x3e8

    mul-long v2, v2, v5

    .line 1242
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v2, v4

    goto/16 :goto_2

    .line 1244
    :catch_1
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 175
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v2, v0, v3, v1}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/a/a/c/ag$e;->a:Lcom/a/a/c/ag;

    invoke-static {v0}, Lcom/a/a/c/ag;->a(Lcom/a/a/c/ag;)Ljava/lang/Thread;

    return-void
.end method
