.class public final Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;
.super Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;
.source "PageType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "App"
.end annotation


# instance fields
.field public final hami:Lcom/farsitel/bazaar/common/model/page/HamiItem;

.field public final referrer:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/HamiItem;Ljava/lang/String;)V
    .locals 1

    const-string v0, "hami"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/HamiItem;Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->hami:Lcom/farsitel/bazaar/common/model/page/HamiItem;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->referrer:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_HAMI_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->viewType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/HamiItem;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getTitle()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getReferrer()Ljava/lang/String;

    move-result-object p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->copy(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/HamiItem;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/farsitel/bazaar/common/model/page/HamiItem;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getReferrer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/HamiItem;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;
    .locals 1

    const-string v0, "hami"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;

    invoke-direct {v0, p1, p2, p3}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/HamiItem;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getReferrer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getReferrer()Ljava/lang/String;

    move-result-object p1

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

.method public getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->hami:Lcom/farsitel/bazaar/common/model/page/HamiItem;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getTitle()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getReferrer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hami="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami$App;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
