.class Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$2;
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

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;I)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$2;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    iput p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$2;->this$0:Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;

    iget p2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$2;->val$id:I

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->dismissDialog(I)V

    return-void
.end method
