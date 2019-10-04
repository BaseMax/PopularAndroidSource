.class Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$3;
.super Ljava/lang/Object;
.source "RecentlyViewedItemsActivity.java"

# interfaces
.implements Lcom/ebay/common/EbayTimer$OnTimerEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->setupTimer()V
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

    .line 986
    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$3;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTimer()V
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$3;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$3;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;->refresh(Landroid/widget/ListView;)V

    return-void
.end method
