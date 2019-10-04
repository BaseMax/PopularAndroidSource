.class public Lcom/ebay/common/view/AdsViewHolder;
.super Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;
.source "AdsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder<",
        "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final adsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    .line 20
    iput-object p1, p0, Lcom/ebay/common/view/AdsViewHolder;->adsView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 29
    :cond_0
    check-cast p2, Lcom/ebay/common/net/api/search/idealmodel/AdsListItem;

    .line 30
    iget-object p1, p0, Lcom/ebay/common/view/AdsViewHolder;->adsView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p1, p2, Lcom/ebay/common/net/api/search/idealmodel/AdsListItem;->googleTextAdView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 35
    iget-object p1, p2, Lcom/ebay/common/net/api/search/idealmodel/AdsListItem;->googleTextAdView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 36
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p2, Lcom/ebay/common/net/api/search/idealmodel/AdsListItem;->googleTextAdView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/view/AdsViewHolder;->adsView:Landroid/view/View;

    const v0, 0x7f0a0720

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 42
    iget-object p2, p2, Lcom/ebay/common/net/api/search/idealmodel/AdsListItem;->googleTextAdView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onBindView(ILjava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/view/AdsViewHolder;->onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V

    return-void
.end method
