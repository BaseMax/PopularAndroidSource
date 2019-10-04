.class public Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CharitySearchFragment.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/charity/CharitySearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GivingWorksResultsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/ebay/nautilus/domain/data/Nonprofit;",
        ">;"
    }
.end annotation


# instance fields
.field private firstNonprofit:Lcom/ebay/nautilus/domain/data/Nonprofit;

.field private final inflater:Landroid/view/LayoutInflater;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;)V"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 337
    iput-object p3, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->results:Ljava/util/List;

    .line 338
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->results:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/ebay/nautilus/domain/data/Nonprofit;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->results:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Nonprofit;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->getItem(I)Lcom/ebay/nautilus/domain/data/Nonprofit;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    .line 350
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d00af

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 351
    new-instance p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;

    invoke-direct {p3, p2}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;-><init>(Landroid/view/View;)V

    .line 352
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;

    .line 361
    :goto_0
    iget-object v0, p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->text:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->firstNonprofit:Lcom/ebay/nautilus/domain/data/Nonprofit;

    if-eqz v0, :cond_1

    .line 368
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->firstNonprofit:Lcom/ebay/nautilus/domain/data/Nonprofit;

    goto :goto_1

    .line 371
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->getItem(I)Lcom/ebay/nautilus/domain/data/Nonprofit;

    move-result-object v0

    if-nez p1, :cond_2

    .line 372
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->firstNonprofit:Lcom/ebay/nautilus/domain/data/Nonprofit;

    if-nez p1, :cond_2

    .line 373
    iput-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->firstNonprofit:Lcom/ebay/nautilus/domain/data/Nonprofit;

    :cond_2
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_3

    return-object p2

    .line 383
    :cond_3
    iget-object v0, p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->imageProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    new-instance v1, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$1;

    invoke-direct {v1, p0, p3}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$1;-><init>(Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;)V

    invoke-virtual {v0, v1}, Lcom/ebay/android/widget/RemoteImageView;->setOnRemoteImageLoadedListener(Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;)V

    .line 392
    iget-object v0, p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/Nonprofit;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 393
    iget-object p3, p3, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->text:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/Nonprofit;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 420
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->getItem(I)Lcom/ebay/nautilus/domain/data/Nonprofit;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;)V"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->results:Ljava/util/List;

    .line 426
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->notifyDataSetChanged()V

    return-void
.end method
