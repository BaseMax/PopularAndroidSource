.class public final Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;
.super Ljava/lang/Object;
.source "GetInlineAppInfoRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.getInlineAppInfoRequest"
.end annotation


# instance fields
.field public final kashanId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "kashanId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "kashanId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;->kashanId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;->kashanId:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;->copy(Ljava/lang/String;)Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;->kashanId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;
    .locals 1

    const-string v0, "kashanId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;->kashanId:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;->kashanId:Ljava/lang/String;

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

.method public final getKashanId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;->kashanId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;->kashanId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetInlineAppInfoRequestDto(kashanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;->kashanId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method