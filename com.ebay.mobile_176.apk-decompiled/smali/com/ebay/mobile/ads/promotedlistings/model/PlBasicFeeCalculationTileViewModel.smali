.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;
.super Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;
.source "PlBasicFeeCalculationTileViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemWithView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel<",
        "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;",
        ">;",
        "Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemWithView;"
    }
.end annotation


# instance fields
.field private anchorViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public bubbleHelpVisibility:I

.field public calculated:Ljava/lang/CharSequence;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)V
    .locals 1

    const v0, 0x7f0d033a

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/Module;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;I)V

    .line 49
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;->getTaxInfo()Lcom/ebay/nautilus/domain/data/experience/type/base/BubbleHelp;

    return-void
.end method

.method private getAdRateComputedValue()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;->getComputed()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;->getTemplateValue(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    invoke-direct {v1, v2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->getValueForTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBubbleHelpText(Lcom/ebay/nautilus/domain/data/experience/type/base/BubbleHelp;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/BubbleHelp;->getMessage()Ljava/util/List;

    move-result-object p1

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    invoke-direct {v1, v2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 133
    iget-object v3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;

    invoke-virtual {v3, v2}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;->getTemplateValue(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;->toTextSpans()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    .line 137
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->getValueForTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v2, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-direct {v2, v4}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;-><init>(Ljava/util/List;)V

    .line 143
    new-instance v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "\n\n"

    .line 147
    invoke-static {p2, v0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Ljava/util/List;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private makeQuickTip(Landroid/content/Context;)Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;->getTaxInfo()Lcom/ebay/nautilus/domain/data/experience/type/base/BubbleHelp;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->anchorViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;->getTaxInfo()Lcom/ebay/nautilus/domain/data/experience/type/base/BubbleHelp;

    move-result-object v0

    .line 102
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->getBubbleHelpText(Lcom/ebay/nautilus/domain/data/experience/type/base/BubbleHelp;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 104
    new-instance v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/quicktips/BubbleQuickTipViewModel;

    sget v2, Lcom/ebay/nautilus/shell/uxcomponents/ItemComponentType;->TIP_FLOATING:I

    sget-object v3, Lcom/ebay/nautilus/shell/quicktips/widget/ArrowDirection;->BOTTOM:Lcom/ebay/nautilus/shell/quicktips/widget/ArrowDirection;

    invoke-direct {v0, v2, p1, v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/quicktips/BubbleQuickTipViewModel;-><init>(ILjava/lang/CharSequence;Lcom/ebay/nautilus/shell/quicktips/widget/ArrowDirection;)V

    .line 108
    new-instance p1, Lcom/ebay/nautilus/shell/quicktips/QuickTipConfig;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/ebay/nautilus/shell/quicktips/QuickTipConfig;-><init>(ZZIJ)V

    .line 109
    new-instance v2, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;

    invoke-direct {v2, v1}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;-><init>(Landroid/view/View;)V

    .line 110
    invoke-virtual {v2, v0}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;->setViewModel(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/quicktips/BaseQuickTipViewModel;)Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;

    move-result-object v0

    const v1, 0x7f1303db

    .line 111
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;->setAnimationStyle(I)Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;->setAllowTapOutside(Z)Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;->setQuickTipConfig(Lcom/ebay/nautilus/shell/quicktips/QuickTipConfig;)Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;

    move-result-object p1

    const-string v0, "plBasicTaxInfo"

    .line 114
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;->setUniqueId(Ljava/lang/String;)Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;->setVibrate(Z)Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip$Builder;->build()Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method getAdRateComputedValueForDisplay(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->getAdRateComputedValue()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v2, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-direct {v2, v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;-><init>(Ljava/util/List;)V

    .line 68
    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->title:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->getAdRateComputedValueForDisplay(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->calculated:Ljava/lang/CharSequence;

    return-void
.end method

.method public onBindWithView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f0a02ff

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->anchorViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 83
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicFeeCalculationTileModule;->getTaxInfo()Lcom/ebay/nautilus/domain/data/experience/type/base/BubbleHelp;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->bubbleHelpVisibility:I

    return-void
.end method

.method public onClickBubbleHelp(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationTileViewModel;->makeQuickTip(Landroid/content/Context;)Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/quicktips/widget/FloatingQuickTip;->show()V

    :cond_0
    return-void
.end method
