.class public Lcom/ebay/mobile/AddOnItem;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "AddOnItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/AddOnItem$AddOnKind;,
        Lcom/ebay/mobile/AddOnItem$AddOnType;
    }
.end annotation


# instance fields
.field public addOnAppliedTo:Ljava/lang/String;

.field public addOnItemTitle:Ljava/lang/String;

.field public descriptionTitle:Ljava/lang/String;

.field public descriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/addon/AddOnItemDescription;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public learnMoreLink:Ljava/lang/String;

.field public postalCode:Ljava/lang/String;

.field public price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public provider:Ljava/lang/String;

.field public purchaseLimit:I

.field public type:Lcom/ebay/mobile/AddOnItem$AddOnType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    check-cast p1, Lcom/ebay/mobile/AddOnItem;

    .line 72
    iget-object v2, p0, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
