.class public Lcom/ebay/common/net/api/verticals/HscrollTrackableViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
.source "HscrollTrackableViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/tracking/HScrollStateHandler;
.implements Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingEvents;


# instance fields
.field private hScrollTrackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field

.field private hasSentHScroll:Z


# direct methods
.method public constructor <init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;)V

    .line 25
    iput-object p4, p0, Lcom/ebay/common/net/api/verticals/HscrollTrackableViewModel;->hScrollTrackingList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTrackingEvent(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/HscrollTrackableViewModel;->hScrollTrackingList:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;->getTracking(Ljava/util/List;Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;

    move-result-object p1

    return-object p1
.end method

.method public hasSentHScroll()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/ebay/common/net/api/verticals/HscrollTrackableViewModel;->hasSentHScroll:Z

    return v0
.end method

.method public setHasSentHScroll(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/ebay/common/net/api/verticals/HscrollTrackableViewModel;->hasSentHScroll:Z

    return-void
.end method
