.class public final Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;
.super Ljava/lang/Object;
.source "VideoDetail.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;ILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;ILh/f/b/f;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->copy(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;)Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/farsitel/bazaar/common/model/ShortInfo;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;)Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

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

.method public final getShortInfo()Lcom/farsitel/bazaar/common/model/ShortInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/ShortInfo;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayedVideoDetails(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shortInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->shortInfo:Lcom/farsitel/bazaar/common/model/ShortInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
