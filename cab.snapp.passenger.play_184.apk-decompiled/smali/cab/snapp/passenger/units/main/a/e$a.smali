.class public final Lcab/snapp/passenger/units/main/a/e$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/main/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/main/a/e;

.field private b:Landroid/widget/ImageView;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroidx/appcompat/widget/AppCompatTextView;

.field private e:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/main/a/e;Landroid/view/View;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    .line 359
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a019c

    .line 360
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->b:Landroid/widget/ImageView;

    const p1, 0x7f0a019e

    .line 361
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a019d

    .line 362
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a019b

    .line 363
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 365
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final bindView(I)V
    .locals 2

    if-ltz p1, :cond_4

    .line 370
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->e(Lcab/snapp/passenger/units/main/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 373
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->e(Lcab/snapp/passenger/units/main/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;

    .line 375
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->b:Landroid/widget/ImageView;

    const v1, 0x7f0801d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->fit()Lcom/squareup/picasso/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->centerCrop()Lcom/squareup/picasso/x;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/main/a/e$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->getActionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 388
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->isDark()Z

    move-result p1

    const/16 v0, 0x17

    if-eqz p1, :cond_2

    .line 390
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f06012a

    if-lt p1, v0, :cond_1

    .line 392
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 393
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void

    .line 397
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 398
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void

    .line 403
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f060024

    if-lt p1, v0, :cond_3

    .line 405
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 406
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void

    .line 410
    :cond_3
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 411
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    :cond_4
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 422
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->f(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/a/e$a;->getAdapterPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 425
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->e(Lcab/snapp/passenger/units/main/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 427
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/e;->e(Lcab/snapp/passenger/units/main/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;

    .line 428
    iget-object v1, p0, Lcab/snapp/passenger/units/main/a/e$a;->a:Lcab/snapp/passenger/units/main/a/e;

    invoke-static {v1}, Lcab/snapp/passenger/units/main/a/e;->f(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$d;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcab/snapp/passenger/units/main/a/e$d;->onContentClicked(Lcab/snapp/passenger/data/models/snapp_group/BannerItem;I)V

    :cond_0
    return-void
.end method
