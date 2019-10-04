.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;
.super Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;
.source "PlBasicSelectorViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel<",
        "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;",
        ">;",
        "Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;"
    }
.end annotation


# instance fields
.field private final calculator:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

.field private currentValue:Ljava/lang/CharSequence;

.field private errorMessage:Ljava/lang/CharSequence;

.field private final resolver:Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;

.field private showDivider:Z

.field private title:Ljava/lang/CharSequence;

.field public validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;)V
    .locals 1
    .param p3    # Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0d033c

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/Module;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;I)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->showDivider:Z

    const-string p1, "null resolver not handled"

    .line 55
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "null calculator not handled"

    .line 56
    invoke-static {p4, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iput-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->resolver:Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;

    .line 59
    iput-object p4, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->calculator:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/CharSequence;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->currentValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDividerViewVisibility()I
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->showDivider:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->errorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getErrorViewVisibility()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->errorMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLandingTitle()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->title:Ljava/lang/CharSequence;

    .line 82
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->resolver:Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicSelectorModule;->getLookup()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->calculator:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->currentValue:Ljava/lang/CharSequence;

    .line 84
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->getErrorMessage(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->errorMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->errorMessage:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->showDivider:Z

    return-void
.end method

.method public setValidator(Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;)V
    .locals 0
    .param p1    # Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 158
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicSelectorViewModel;->validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    return-void
.end method
