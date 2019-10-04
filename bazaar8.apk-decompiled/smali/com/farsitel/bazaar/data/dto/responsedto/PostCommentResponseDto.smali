.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;
.super Ljava/lang/Object;
.source "PostCommentResponseDto.kt"


# instance fields
.field public final result:Z
    .annotation runtime Lc/e/d/a/c;
        value = "result"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;->result:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;ZILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;->result:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;->copy(Z)Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;->result:Z

    return v0
.end method

.method public final copy(Z)Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;->result:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;->result:Z

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;->result:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;->result:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostCommentResponseDto(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
