.class public final Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;
.super Ljava/lang/Object;
.source "PropertiesResponseDto.kt"


# instance fields
.field public final properties:Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;
    .annotation runtime Lc/e/d/a/c;
        value = "properties"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;-><init>(Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;ILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->properties:Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;ILh/f/b/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;-><init>(Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;ILjava/lang/Object;)Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->properties:Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->copy(Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;)Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->properties:Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    return-object v0
.end method

.method public final copy(Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;)Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;-><init>(Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->properties:Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    iget-object p1, p1, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->properties:Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

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

.method public final getProperties()Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->properties:Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->properties:Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;->hashCode()I

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

    const-string v1, "ErrorResponseDto(properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->properties:Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
