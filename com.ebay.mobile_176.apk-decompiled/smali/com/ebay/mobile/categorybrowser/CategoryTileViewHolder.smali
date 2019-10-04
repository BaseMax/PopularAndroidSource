.class public final Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;
.super Lcom/ebay/mobile/common/view/ViewHolder;
.source "CategoryTileViewHolder.java"


# instance fields
.field private categoryImage:Lcom/ebay/android/widget/RemoteImageView;

.field private categoryName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/ebay/mobile/common/view/ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a07e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageView;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->categoryImage:Lcom/ebay/android/widget/RemoteImageView;

    .line 29
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a12a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->categoryName:Landroid/widget/TextView;

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/ebay/mobile/common/view/ViewModel;)V
    .locals 4

    .line 36
    invoke-super {p0, p1}, Lcom/ebay/mobile/common/view/ViewHolder;->bind(Lcom/ebay/mobile/common/view/ViewModel;)V

    .line 38
    instance-of v0, p1, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object p1, p1, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 41
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->categoryImage:Lcom/ebay/android/widget/RemoteImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->categoryName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->categoryName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-wide v0, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-static {v0, v1}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->getCategoryImageUrl(J)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->categoryImage:Lcom/ebay/android/widget/RemoteImageView;

    invoke-virtual {v1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->categoryImage:Lcom/ebay/android/widget/RemoteImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "categoryImage-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/android/widget/RemoteImageView;->setTransitionName(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->categoryName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "categoryLineItem-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryTileViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a123d

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
