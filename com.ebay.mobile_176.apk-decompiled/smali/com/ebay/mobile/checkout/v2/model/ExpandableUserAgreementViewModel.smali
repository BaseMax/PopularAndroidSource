.class public Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "ExpandableUserAgreementViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;
.implements Lcom/ebay/payments/experience/PaymentsAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;
    }
.end annotation


# instance fields
.field private alternateAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

.field public final componentClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

.field private currentAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

.field public final ds6Config:Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

.field private expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

.field private final expandInfoFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field public expandViewModel:Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModel;

.field private ibanTextualEntry:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

.field private final lazyExpandExecution:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;",
            ">;"
        }
    .end annotation
.end field

.field public final shouldShowShowMoreLessButton:Landroidx/databinding/ObservableBoolean;

.field private final showMoreLessViewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final userAgreementBodyContainer:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public final userAgreementPreviewContainer:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/Lazy;Lcom/ebay/mobile/themes/Ds6ConfigurationContract;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModelFactory;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;",
            ">;",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const v0, 0x7f0d0636

    .line 74
    invoke-direct {p0, v0}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    .line 53
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->userAgreementPreviewContainer:Landroidx/databinding/ObservableField;

    .line 55
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->userAgreementBodyContainer:Landroidx/databinding/ObservableField;

    .line 58
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->shouldShowShowMoreLessButton:Landroidx/databinding/ObservableBoolean;

    .line 75
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->componentClickListener:Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    .line 76
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfoFactoryProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->showMoreLessViewModelFactoryProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p4, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->lazyExpandExecution:Ldagger/Lazy;

    .line 79
    iput-object p5, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->ds6Config:Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->alternateAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;)Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    return-object p0
.end method


# virtual methods
.method public bindAgreementContents(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 170
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;->getCards()Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;->getExpandCollapseControls()Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ExpandCollapseControls;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ExpandCollapseControls;->getCollapsedCount()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 177
    :goto_1
    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfoFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfoFactory;

    invoke-virtual {v5, v2}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfoFactory;->create(I)Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    .line 178
    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->showMoreLessViewModelFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModelFactory;

    iget-object v6, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    .line 179
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ExpandCollapseControls;->getShowMore()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v8

    goto :goto_3

    :cond_4
    move-object v8, v7

    :goto_3
    if-eqz v3, :cond_5

    .line 180
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/controls/ExpandCollapseControls;->getShowLess()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v7

    .line 179
    :cond_5
    invoke-virtual {v5, v2, v6, v8, v7}, Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModelFactory;->create(ILcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModel;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandViewModel:Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModel;

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    .line 182
    :goto_4
    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->shouldShowShowMoreLessButton:Landroidx/databinding/ObservableBoolean;

    if-eqz v3, :cond_7

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v5, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 183
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandViewModel:Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModel;

    invoke-virtual {p2, p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModel;->onBind(Landroid/content/Context;)V

    .line 185
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_a

    .line 189
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ICard;

    .line 190
    instance-of v7, v6, Lcom/ebay/nautilus/domain/data/experience/type/base/LabelsCard;

    if-eqz v7, :cond_9

    .line 192
    check-cast v6, Lcom/ebay/nautilus/domain/data/experience/type/base/LabelsCard;

    .line 193
    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/type/base/LabelsCard;->getLabels()Ljava/util/List;

    move-result-object v6

    .line 194
    invoke-static {v6}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 196
    new-instance v7, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;

    .line 197
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    const v8, 0x7f04043a

    invoke-direct {v7, v6, v8}, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    .line 198
    invoke-virtual {v7, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->onBind(Landroid/content/Context;)V

    if-ge v5, v4, :cond_8

    .line 200
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 202
    :cond_8
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 208
    :cond_a
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->userAgreementPreviewContainer:Landroidx/databinding/ObservableField;

    new-instance v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    sget v2, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST_NO_PADDING:I

    .line 209
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p2

    .line 211
    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p2

    .line 208
    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->userAgreementBodyContainer:Landroidx/databinding/ObservableField;

    new-instance p2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {p2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    sget v0, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST_NO_PADDING:I

    .line 214
    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p2

    .line 215
    invoke-virtual {p2, v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object p2

    .line 216
    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p2

    .line 213
    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getExecution()Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->lazyExpandExecution:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->currentAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->bindAgreementContents(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;)V

    .line 90
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->alternateAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->ibanTextualEntry:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    iget-object v0, v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$1;

    invoke-direct {v1, p0, p1}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$1;-><init>(Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_0
    return-void
.end method

.method public synthetic onBind(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem$-CC;->$default$onBind(Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expandInfo.expanded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expandInfo.expanded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;->isExpanded()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setUserAgreements(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;I)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "UserAgreement must not be null."

    .line 124
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->currentAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    .line 126
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->alternateAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    .line 127
    iput-object p4, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->ibanTextualEntry:Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    const p2, 0x7f0a14c4

    add-int/2addr p5, p2

    .line 128
    iput p5, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->id:I

    .line 129
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->onBind(Landroid/content/Context;)V

    return-object p0
.end method
