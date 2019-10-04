.class public final Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;
.super Lcom/farsitel/bazaar/data/entity/ErrorModel;
.source "ErrorModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/entity/ErrorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Http"
.end annotation


# instance fields
.field public final errorCode:Lcom/farsitel/bazaar/data/entity/ErrorCode;

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ErrorCode;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/farsitel/bazaar/data/entity/ErrorModel;-><init>(Ljava/lang/String;Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->errorCode:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ErrorCode;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->errorCode:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->copy(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ErrorCode;)Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/farsitel/bazaar/data/entity/ErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->errorCode:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ErrorCode;)Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ErrorCode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->errorCode:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->errorCode:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getErrorCode()Lcom/farsitel/bazaar/data/entity/ErrorCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->errorCode:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->errorCode:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;->errorCode:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
