.class public final Lcom/farsitel/bazaar/common/model/page/ListItem$Video;
.super Lcom/farsitel/bazaar/common/model/page/ListItem;
.source "PageType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/page/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation


# instance fields
.field public final showActionButton:Z

.field public final video:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

.field public final viewType:I


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;Z)V
    .locals 1

    const-string v0, "video"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/common/model/page/ListItem;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->video:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    iput-boolean p2, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->showActionButton:Z

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_VIDEO:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;ZILh/f/b/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;-><init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/page/ListItem$Video;Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;ZILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/page/ListItem$Video;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->video:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->showActionButton:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->copy(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;Z)Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->video:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->showActionButton:Z

    return v0
.end method

.method public final copy(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;Z)Lcom/farsitel/bazaar/common/model/page/ListItem$Video;
    .locals 1

    const-string v0, "video"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;-><init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->video:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->video:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->showActionButton:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->showActionButton:Z

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

.method public final getShowActionButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->showActionButton:Z

    return v0
.end method

.method public final getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->video:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->video:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->showActionButton:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video(video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->video:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showActionButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->showActionButton:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
