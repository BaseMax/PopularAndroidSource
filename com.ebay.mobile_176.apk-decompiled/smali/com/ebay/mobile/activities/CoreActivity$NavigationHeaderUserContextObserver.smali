.class public Lcom/ebay/mobile/activities/CoreActivity$NavigationHeaderUserContextObserver;
.super Ljava/lang/Object;
.source "CoreActivity.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationHeaderUserContextObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/CoreActivity;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/activities/CoreActivity;)V
    .locals 0

    .line 2770
    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$NavigationHeaderUserContextObserver;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentCountryChanged(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 0

    return-void
.end method

.method public onCurrentUserChanged(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2783
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$NavigationHeaderUserContextObserver;->this$0:Lcom/ebay/mobile/activities/CoreActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->invalidateNavigationMenu()V

    return-void
.end method

.method public onSellerSegmentChanged(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserSignedInStatusChanged(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic requiresInlineInitialLoad(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager$Observer$-CC;->$default$requiresInlineInitialLoad(Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager$Observer;Lcom/ebay/nautilus/domain/content/dm/UserContextDataManager;)Z

    move-result p1

    return p1
.end method
