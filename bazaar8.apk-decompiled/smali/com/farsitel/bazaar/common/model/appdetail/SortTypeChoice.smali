.class public final Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;
.super Ljava/lang/Object;
.source "AppDetail.kt"


# instance fields
.field public final identifier:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->title:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->identifier:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->title:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;

    invoke-direct {v0, p1, p2}, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->identifier:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->identifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->title:Ljava/lang/String;

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

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toSortTypeChoiceItem()Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoiceItem;
    .locals 3

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoiceItem;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SortTypeChoice(identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method