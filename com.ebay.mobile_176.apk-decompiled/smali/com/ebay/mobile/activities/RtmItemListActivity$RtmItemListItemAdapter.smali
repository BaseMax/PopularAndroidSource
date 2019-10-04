.class Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListItemAdapter;
.super Lcom/ebay/common/view/DefaultItemAdapter;
.source "RtmItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/RtmItemListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RtmItemListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/ebay/nautilus/domain/data/EbayItem;",
        ">",
        "Lcom/ebay/common/view/DefaultItemAdapter<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/RtmItemListActivity;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/activities/RtmItemListActivity;Landroid/app/Activity;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">(TA;ZZZ)V"
        }
    .end annotation

    .line 456
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListItemAdapter;->this$0:Lcom/ebay/mobile/activities/RtmItemListActivity;

    .line 457
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ebay/common/view/DefaultItemAdapter;-><init>(Landroid/app/Activity;ZZZ)V

    return-void
.end method


# virtual methods
.method public setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbayItem;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/view/ViewCache;",
            "TItem;I)V"
        }
    .end annotation

    .line 468
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/common/view/DefaultItemAdapter;->setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;I)V

    .line 470
    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->galleryUrl:Ljava/lang/String;

    .line 471
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->pictureUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->pictureUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 474
    iget-object p3, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->pictureUrls:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 477
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->masterImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/EbayItem;->masterImageUrl:Ljava/lang/String;

    const-string p3, "_26"

    invoke-static {p2, p3}, Lcom/ebay/nautilus/domain/net/image/ConstructDipUrl;->constructDynamicUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 481
    :cond_1
    iget-object p1, p1, Lcom/ebay/common/view/ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    invoke-virtual {p1, p3}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;I)V
    .locals 0

    .line 450
    check-cast p2, Lcom/ebay/nautilus/domain/data/EbayItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListItemAdapter;->setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbayItem;I)V

    return-void
.end method

.method public bridge synthetic setItem(Lcom/ebay/common/view/ViewCache;Ljava/lang/Object;I)V
    .locals 0

    .line 450
    check-cast p2, Lcom/ebay/nautilus/domain/data/EbayItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListItemAdapter;->setItem(Lcom/ebay/common/view/ViewCache;Lcom/ebay/nautilus/domain/data/EbayItem;I)V

    return-void
.end method
