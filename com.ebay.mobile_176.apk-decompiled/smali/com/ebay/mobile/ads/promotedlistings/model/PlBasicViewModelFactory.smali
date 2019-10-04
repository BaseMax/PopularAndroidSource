.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;
.super Ljava/lang/Object;
.source "PlBasicViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 166
    new-instance p3, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;

    new-instance p4, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->adRateValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;

    invoke-direct {v1}, Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;-><init>()V

    invoke-direct {p4, v0, v1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;)V

    invoke-direct {p3, p1, p2, p4}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;)V

    return-object p3
.end method

.method private createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 222
    sget-object p4, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->PL_BASIC_TRENDING_RATE:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p3, p4}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0d033f

    goto :goto_0

    :cond_0
    const p3, 0x7f0d0334

    .line 227
    :goto_0
    new-instance p4, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;

    invoke-direct {p4, p1, p2, p3}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBannerViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;I)V

    return-object p4
.end method

.method private createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicCampaignSelectionGroupModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicCampaignSelectionGroupModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    new-instance p4, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicCampaignSelectionGroupModule;->getGroup()Lcom/ebay/nautilus/domain/data/experience/type/field/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getSubHeading()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    const v1, 0x7f0d033d

    invoke-direct {p4, v0, v1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicCampaignSelectionGroupModule;->getGroup()Lcom/ebay/nautilus/domain/data/experience/type/field/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Group;->getEntries()Ljava/util/List;

    move-result-object p1

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    .line 207
    new-instance v0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;

    invoke-direct {v0, p2, p4}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCampaignSelectionItemViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/field/Field;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_0
    new-instance p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    sget p2, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST_CARD:I

    .line 210
    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    return-object p1
.end method

.method private createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicErrorModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicErrorModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 193
    new-instance p2, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicErrorModule;->getError()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    const p3, 0x7f0d0337

    invoke-direct {p2, p1, p3}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    return-object p2
.end method

.method private createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 178
    new-instance p3, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;

    new-instance v4, Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;

    invoke-direct {v4}, Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;-><init>()V

    new-instance v5, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

    invoke-direct {v5, p2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)V

    const v3, 0x7f0d0339

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;ILcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;)V

    return-object p3
.end method

.method private createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    new-instance p3, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;

    invoke-direct {p3, p1, p2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)V

    return-object p3
.end method

.method private createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    new-instance p4, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

    invoke-direct {p4, p2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)V

    .line 114
    new-instance v0, Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;

    invoke-direct {v0}, Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;-><init>()V

    .line 116
    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;

    invoke-direct {v1, p1, p2, v0, p4}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;)V

    .line 118
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->PL_BASIC_AD_RATE:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p3, p1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    new-instance p1, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->adRateValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    new-instance p3, Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;

    invoke-direct {p3}, Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;-><init>()V

    invoke-direct {p1, p2, p3}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;)V

    .line 123
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->setValidator(Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;)V

    :cond_0
    return-object v1
.end method

.method private createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicUserActionModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicUserActionModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance p4, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicUserActionModule;->getLegal()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    const v1, 0x7f0d033e

    invoke-direct {p4, v0, v1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance p4, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->adRateValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;

    invoke-direct {v1}, Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;-><init>()V

    invoke-direct {p4, v0, v1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;)V

    .line 148
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicUserActionModule;->getButtons()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 150
    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;

    invoke-direct {v1, v0, p4, p2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    new-instance p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    sget p2, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST_CARD:I

    .line 154
    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    return-object p1
.end method

.method private createViewModel(Lcom/ebay/nautilus/domain/data/experience/type/module/TitledModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/module/TitledModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/module/TitledModule;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/module/TitledModule;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    const v1, 0x7f0d033d

    invoke-direct {v0, p1, v1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSimpleLabelViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public createViewModel(Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "moduleEntry must not be null"

    .line 46
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ads data must not be null"

    .line 47
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 50
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/AdsServiceMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/ads/AdsServiceMeta;->plBasicMetadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    if-eqz v1, :cond_0

    .line 51
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/ads/AdsServiceMeta;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/ads/AdsServiceMeta;->plBasicMetadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 52
    :goto_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->getModule()Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    .line 54
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/type/module/TitledModule;

    if-eqz v2, :cond_1

    .line 55
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/module/TitledModule;

    invoke-direct {p0, v1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/type/module/TitledModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;

    if-eqz v2, :cond_2

    .line 58
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->getUxComponentType()Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    move-result-object v0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicBannerModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    return-object p1

    .line 61
    :cond_2
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;

    if-eqz v2, :cond_3

    .line 62
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->getUxComponentType()Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    move-result-object v0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    return-object p1

    .line 65
    :cond_3
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;

    if-eqz v2, :cond_4

    .line 66
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->getUxComponentType()Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    move-result-object v0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    return-object p1

    .line 69
    :cond_4
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicUserActionModule;

    if-eqz v2, :cond_5

    .line 70
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicUserActionModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->getUxComponentType()Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    move-result-object v0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicUserActionModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    return-object p1

    .line 73
    :cond_5
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicErrorModule;

    if-eqz v2, :cond_6

    .line 74
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicErrorModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->getUxComponentType()Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    move-result-object v0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicErrorModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    return-object p1

    .line 77
    :cond_6
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;

    if-eqz v2, :cond_7

    .line 78
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->getUxComponentType()Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    move-result-object v0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    return-object p1

    .line 81
    :cond_7
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;

    if-eqz v2, :cond_8

    .line 82
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->getUxComponentType()Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    move-result-object v0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    return-object p1

    .line 85
    :cond_8
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicCampaignSelectionGroupModule;

    if-eqz v2, :cond_9

    .line 86
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicCampaignSelectionGroupModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->getUxComponentType()Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    move-result-object v0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicCampaignSelectionGroupModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v0
.end method
