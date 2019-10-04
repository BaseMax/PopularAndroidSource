.class Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$1;
.super Ljava/lang/Object;
.source "RecentlyViewedItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$1;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 236
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$1;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->clearAll()V

    .line 239
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string p2, "RecentItemsClearHistory"

    sget-object v0, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {p1, p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    const-string p2, "RVIDel"

    .line 240
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$1;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$1;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {p1, p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$1;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    invoke-virtual {p2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method
