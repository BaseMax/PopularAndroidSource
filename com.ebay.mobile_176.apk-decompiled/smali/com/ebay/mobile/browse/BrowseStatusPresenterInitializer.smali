.class public Lcom/ebay/mobile/browse/BrowseStatusPresenterInitializer;
.super Ljava/lang/Object;
.source "BrowseStatusPresenterInitializer.java"

# interfaces
.implements Lcom/ebay/mobile/search/StatusPresenterInitializer;


# instance fields
.field private final cardContainer:Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

.field private refineEnabled:Z


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CardContainer must not be null"

    .line 28
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseStatusPresenterInitializer;->cardContainer:Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    return-void
.end method


# virtual methods
.method public getBubbleHelp()Lcom/ebay/nautilus/domain/data/experience/type/base/BubbleHelp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIncludeFollowSearch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRefineAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseStatusPresenterInitializer;->cardContainer:Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefineContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/ebay/mobile/browse/BrowseStatusPresenterInitializer;->cardContainer:Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getRefineCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRefineEnabled()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/ebay/mobile/browse/BrowseStatusPresenterInitializer;->refineEnabled:Z

    return v0
.end method

.method public getRefineText(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/ebay/mobile/browse/BrowseStatusPresenterInitializer;->cardContainer:Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public synthetic getSaveQuickTipText()Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0}, Lcom/ebay/mobile/search/StatusPresenterInitializer$-CC;->$default$getSaveQuickTipText(Lcom/ebay/mobile/search/StatusPresenterInitializer;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSortGroup()Lcom/ebay/nautilus/domain/data/experience/type/field/Group;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setRefineEnabled(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/ebay/mobile/browse/BrowseStatusPresenterInitializer;->refineEnabled:Z

    return-void
.end method
