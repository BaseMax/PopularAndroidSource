.class public final Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;
.super Ljava/lang/Object;
.source "SubmitVideoDownload.kt"


# instance fields
.field public final keepDownloadedFile:Z

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->keepDownloadedFile:Z

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;ZLjava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->keepDownloadedFile:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->message:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->copy(ZLjava/lang/String;)Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->keepDownloadedFile:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;)Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->keepDownloadedFile:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->keepDownloadedFile:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->message:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getKeepDownloadedFile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->keepDownloadedFile:Z

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->keepDownloadedFile:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubmitVideoDownload(keepDownloadedFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->keepDownloadedFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
