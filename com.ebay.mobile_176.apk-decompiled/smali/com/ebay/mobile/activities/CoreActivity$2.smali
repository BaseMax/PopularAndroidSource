.class Lcom/ebay/mobile/activities/CoreActivity$2;
.super Landroidx/appcompat/app/ActionBarDrawerToggle;
.source "CoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/CoreActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/CoreActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/CoreActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$2;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 399
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 401
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$2;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    iget-boolean p1, p1, Lcom/ebay/mobile/activities/CoreActivity;->isNavigationProfileShowing:Z

    if-eqz p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$2;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->toggleMenus()V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .line 372
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 374
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$2;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-static {v0, p1}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0a62

    if-ne p1, v0, :cond_2

    .line 379
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v0, "Menu"

    invoke-direct {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 380
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 381
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$2;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-direct {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentificationProvider;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$2;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/CoreActivity;->access$000(Lcom/ebay/mobile/activities/CoreActivity;)Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$2;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/CoreActivity;->access$000(Lcom/ebay/mobile/activities/CoreActivity;)Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/symban/SymbanDataManager;->getCountOrDefault(I)I

    move-result v1

    :cond_1
    const-string v0, "aiBellCnt"

    .line 390
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 392
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$2;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_2
    return-void
.end method
