.class public Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;
.super Lcom/ebay/mobile/common/view/ViewHolder;
.source "CategoryLineItemViewHolder.java"


# instance fields
.field private final textView:Landroid/widget/TextView;

.field private final textViewSeeAll:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/ebay/mobile/common/view/ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a12a9

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f0a12f3

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textViewSeeAll:Landroid/widget/TextView;

    return-void
.end method

.method private static getIconForViewType(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    const p1, 0x7f0802d5

    .line 41
    invoke-static {p0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f0802cf

    .line 43
    invoke-static {p0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bind(Lcom/ebay/mobile/common/view/ViewModel;)V
    .locals 9

    .line 51
    invoke-super {p0, p1}, Lcom/ebay/mobile/common/view/ViewHolder;->bind(Lcom/ebay/mobile/common/view/ViewModel;)V

    .line 54
    instance-of v0, p1, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060043

    invoke-static {v0, v2, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 61
    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->getItemViewType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->getIconForViewType(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 67
    iget v0, p1, Lcom/ebay/mobile/common/view/ViewModel;->viewType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_2
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;

    iget-object v2, v0, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 83
    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    .line 85
    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "categoryLineItem-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 88
    :cond_3
    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 89
    iget-object v3, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_5
    invoke-virtual {v0}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->isCategorySearchInvalid()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    .line 92
    iget v0, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    if-le v0, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 93
    :goto_2
    iget-object v5, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textViewSeeAll:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    .line 95
    iget-object v5, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textViewSeeAll:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textViewSeeAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textViewSeeAll:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 98
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textViewSeeAll:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->textViewSeeAll:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12030e

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    aput-object v8, v7, v3

    .line 99
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 106
    iget p1, p1, Lcom/ebay/mobile/common/view/ViewModel;->viewType:I

    packed-switch p1, :pswitch_data_1

    goto :goto_4

    .line 120
    :pswitch_1
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12030a

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    aput-object v2, v4, v3

    .line 121
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 116
    :pswitch_2
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 112
    :pswitch_3
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/CategoryLineItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12030d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    aput-object v2, v4, v3

    .line 113
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
