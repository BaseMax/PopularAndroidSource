.class public Lcom/ebay/common/model/EbaySuggestedCategory;
.super Ljava/lang/Object;
.source "EbaySuggestedCategory.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/api/experience/prelist/CatalogCategory;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/domain/net/api/experience/prelist/CatalogCategory;",
        "Ljava/lang/Comparable<",
        "Lcom/ebay/common/model/EbaySuggestedCategory;",
        ">;"
    }
.end annotation


# instance fields
.field public id:J

.field public name:Ljava/lang/String;

.field public parentIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public parentNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public percentItemFound:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->parentIds:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->parentNames:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ebay/common/model/EbaySuggestedCategory;)I
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/ebay/common/model/EbaySuggestedCategory;->getCategoryNamePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ebay/common/model/EbaySuggestedCategory;->getCategoryNamePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/ebay/common/model/EbaySuggestedCategory;

    invoke-virtual {p0, p1}, Lcom/ebay/common/model/EbaySuggestedCategory;->compareTo(Lcom/ebay/common/model/EbaySuggestedCategory;)I

    move-result p1

    return p1
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryIdPath()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->parentIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_0
    iget-wide v1, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryNamePath()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->parentNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPathDisplayFromL2()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/ebay/common/model/EbaySuggestedCategory;->getPathDisplayFromLevel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathDisplayFromLevel(I)Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->parentNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->parentNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/model/EbaySuggestedCategory;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ebay/common/model/EbaySuggestedCategory;->name:Ljava/lang/String;

    return-object v0
.end method
