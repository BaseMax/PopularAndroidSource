.class Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;
.super Ljava/lang/Object;
.source "CharityFavoritesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/charity/CharityFavoritesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorHandler"
.end annotation


# instance fields
.field private final buttonOk:Landroid/view/View;

.field private final buttonRetry:Landroid/view/View;

.field private final layout:Landroid/view/View;

.field final synthetic this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

.field private final viewMessage:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/charity/CharityFavoritesFragment;Landroid/view/View;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->layout:Landroid/view/View;

    const p1, 0x7f0a05fa

    .line 793
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->viewMessage:Landroid/widget/TextView;

    const p1, 0x7f0a05fc

    .line 794
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->buttonRetry:Landroid/view/View;

    const p1, 0x7f0a05f9

    .line 795
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->buttonOk:Landroid/view/View;

    .line 797
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->buttonRetry:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->buttonOk:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->buttonRetry:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->buttonOk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05f9

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05fc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 811
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    iget-object p1, p1, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->nonprofitDataManager:Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/NonProfitDataManager;->forceReloadData()V

    goto :goto_0

    .line 814
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method public showError(Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;Z)V
    .locals 3

    .line 821
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->viewMessage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->this$0:Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-virtual {v2}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/activities/CoreActivity;

    invoke-virtual {v2}, Lcom/ebay/mobile/activities/CoreActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getSafeLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->buttonRetry:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharityFavoritesFragment$ErrorHandler;->buttonOk:Landroid/view/View;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
