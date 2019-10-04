.class public Lcom/ebay/mobile/browse/BrowseViewModelFactory;
.super Ljava/lang/Object;
.source "BrowseViewModelFactory.java"


# static fields
.field private static final SUPPORTED_UX_COMPONENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    .line 80
    new-array v0, v0, [Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->ITEMS_LIST_VERTICAL:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->ITEMS_GRID_SRP:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->CATEGORY_NAV_VERTICAL:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUERY_IMAGE_ANSWER_GRID:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->EVENT_BANNER_LISTING:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->PRODUCTS_EXPANSION:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUERY_IMAGE_MOTORS_GRID:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUICKBAR:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->EVENTS_TITLE_BANNER:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUICKSHOP_ITEMS_GALLERY:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->BROWSE_SELLER_HEADER:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->SAAS_STP_SPECIALS_CAROUSEL:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUICKSHOP_ITEMS_CAROUSEL:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUERY_IMAGE_EVENTS_GRID:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->SUPPORTED_UX_COMPONENTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAspectParamToSearchAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 2
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p0

    .line 305
    invoke-static {p0}, Lcom/ebay/mobile/search/SearchIntentMappingUtil;->convertIndividualActionParamAspectsToAspectList(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "aspect"

    .line 308
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static createBrowseSellerHeaderModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/browse/BrowseSellerHeaderModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/browse/BrowseSellerHeaderModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 938
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/browse/BrowseSellerHeaderModule;->geteBayPlusMessaging()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 943
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-nez v3, :cond_0

    .line 947
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    :cond_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, " "

    .line 952
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v5, " "

    .line 953
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    :cond_1
    invoke-static {p0, v4}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 957
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    move-object v5, v3

    goto :goto_1

    :cond_3
    move-object v2, v1

    move-object v5, v2

    :goto_1
    if-eqz v2, :cond_4

    .line 962
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v6, p0

    goto :goto_2

    :cond_4
    move-object v6, v1

    .line 966
    :goto_2
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/browse/BrowseSellerHeaderModule;->getSellerLogo()Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 969
    invoke-static {p0}, Lcom/ebay/mobile/util/ExperienceUtil;->getImageData(Lcom/ebay/nautilus/domain/data/experience/type/base/Image;)Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v1

    .line 970
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p0

    move-object v8, p0

    move-object v7, v1

    goto :goto_3

    :cond_5
    move-object v7, v1

    move-object v8, v7

    .line 972
    :goto_3
    new-instance p0, Lcom/ebay/mobile/browse/SellerHeaderViewModel;

    const v4, 0x7f0d0095

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/ebay/mobile/browse/SellerHeaderViewModel;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/image/ImageData;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    return-object p0
.end method

.method private static createCarouselViewModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 13
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 886
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object v0

    .line 887
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 890
    :cond_0
    sget v4, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_HORIZONTAL_LIST_CARD:I

    .line 892
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 894
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;

    .line 895
    instance-of v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    if-eqz v1, :cond_2

    .line 897
    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    .line 898
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v1

    .line 899
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 900
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 901
    instance-of v6, v3, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    if-eqz v6, :cond_1

    .line 902
    new-instance v6, Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    const v7, 0x7f0d008e

    invoke-direct {v6, v3, v7}, Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 906
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 909
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 912
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 913
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 916
    :cond_4
    invoke-virtual {v0, v7}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->addSliderControlTrackingToList(Ljava/util/List;)V

    .line 918
    new-instance v6, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;

    invoke-direct {v6, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;)V

    .line 920
    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;

    new-instance v1, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 925
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 928
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getModuleId()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    return-object v0
.end method

.method private static createEventTitleModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 13
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 789
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object v0

    .line 790
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 793
    :cond_0
    sget-object v1, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->DEFAULT:Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;

    invoke-static {v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->isWhiteBackground(Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_SINGLE_ITEM_CONTAINER:I

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_1
    sget v1, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_SINGLE_ITEM_CARD_NO_PADDING:I

    goto :goto_0

    .line 797
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 800
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;

    .line 801
    instance-of v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    if-eqz v1, :cond_3

    .line 803
    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    .line 804
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v1

    .line 805
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 806
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 807
    instance-of v6, v3, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    if-eqz v6, :cond_2

    .line 808
    new-instance v6, Lcom/ebay/mobile/events/EventsTitleBannerViewModel;

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/browse/events/EventTitleBannerCard;

    const v7, 0x7f0d0078

    invoke-direct {v6, v3, v7}, Lcom/ebay/mobile/events/EventsTitleBannerViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/browse/events/EventTitleBannerCard;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 812
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 815
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 818
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 819
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 822
    :cond_5
    invoke-virtual {v0, v7}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->addSliderControlTrackingToList(Ljava/util/List;)V

    .line 824
    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;

    const/4 v6, 0x0

    new-instance v1, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 829
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 832
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getModuleId()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    return-object v0
.end method

.method private static createEventsHubModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 14
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 842
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object v0

    .line 843
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 845
    :cond_0
    sget v4, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_GRID_LIST_CARD:I

    .line 846
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 848
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;

    .line 849
    instance-of v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    if-eqz v1, :cond_2

    .line 851
    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    .line 852
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v1

    .line 853
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 854
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 855
    instance-of v6, v3, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    if-eqz v6, :cond_1

    .line 856
    new-instance v6, Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    const v7, 0x7f0d053d

    invoke-direct {v6, v3, v7}, Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 859
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 862
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 864
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 865
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 867
    :cond_4
    invoke-virtual {v0, v7}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->addSliderControlTrackingToList(Ljava/util/List;)V

    .line 868
    new-instance v1, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;

    new-instance v6, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;

    invoke-direct {v6, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;)V

    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 873
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 876
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getModuleId()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    move-object v3, v1

    move v13, p1

    invoke-direct/range {v3 .. v13}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;I)V

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method private static createQuickBarModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 7
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 738
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object v0

    .line 739
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 742
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 745
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;

    .line 746
    instance-of v4, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    if-eqz v4, :cond_3

    .line 748
    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    .line 749
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v0

    .line 750
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 755
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 757
    instance-of v6, v5, Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;

    if-eqz v6, :cond_1

    .line 759
    new-instance v6, Lcom/ebay/mobile/browse/QuickbarLinkCardViewModel;

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;

    invoke-direct {v6, v5}, Lcom/ebay/mobile/browse/QuickbarLinkCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/browse/QuickBarLinkCard;)V

    .line 760
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-virtual {v6}, Lcom/ebay/mobile/browse/QuickbarLinkCardViewModel;->isLastSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 772
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 775
    new-instance v2, Lcom/ebay/mobile/browse/QuickbarContainerViewModel;

    .line 778
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 779
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v4}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object p0

    invoke-direct {v2, v1, v3, v0, p0}, Lcom/ebay/mobile/browse/QuickbarContainerViewModel;-><init>(Ljava/util/List;ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;)V

    :cond_4
    return-object v2
.end method

.method private static createTopProductsViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 18
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 584
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object v0

    .line 589
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 592
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 595
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;

    .line 596
    instance-of v3, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    if-eqz v3, :cond_2

    .line 598
    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    .line 599
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v3

    .line 600
    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 603
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 605
    instance-of v6, v5, Lcom/ebay/nautilus/domain/data/experience/type/product/ProductCard;

    if-eqz v6, :cond_1

    .line 609
    new-instance v6, Lcom/ebay/mobile/product/topproducts/TopProductCardViewModel;

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/type/product/ProductCard;

    const v7, 0x7f0d0097

    invoke-direct {v6, v5, v7, v1}, Lcom/ebay/mobile/product/topproducts/TopProductCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/product/ProductCard;IZ)V

    .line 610
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 617
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 622
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b001c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 625
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getControls()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 628
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v2

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ICardNavigationControls;

    .line 630
    instance-of v7, v6, Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ExpandCollapseControls;

    if-eqz v7, :cond_4

    .line 634
    check-cast v6, Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ExpandCollapseControls;

    .line 635
    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ExpandCollapseControls;->getCollapsedCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v11, v8, :cond_5

    mul-int/lit8 v7, v11, 0x2

    :cond_5
    if-ge v7, v1, :cond_4

    .line 640
    new-instance v2, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    invoke-direct {v2, v7}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;-><init>(I)V

    .line 641
    new-instance v5, Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModel;

    const v13, 0x7f0d0114

    .line 643
    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ExpandCollapseControls;->getShowMore()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v15

    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ExpandCollapseControls;->getShowLess()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v16

    const/16 v17, 0x0

    move-object v12, v5

    move-object v14, v2

    invoke-direct/range {v12 .. v17}, Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModel;-><init>(ILcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Ljava/util/List;)V

    goto :goto_1

    :cond_6
    move-object v8, v2

    move-object v9, v5

    goto :goto_2

    :cond_7
    move-object v8, v2

    move-object v9, v8

    .line 650
    :goto_2
    new-instance v1, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;

    new-instance v5, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;

    invoke-direct {v5, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;)V

    .line 653
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v6

    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v7

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getModuleId()Ljava/lang/String;

    move-result-object v10

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;-><init>(Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;I)V

    return-object v1

    :cond_8
    return-object v2
.end method

.method public static createViewModel(Landroid/content/Context;Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context must not be null"

    .line 110
    invoke-static {p0, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UxHintType must not be null"

    .line 111
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "ModuleEntry must not be null"

    .line 112
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    sget-object p1, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->SUPPORTED_UX_COMPONENTS:Ljava/util/List;

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 118
    :cond_0
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    instance-of p1, p1, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->ITEMS_LIST_VERTICAL:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    if-ne p1, v1, :cond_1

    .line 121
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-object v1, p1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;

    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->moduleLocator:Ljava/lang/String;

    const v5, 0x7f0d03fd

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;->LIST_1_COLUMN:Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b001a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    move-object v0, p0

    .line 121
    invoke-static/range {v0 .. v7}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Ljava/lang/String;ILcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p0

    return-object p0

    .line 126
    :cond_1
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    instance-of p1, p1, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->ITEMS_GRID_SRP:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    if-eq p1, v1, :cond_2

    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUICKSHOP_ITEMS_GALLERY:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    if-ne p1, v1, :cond_4

    :cond_2
    const p1, 0x7f0b001b

    .line 131
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUICKSHOP_ITEMS_GALLERY:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    if-ne v0, v1, :cond_3

    const p1, 0x7f0b0019

    .line 134
    :cond_3
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-object v2, v0

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;

    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iget-object v5, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->moduleLocator:Ljava/lang/String;

    const v6, 0x7f0d008f

    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;->GRID_2_COLUMN:Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    move-object v1, p0

    .line 134
    invoke-static/range {v1 .. v8}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Ljava/lang/String;ILcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p0

    return-object p0

    .line 139
    :cond_4
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    instance-of p1, p1, Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;

    if-eqz p1, :cond_5

    .line 141
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-static {p0, p1, v0, p2}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p0

    return-object p0

    .line 145
    :cond_5
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    instance-of p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    if-eqz p1, :cond_e

    .line 147
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUERY_IMAGE_ANSWER_GRID:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUERY_IMAGE_MOTORS_GRID:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    .line 148
    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_0

    .line 155
    :cond_6
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->EVENT_BANNER_LISTING:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 157
    iget-object p0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p0

    return-object p0

    .line 162
    :cond_7
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->PRODUCTS_EXPANSION:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 164
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createTopProductsViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p0

    return-object p0

    .line 169
    :cond_8
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUICKBAR:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 171
    iget-object p0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    invoke-static {p0}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createQuickBarModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p0

    return-object p0

    .line 173
    :cond_9
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->EVENTS_TITLE_BANNER:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 175
    iget-object p0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    invoke-static {p0}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createEventTitleModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p0

    return-object p0

    .line 177
    :cond_a
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUERY_IMAGE_EVENTS_GRID:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 179
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b0027

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 179
    invoke-static {p1, p0}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createEventsHubModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p0

    return-object p0

    .line 182
    :cond_b
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->SAAS_STP_SPECIALS_CAROUSEL:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->QUICKSHOP_ITEMS_CAROUSEL:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    .line 183
    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 185
    :cond_c
    iget-object p0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    invoke-static {p0}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createCarouselViewModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p0

    return-object p0

    .line 150
    :cond_d
    :goto_0
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-static {p0, p1, v0, p2}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p0

    return-object p0

    .line 189
    :cond_e
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->BROWSE_SELLER_HEADER:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 191
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/browse/BrowseSellerHeaderModule;

    invoke-static {p0, p1}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->createBrowseSellerHeaderModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/browse/BrowseSellerHeaderModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p0

    return-object p0

    :cond_f
    return-object v0
.end method

.method private static createViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context must not be null"

    .line 326
    invoke-static {p0, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CategoryNavModule must not be null"

    .line 327
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UxComponentType must not be null"

    .line 328
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "PlacementSizeType must not be null"

    .line 329
    invoke-static {p3, p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;->getCards()Ljava/util/List;

    move-result-object p2

    .line 333
    invoke-static {p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 337
    :cond_0
    sget v3, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_GRID_LIST_CARD:I

    .line 341
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 342
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0018

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const p0, 0x7f0d007e

    const/4 v2, 0x1

    if-le v9, v2, :cond_3

    int-to-double v6, v0

    int-to-double v10, v9

    div-double/2addr v6, v10

    .line 349
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_2

    mul-int v8, v7, v2

    add-int/2addr v8, v6

    if-ge v8, v0, :cond_1

    .line 358
    new-instance v10, Lcom/ebay/mobile/browse/CategoryNavViewModel;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;

    invoke-direct {v10, v8, p0}, Lcom/ebay/mobile/browse/CategoryNavViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;I)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 360
    :cond_1
    new-instance v8, Lcom/ebay/mobile/browse/CategoryNavViewModel;

    invoke-direct {v8, v1, p0}, Lcom/ebay/mobile/browse/CategoryNavViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;I)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 367
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;

    .line 368
    new-instance v2, Lcom/ebay/mobile/browse/CategoryNavViewModel;

    invoke-direct {v2, v0, p0}, Lcom/ebay/mobile/browse/CategoryNavViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;I)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 372
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    .line 375
    new-instance p0, Lcom/ebay/mobile/browse/CategoryNavModuleViewModel;

    new-instance v6, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;

    invoke-direct {v6, p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/answers/AnswersModule;)V

    const-string v7, "0"

    move-object v2, p0

    move-object v4, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/ebay/mobile/browse/CategoryNavModuleViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;I)V

    return-object p0

    :cond_5
    return-object v1
.end method

.method private static createViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Ljava/lang/String;ILcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 21
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context must not be null"

    move-object/from16 v1, p0

    .line 224
    invoke-static {v1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ListingsModule must not be null"

    move-object/from16 v3, p1

    .line 225
    invoke-static {v3, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UxComponentType must not be null"

    move-object/from16 v2, p2

    .line 226
    invoke-static {v2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "PlacementSizeType must not be null"

    move-object/from16 v8, p3

    .line 227
    invoke-static {v8, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;->getFirstCardContainer()Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v4

    .line 234
    invoke-static {v4}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v2

    .line 238
    :cond_1
    sget v5, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_GRID_LIST_CARD_NO_LEFT_RIGHT_PADDING:I

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701da

    .line 242
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v9, 0x7f0701d0

    .line 243
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 245
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v9

    sget-object v10, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Browse$B;->itemOverflow:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Browse$B;

    invoke-interface {v9, v10}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v19

    .line 249
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 251
    instance-of v10, v9, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    if-eqz v10, :cond_2

    .line 253
    new-instance v14, Lcom/ebay/mobile/browse/BrowseItemCardViewModel;

    move-object v10, v9

    check-cast v10, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v14

    move/from16 v11, p5

    move-object/from16 v12, p6

    move v13, v6

    move-object v2, v14

    move v14, v7

    move-object/from16 v20, v4

    move-object v4, v15

    move v15, v7

    move/from16 v16, v7

    invoke-direct/range {v9 .. v18}, Lcom/ebay/mobile/browse/BrowseItemCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;ILcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;IIIIII)V

    xor-int/lit8 v9, v19, 0x1

    .line 256
    invoke-virtual {v2, v9}, Lcom/ebay/mobile/browse/BrowseItemCardViewModel;->setSuppressItemOverflowMenu(Z)V

    .line 257
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v20, v4

    move-object v4, v15

    :goto_1
    move-object v15, v4

    move-object/from16 v4, v20

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object v4, v15

    .line 262
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;->getSeeAll()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v2

    .line 267
    invoke-static {v2}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->isEmpty(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0700de

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 272
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 273
    new-instance v1, Lcom/ebay/mobile/browse/SingleLabelViewModel;

    sget v7, Lcom/ebay/nautilus/shell/uxcomponents/ItemComponentType;->CONTAINER_FOOTER:I

    invoke-direct {v1, v2, v7, v6}, Lcom/ebay/mobile/browse/SingleLabelViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;ILandroid/graphics/Rect;)V

    .line 276
    iget-object v6, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v6, :cond_4

    const-string v6, "SEARCH"

    iget-object v7, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v7, v7, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 277
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-static {v2}, Lcom/ebay/mobile/browse/BrowseViewModelFactory;->addAspectParamToSearchAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    :cond_4
    move-object v6, v1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 280
    :goto_2
    new-instance v10, Lcom/ebay/mobile/browse/ListingsModuleViewModel;

    new-instance v7, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;

    invoke-direct {v7, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;)V

    move-object v1, v10

    move v2, v5

    move-object/from16 v3, p1

    move-object v5, v7

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/ebay/mobile/browse/ListingsModuleViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;I)V

    return-object v10

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method static createViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context must not be null"

    .line 403
    invoke-static {p0, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ContainerModule must not be null"

    .line 404
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UxComponentType must not be null"

    .line 405
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "PlacementSizeType must not be null"

    .line 406
    invoke-static {p3, p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object p2

    .line 410
    invoke-static {p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 417
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 420
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getModuleId()Ljava/lang/String;

    move-result-object v8

    .line 422
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;

    .line 424
    instance-of v2, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    if-eqz v2, :cond_1

    .line 426
    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    .line 427
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v2

    .line 429
    invoke-static {v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 432
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 434
    instance-of v4, v3, Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;

    if-eqz v4, :cond_2

    .line 436
    new-instance v4, Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;

    const v6, 0x7f0d0098

    invoke-direct {v4, v3, v6, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;ILjava/lang/String;)V

    .line 437
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 442
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b001e

    .line 446
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const p2, 0x7f0b001d

    .line 447
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 449
    new-instance p0, Lcom/ebay/mobile/browse/VisualNavigationViewModel;

    const v3, 0x7f0d011f

    new-instance v6, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;

    invoke-direct {v6, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v9, p3

    invoke-direct/range {v2 .. v11}, Lcom/ebay/mobile/browse/VisualNavigationViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;II)V

    return-object p0

    :cond_4
    return-object v1
.end method

.method private static createViewModel(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 19
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "ContainerModule must not be null"

    move-object/from16 v2, p0

    .line 480
    invoke-static {v2, v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "UxComponentType must not be null"

    .line 481
    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "PlacementSizeType must not be null"

    move-object/from16 v11, p2

    .line 482
    invoke-static {v11, v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 486
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->EVENT_BANNER_LISTING:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v3, 0x0

    if-ne v1, v0, :cond_3

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 490
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    .line 492
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;

    const/4 v6, 0x1

    .line 493
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;

    .line 496
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 499
    instance-of v8, v5, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    if-eqz v8, :cond_3

    instance-of v8, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    if-eqz v8, :cond_3

    .line 502
    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    .line 503
    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    .line 506
    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 507
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v6, :cond_0

    .line 509
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 510
    instance-of v9, v8, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    if-eqz v9, :cond_0

    .line 513
    check-cast v8, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;

    .line 517
    invoke-virtual {v8}, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->setTitle(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 518
    invoke-virtual {v8}, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;->getSubTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->setSubTitle(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 519
    invoke-virtual {v8}, Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;->getSecondaryCallToAction()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->setSeeAll(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 520
    new-instance v9, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;

    invoke-direct {v9, v5}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;)V

    move-object v5, v9

    goto :goto_0

    :cond_0
    move-object v5, v3

    move-object v8, v5

    .line 525
    :goto_0
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 526
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v6, :cond_2

    .line 528
    invoke-interface {v0, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 530
    instance-of v6, v1, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    if-eqz v6, :cond_1

    .line 532
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    .line 533
    new-instance v6, Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;

    .line 535
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getType()Ljava/lang/String;

    move-result-object v13

    .line 536
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getDisplayPrice()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    move-result-object v14

    const/4 v15, 0x0

    .line 538
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getImage()Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    move-result-object v16

    .line 539
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v17

    const/16 v18, 0x0

    move-object v12, v6

    invoke-direct/range {v12 .. v18}, Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Lcom/ebay/nautilus/domain/data/experience/type/base/Image;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 543
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_3

    .line 549
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 551
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 552
    new-instance v0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;

    invoke-direct {v0, v8, v7}, Lcom/ebay/mobile/browse/EventWithListingsViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;Ljava/util/List;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;

    sget v3, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_SINGLE_ITEM_CARD_NO_PADDING:I

    const/4 v6, 0x0

    new-instance v1, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getModuleId()Ljava/lang/String;

    move-result-object v10

    move-object v2, v0

    move-object/from16 v11, p2

    invoke-direct/range {v2 .. v11}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    return-object v0
.end method

.method public static createViewModels(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;)Ljava/util/List;
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    .line 674
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;->getFirstCardContainer()Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 681
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v2

    .line 682
    invoke-static {v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 685
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 688
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 690
    new-instance v3, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;

    invoke-direct {v3, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/IContainer;)V

    .line 691
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 692
    new-instance v3, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    sget v4, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_SINGLE_ITEM_CONTAINER_NO_PADDING:I

    .line 693
    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v3

    .line 694
    invoke-virtual {v3, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v0

    .line 695
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setContainerId(Ljava/lang/String;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p1

    .line 696
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    .line 697
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0701ce

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 703
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Browse$B;->itemOverflow:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Browse$B;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    .line 704
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 706
    instance-of v3, v2, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    if-eqz v3, :cond_3

    .line 708
    new-instance v13, Lcom/ebay/mobile/browse/BrowseItemCardViewModel;

    move-object v4, v2

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    const v5, 0x7f0d0090

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;->LIST_1_COLUMN:Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v13

    move v7, p0

    move v8, p0

    invoke-direct/range {v3 .. v12}, Lcom/ebay/mobile/browse/BrowseItemCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;ILcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;IIIIII)V

    xor-int/lit8 v2, p1, 0x1

    .line 718
    invoke-virtual {v13, v2}, Lcom/ebay/mobile/browse/BrowseItemCardViewModel;->setSuppressItemOverflowMenu(Z)V

    .line 719
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 721
    new-instance v3, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    const v4, 0x7f0d0096

    .line 722
    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v3

    .line 723
    invoke-virtual {v3, v2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v2

    .line 724
    invoke-virtual {v2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v2

    .line 726
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method
