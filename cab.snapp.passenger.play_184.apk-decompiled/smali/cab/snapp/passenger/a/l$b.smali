.class public final Lcab/snapp/passenger/a/l$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/a/l;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroidx/appcompat/widget/AppCompatImageView;

.field private e:Landroidx/appcompat/widget/AppCompatTextView;

.field private f:Landroidx/appcompat/widget/AppCompatImageView;

.field private g:Landroidx/appcompat/widget/AppCompatTextView;

.field private h:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/a/l;Landroid/view/View;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    .line 109
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 110
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a019a

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcab/snapp/passenger/a/l$b;->b:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0196

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcab/snapp/passenger/a/l$b;->c:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0197

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcab/snapp/passenger/a/l$b;->d:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0a0195

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/l$b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a0199

    .line 115
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcab/snapp/passenger/a/l$b;->f:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0a0194

    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/l$b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a0198

    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/l$b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public final bindView(I)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 143
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v0}, Lcab/snapp/passenger/a/l;->a(Lcab/snapp/passenger/a/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v0}, Lcab/snapp/passenger/a/l;->a(Lcab/snapp/passenger/a/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/price/PriceModel;

    .line 146
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getService()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 154
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getStImageURl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 157
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    const v3, 0x7f0801d4

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/x;

    move-result-object v2

    new-instance v3, Lcab/snapp/passenger/f/l;

    invoke-direct {v3}, Lcab/snapp/passenger/f/l;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/x;->transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/x;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/a/l$b;->d:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object v2

    new-instance v3, Lcab/snapp/passenger/f/l;

    invoke-direct {v3}, Lcab/snapp/passenger/f/l;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/x;->transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/x;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/a/l$b;->d:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    .line 167
    :goto_0
    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getStDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isNew()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const v4, 0x7f120210

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isNew()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const v4, 0x7f12020e

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_1
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isSurged()Z

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 190
    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->f:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    goto :goto_2

    .line 194
    :cond_3
    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->f:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 200
    :goto_2
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isDiscountedPrice()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 202
    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 208
    :cond_4
    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 214
    :goto_3
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isDiscountedPrice()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isSurged()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getServiceType()I

    move-result v0

    iget-object v2, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v2}, Lcab/snapp/passenger/a/l;->c(Lcab/snapp/passenger/a/l;)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 216
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 220
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    :goto_4
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getServiceType()I

    move-result v0

    iget-object v1, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v1}, Lcab/snapp/passenger/a/l;->c(Lcab/snapp/passenger/a/l;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 225
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 226
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    goto :goto_5

    .line 230
    :cond_7
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 231
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 234
    :goto_5
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v0}, Lcab/snapp/passenger/a/l;->d(Lcab/snapp/passenger/a/l;)I

    move-result v0

    if-ge v0, p1, :cond_8

    .line 236
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v0}, Lcab/snapp/passenger/a/l;->e(Lcab/snapp/passenger/a/l;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010028

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 238
    iget-object v1, p0, Lcab/snapp/passenger/a/l$b;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v0, p1}, Lcab/snapp/passenger/a/l;->b(Lcab/snapp/passenger/a/l;I)I

    :cond_8
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/a/l$b;->getAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v0}, Lcab/snapp/passenger/a/l;->a(Lcab/snapp/passenger/a/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 127
    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v0}, Lcab/snapp/passenger/a/l;->a(Lcab/snapp/passenger/a/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/price/PriceModel;->getService()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getServiceType()I

    move-result p1

    invoke-static {v0, p1}, Lcab/snapp/passenger/a/l;->a(Lcab/snapp/passenger/a/l;I)I

    .line 128
    iget-object p1, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {p1}, Lcab/snapp/passenger/a/l;->b(Lcab/snapp/passenger/a/l;)Lcab/snapp/passenger/a/l$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {p1}, Lcab/snapp/passenger/a/l;->b(Lcab/snapp/passenger/a/l;)Lcab/snapp/passenger/a/l$a;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-static {v0}, Lcab/snapp/passenger/a/l;->c(Lcab/snapp/passenger/a/l;)I

    move-result v0

    invoke-interface {p1, v0}, Lcab/snapp/passenger/a/l$a;->onServiceTypeSelected(I)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/a/l$b;->a:Lcab/snapp/passenger/a/l;

    invoke-virtual {p1}, Lcab/snapp/passenger/a/l;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
