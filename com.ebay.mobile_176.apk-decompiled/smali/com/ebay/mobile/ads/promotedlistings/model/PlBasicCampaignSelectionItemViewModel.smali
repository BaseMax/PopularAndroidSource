.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/SimpleLabelViewModel;
.source "PlBasicCampaignSelectionItemViewModel.java"


# instance fields
.field private final field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Field<",
            "*>;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/field/Field;)V
    .locals 2
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/Field;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Field<",
            "*>;)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    const v1, 0x7f0d0335

    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/SimpleLabelViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    .line 22
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    .line 23
    iput-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->currentCampaignId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getParamValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onItemClick()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->currentCampaignName:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getParamValue()Ljava/lang/Object;

    move-result-object v0

    .line 30
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->currentCampaignId:Ljava/lang/String;

    :cond_0
    return-void
.end method
