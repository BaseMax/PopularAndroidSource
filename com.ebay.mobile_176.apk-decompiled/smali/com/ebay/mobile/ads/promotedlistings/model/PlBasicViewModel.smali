.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PlBasicViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;
    }
.end annotation


# instance fields
.field private final dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

.field private loadState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private plBasicDataMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;",
            ">;"
        }
    .end annotation
.end field

.field private final plBasicViewModelFactory:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;

.field private resultStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus;",
            ">;"
        }
    .end annotation
.end field

.field private river:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;",
            ">;"
        }
    .end annotation
.end field

.field private final riverName:Ljava/lang/String;

.field private title:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    .line 61
    iput-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->plBasicViewModelFactory:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;

    .line 62
    iput-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->riverName:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->initialize()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;Ljava/lang/String;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;-><init>(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;Ljava/lang/String;)V

    return-void
.end method

.method private buildFooterViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FOOTER"

    .line 157
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->getModulesForLayout(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 159
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->plBasicViewModelFactory:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;

    invoke-virtual {v0, p2, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    .line 164
    instance-of p2, p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    if-eqz p2, :cond_1

    .line 165
    check-cast p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    return-object p1

    .line 167
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    sget v0, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST_CARD:I

    .line 171
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    return-object p1
.end method

.method private buildListViewModels(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;",
            "Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    const-string v0, "LIST"

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->getModulesForLayout(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;

    if-eqz v1, :cond_0

    .line 147
    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->plBasicViewModelFactory:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;

    invoke-virtual {v2, v1, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static get(Landroidx/fragment/app/Fragment;Ljava/lang/Long;Ljava/lang/String;)Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;
    .locals 2
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 244
    new-instance v0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel$Factory;-><init>(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V

    .line 244
    invoke-static {p0, v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class p1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    .line 245
    invoke-virtual {p0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;

    return-object p0
.end method

.method private getModulesForLayout(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;",
            "Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 180
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 182
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;->getLayouts()Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_1

    .line 184
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 186
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/type/layout/Layout;

    if-nez p2, :cond_2

    .line 188
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 190
    :cond_2
    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->getModuleEntries(Lcom/ebay/nautilus/domain/data/experience/type/layout/Layout;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    .line 191
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_3
    return-object p1
.end method

.method private getRegionForRiver(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;)Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;
    .locals 4
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->riverName:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x48c6ea22

    if-eq v2, v3, :cond_3

    const v3, -0x26d93348

    if-eq v2, v3, :cond_2

    const v3, 0x398baa35

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "PL_BASIC_AD_RATE_RIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "PL_BASIC_RIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "PL_BASIC_CAMPAIGN_SELECTION_RIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 132
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->getMainRegion()Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;

    move-result-object p1

    return-object p1

    .line 128
    :pswitch_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->getCampaignRegion()Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;

    move-result-object p1

    return-object p1

    .line 125
    :pswitch_1
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->getAdRateRegion()Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->river:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->river:Landroidx/lifecycle/MutableLiveData;

    .line 77
    new-instance v0, Lcom/ebay/mobile/content/SingleDispatchLiveData;

    invoke-direct {v0}, Lcom/ebay/mobile/content/SingleDispatchLiveData;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->resultStatus:Landroidx/lifecycle/MutableLiveData;

    .line 78
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->loadState:Landroidx/lifecycle/MutableLiveData;

    .line 79
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->plBasicDataMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 80
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 81
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->loadState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;->loadInitial(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    :cond_0
    return-void
.end method


# virtual methods
.method public getLoadState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->initialize()V

    .line 215
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->loadState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getResultStatus()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->initialize()V

    .line 208
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->resultStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRiver()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicRiver;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->initialize()V

    .line 201
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->river:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTitle()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->initialize()V

    .line 222
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public synthetic onFinish(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/content/DirtyStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer$-CC;->$default$onFinish(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer;Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V

    return-void
.end method

.method public onLoad(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/nautilus/domain/content/DirtyStatus;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/kernel/content/ResultStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/content/DirtyStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->resultStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0, p2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->getRegionForRiver(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;)Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;

    move-result-object p1

    .line 94
    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    if-eqz p3, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    .line 104
    iget-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    iget-object p4, p2, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast p4, Lcom/ebay/nautilus/domain/data/experience/ads/AdsServiceMeta;

    iget-object p4, p4, Lcom/ebay/nautilus/domain/data/experience/ads/AdsServiceMeta;->pageTitle:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 106
    :cond_1
    new-instance p3, Lcom/ebay/mobile/ads/promotedlistings/model/SimplePlBasicRiver;

    .line 107
    invoke-direct {p0, p2, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->buildListViewModels(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;)Ljava/util/List;

    move-result-object p4

    .line 108
    invoke-direct {p0, p2, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->buildFooterViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicData;Lcom/ebay/nautilus/domain/data/experience/type/layout/Region;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/SimplePlBasicRiver;-><init>(Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;)V

    .line 109
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->river:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->plBasicDataMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->loadState:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->loadState:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->river:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public refresh()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;->clearAll()V

    .line 231
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->river:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->loadState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->dataManager:Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager;->loadInitial(Lcom/ebay/nautilus/domain/content/dm/ads/promotedlistings/PlBasicDataManager$Observer;)Lcom/ebay/nautilus/domain/content/TaskSync;

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicViewModel;->initialize()V

    :goto_0
    return-void
.end method
