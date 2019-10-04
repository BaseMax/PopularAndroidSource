.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;
.super Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;
.source "PlBasicFeeCalculationLineViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel<",
        "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;",
        ">;",
        "Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;"
    }
.end annotation


# instance fields
.field private final calculator:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

.field private final rateObserver:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;

.field private final resolver:Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;

.field public title:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;ILcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/Module;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;I)V

    .line 29
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->title:Landroidx/databinding/ObservableField;

    const-string p1, "null resolver not handled"

    .line 40
    invoke-static {p4, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "null calculator not handled"

    .line 41
    invoke-static {p5, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iput-object p4, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->resolver:Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;

    .line 44
    iput-object p5, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->calculator:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

    .line 46
    new-instance p1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3, p3}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;-><init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$1;)V

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->rateObserver:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;

    .line 47
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->rateObserver:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->getTitleWithTemplateFilledIn(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getTitleWithTemplateFilledIn(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->resolver:Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationLineModule;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->calculator:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->rateObserver:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;

    invoke-static {v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;->access$100(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)V

    .line 56
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->title:Landroidx/databinding/ObservableField;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->getTitleWithTemplateFilledIn(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method
