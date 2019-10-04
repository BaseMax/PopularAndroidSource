.class public final Lcom/farsitel/bazaar/common/model/page/ListItem$App;
.super Lcom/farsitel/bazaar/common/model/page/ListItem;
.source "PageType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/page/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "App"
.end annotation


# instance fields
.field public final app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

.field public final hasDetail:Z

.field public final showMoreMenu:Z

.field public final viewType:I


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZ)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/common/model/page/ListItem;-><init>(Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    iput-boolean p2, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->hasDetail:Z

    iput-boolean p3, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->showMoreMenu:Z

    .line 2
    iget-boolean p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->hasDetail:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_APP_MINI:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZILh/f/b/f;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;-><init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/page/ListItem$App;Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/page/ListItem$App;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->hasDetail:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->showMoreMenu:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->copy(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZ)Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/farsitel/bazaar/common/model/page/PageAppItem;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->hasDetail:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->showMoreMenu:Z

    return v0
.end method

.method public final copy(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZ)Lcom/farsitel/bazaar/common/model/page/ListItem$App;
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    invoke-direct {v0, p1, p2, p3}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;-><init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->hasDetail:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->hasDetail:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->showMoreMenu:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->showMoreMenu:Z

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    return-object v0
.end method

.method public final getHasDetail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->hasDetail:Z

    return v0
.end method

.method public final getShowMoreMenu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->showMoreMenu:Z

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->hasDetail:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->showMoreMenu:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App(app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->hasDetail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showMoreMenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->showMoreMenu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
