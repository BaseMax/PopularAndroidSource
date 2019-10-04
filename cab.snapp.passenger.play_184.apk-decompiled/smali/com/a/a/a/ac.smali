.class final Lcom/a/a/a/ac;
.super Lio/fabric/sdk/android/services/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/b/b<",
        "Lcom/a/a/a/ag;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lio/fabric/sdk/android/services/settings/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/a/a/a/ai;Lio/fabric/sdk/android/services/common/k;Lio/fabric/sdk/android/services/b/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 30
    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/b/b;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/b/a;Lio/fabric/sdk/android/services/common/k;Lio/fabric/sdk/android/services/b/c;I)V

    return-void
.end method


# virtual methods
.method public final generateUniqueRollOverFileName()Ljava/lang/String;
    .locals 4

    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sa_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/a/a/ac;->d:Lio/fabric/sdk/android/services/common/k;

    .line 42
    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/k;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".tap"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxByteSizePerFile()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/a/a/a/ac;->a:Lio/fabric/sdk/android/services/settings/b;

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0}, Lio/fabric/sdk/android/services/b/b;->getMaxByteSizePerFile()I

    move-result v0

    return v0

    :cond_0
    iget v0, v0, Lio/fabric/sdk/android/services/settings/b;->maxByteSizePerFile:I

    return v0
.end method

.method public final getMaxFilesToKeep()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/a/a/a/ac;->a:Lio/fabric/sdk/android/services/settings/b;

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0}, Lio/fabric/sdk/android/services/b/b;->getMaxFilesToKeep()I

    move-result v0

    return v0

    :cond_0
    iget v0, v0, Lio/fabric/sdk/android/services/settings/b;->maxPendingSendFileCount:I

    return v0
.end method
