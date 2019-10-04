.class Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RtmItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/RtmItemListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RtmItemListArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/ebay/nautilus/domain/data/EbayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final bannerUrl:Ljava/lang/String;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final itemAdapter:Lcom/ebay/common/view/ItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/common/view/ItemAdapter<",
            "Lcom/ebay/nautilus/domain/data/EbayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ebay/mobile/activities/RtmItemListActivity;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/activities/RtmItemListActivity;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">(TA;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/EbayItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->this$0:Lcom/ebay/mobile/activities/RtmItemListActivity;

    const v0, 0x7f0d00fc

    .line 327
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 329
    iput-object p4, p0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->bannerUrl:Ljava/lang/String;

    const-string p3, "layout_inflater"

    .line 330
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 331
    new-instance p3, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListItemAdapter;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListItemAdapter;-><init>(Lcom/ebay/mobile/activities/RtmItemListActivity;Landroid/app/Activity;ZZZ)V

    iput-object p3, p0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->itemAdapter:Lcom/ebay/common/view/ItemAdapter;

    return-void
.end method

.method private getBannerView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 441
    new-instance v0, Lcom/ebay/android/widget/ExpandingImageView;

    invoke-direct {v0, p1}, Lcom/ebay/android/widget/ExpandingImageView;-><init>(Landroid/content/Context;)V

    .line 442
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->bannerUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ebay/android/widget/ExpandingImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 346
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/ebay/nautilus/domain/data/EbayItem;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 353
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/EbayItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->getItem(I)Lcom/ebay/nautilus/domain/data/EbayItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->getItem(I)Lcom/ebay/nautilus/domain/data/EbayItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 366
    iget-wide v0, p1, Lcom/ebay/nautilus/domain/data/EbayItem;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 384
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    .line 395
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->getBannerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 402
    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00fc

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 403
    new-instance p3, Lcom/ebay/common/view/ViewCache;

    invoke-direct {p3, p2}, Lcom/ebay/common/view/ViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->itemAdapter:Lcom/ebay/common/view/ItemAdapter;

    invoke-virtual {v0, p3}, Lcom/ebay/common/view/ItemAdapter;->init(Lcom/ebay/common/view/ViewCache;)V

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/common/view/ViewCache;

    .line 412
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->getItem(I)Lcom/ebay/nautilus/domain/data/EbayItem;

    move-result-object v0

    .line 413
    iput-object v0, p3, Lcom/ebay/common/view/ViewCache;->object:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 415
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;->itemAdapter:Lcom/ebay/common/view/ItemAdapter;

    invoke-virtual {v1, p3, v0, p1}, Lcom/ebay/common/view/ItemAdapter;->setItem(Lcom/ebay/common/view/ViewCache;Ljava/lang/Object;I)V

    goto :goto_1

    .line 418
    :cond_2
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    const v0, 0x7f0802ee

    invoke-virtual {p1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setImageResource(I)V

    .line 419
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setTag(Ljava/lang/Object;)V

    .line 420
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText5:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->imageLeaveFeedback:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->imageItemShipped:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->imageStampEnding:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->imageStampOutbid:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->imageStampPaid:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
