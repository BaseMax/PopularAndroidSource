.class public Lcom/ebay/mobile/addon/MskuAddOnUtil;
.super Ljava/lang/Object;
.source "MskuAddOnUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static renderMskuAddOnBox(Lcom/ebay/mobile/viewitem/fragments/ViewItemBaseFragment;Lcom/ebay/mobile/Item;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    invoke-virtual {v0}, Lcom/ebay/mobile/addon/SelectedAddOns;->removeAll()V

    .line 22
    :cond_1
    iget-object v0, p1, Lcom/ebay/mobile/Item;->mskuAddOns:Lcom/ebay/mobile/addon/MskuAddOns;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/Item;->getVariationId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p1, Lcom/ebay/mobile/Item;->mskuAddOns:Lcom/ebay/mobile/addon/MskuAddOns;

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/addon/MskuAddOns;->getAvailableAddOnsForVariation(Ljava/lang/String;)Lcom/ebay/mobile/addon/AvailableAddons;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/mobile/Item;->availableAddons:Lcom/ebay/mobile/addon/AvailableAddons;

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/viewitem/fragments/ViewItemBaseFragment;->render(Lcom/ebay/mobile/Item;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
