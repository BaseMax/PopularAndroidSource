.class public Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/SelectionViewModel;
.source "PivotPillViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/uxcomponents/actions/NavigationAction;
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field private lastThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

.field protected final layoutId:I

.field private final model:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f0d0092

    .line 49
    invoke-direct {p0, v1, v0, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/SelectionViewModel;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 43
    iput v1, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->layoutId:I

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;

    iput-object p1, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;

    return-void
.end method

.method public static synthetic lambda$getExecution$0(Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 81
    instance-of v1, v0, Lcom/ebay/mobile/search/SearchResultFragmentActivity;

    if-eqz v1, :cond_1

    .line 83
    move-object p1, v0

    check-cast p1, Lcom/ebay/mobile/search/SearchResultFragmentActivity;

    .line 84
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchResultFragmentActivity;->getSearchConfiguration()Lcom/ebay/mobile/search/refine/SearchConfiguration;

    move-result-object p1

    .line 85
    iget-object v1, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/ebay/mobile/search/refine/SearchConfiguration;->getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->updateSearchConfiguration(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-static {v0, p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->createFromParameters(Landroid/content/Context;Lcom/ebay/common/net/api/search/SearchParameters;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    .line 92
    iget-object v1, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getTrackingList()Ljava/util/List;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;->ACTN:Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->NAVSRC:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    .line 94
    invoke-static {v1, v2, v3}, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;->getTracking(Ljava/util/List;Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->NAVSRC:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    .line 93
    invoke-static {v1, v2}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->convertTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    instance-of v2, v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v2, :cond_0

    .line 97
    move-object v2, v0

    check-cast v2, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {v2}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;->getViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;

    .line 104
    invoke-virtual {p1}, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->getNavAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/ebay/mobile/uxcomponents/actions/NavigationActionHandler;->navigateTo(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Landroid/view/View;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSearchConfiguration(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/SearchParameters;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 111
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x57617637

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "_sacat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/ebay/nautilus/kernel/util/NumberUtil;->safeParseLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 119
    new-instance p2, Lcom/ebay/common/model/search/EbayCategorySummary;

    const/4 v0, 0x0

    invoke-direct {p2, v3, v4, v0}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    iput-object p2, p1, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method


# virtual methods
.method public getExecution()Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution<",
            "Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/ebay/mobile/browse/overflow/-$$Lambda$PivotPillViewModel$8Oq8fpGdgEmWDnB6j2GwE6MBpkY;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/browse/overflow/-$$Lambda$PivotPillViewModel$8Oq8fpGdgEmWDnB6j2GwE6MBpkY;-><init>(Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;)V

    return-object v0
.end method

.method public getNavAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->lastThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->title:Ljava/lang/CharSequence;

    .line 65
    iget-object v0, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualSelection;->getAccessibilityText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->titleContentDescription:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/ebay/mobile/browse/overflow/PivotPillViewModel;->lastThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

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
