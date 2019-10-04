.class Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;
.super Lcom/ebay/common/view/ViewCache;
.source "RecentlyViewedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyViewCache"
.end annotation


# instance fields
.field public itemId:J


# direct methods
.method public constructor <init>(Landroid/view/View;J)V
    .locals 0

    .line 420
    invoke-direct {p0, p1}, Lcom/ebay/common/view/ViewCache;-><init>(Landroid/view/View;)V

    .line 421
    iput-wide p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->itemId:J

    return-void
.end method
