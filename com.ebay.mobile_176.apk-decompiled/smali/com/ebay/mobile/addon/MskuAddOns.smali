.class public Lcom/ebay/mobile/addon/MskuAddOns;
.super Ljava/lang/Object;
.source "MskuAddOns.java"


# instance fields
.field private addOnTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAvailableAddOns:Lcom/ebay/mobile/addon/AvailableAddons;

.field private mskuAddOnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ebay/mobile/addon/AvailableAddons;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;",
            ">;",
            "Lcom/ebay/mobile/addon/AvailableAddons;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ebay/mobile/addon/MskuAddOns;->addOnTypes:Ljava/util/List;

    .line 26
    invoke-direct {p0, p1}, Lcom/ebay/mobile/addon/MskuAddOns;->getMskuAddOnMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/addon/MskuAddOns;->mskuAddOnMap:Ljava/util/Map;

    .line 27
    iput-object p2, p0, Lcom/ebay/mobile/addon/MskuAddOns;->defaultAvailableAddOns:Lcom/ebay/mobile/addon/AvailableAddons;

    return-void
.end method

.method private getAddOnItemFromId(Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;Ljava/lang/String;)Lcom/ebay/mobile/AddOnItem;
    .locals 3

    .line 94
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;

    .line 96
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->addOnId:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-static {p1, v1}, Lcom/ebay/mobile/addon/AddOnUtil;->convertToAddonItem(Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;)Lcom/ebay/mobile/AddOnItem;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getMskuAddOnMap(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 38
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;

    .line 41
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOnsForVariations:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 43
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOnsForVariations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnsForVariations;

    .line 45
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnsForVariations;->variationId:Ljava/lang/String;

    .line 46
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_2

    .line 49
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_2
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->type:Ljava/lang/String;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnsForVariations;->addOnIds:Ljava/util/List;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getAvailableAddOnsForVariation(Ljava/lang/String;)Lcom/ebay/mobile/addon/AvailableAddons;
    .locals 5

    .line 66
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/ebay/mobile/addon/MskuAddOns;->defaultAvailableAddOns:Lcom/ebay/mobile/addon/AvailableAddons;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/ebay/mobile/addon/MskuAddOns;->mskuAddOnMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/mobile/addon/MskuAddOns;->mskuAddOnMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    new-instance v0, Lcom/ebay/mobile/addon/AvailableAddons;

    invoke-direct {v0}, Lcom/ebay/mobile/addon/AvailableAddons;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/ebay/mobile/addon/MskuAddOns;->mskuAddOnMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/ebay/mobile/addon/MskuAddOns;->addOnTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;

    .line 77
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->type:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 78
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 80
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-direct {p0, v2, v3}, Lcom/ebay/mobile/addon/MskuAddOns;->getAddOnItemFromId(Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;Ljava/lang/String;)Lcom/ebay/mobile/AddOnItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/addon/AvailableAddons;->addAddon(Lcom/ebay/mobile/AddOnItem;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method
