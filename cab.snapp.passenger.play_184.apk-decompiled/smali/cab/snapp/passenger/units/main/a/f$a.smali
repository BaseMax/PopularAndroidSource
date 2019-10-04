.class public final Lcab/snapp/passenger/units/main/a/f$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/main/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/main/a/f;

.field private b:Landroid/widget/ImageView;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/main/a/f;Landroid/view/View;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/f$a;->a:Lcab/snapp/passenger/units/main/a/f;

    .line 67
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01af

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/f$a;->b:Landroid/widget/ImageView;

    const p1, 0x7f0a01b0

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/f$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a01ae

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/f$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final bindView(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 76
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->a:Lcab/snapp/passenger/units/main/a/f;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/f;->a(Lcab/snapp/passenger/units/main/a/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->a:Lcab/snapp/passenger/units/main/a/f;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/f;->a(Lcab/snapp/passenger/units/main/a/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    .line 80
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getBadgeBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getBadgeText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getBadgeTextColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getBadgeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getBadgeTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getBadgeBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 92
    :goto_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->fit()Lcom/squareup/picasso/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->centerInside()Lcom/squareup/picasso/x;

    move-result-object v0

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/x;->error(I)Lcom/squareup/picasso/x;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/main/a/f$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/f$a;->a:Lcab/snapp/passenger/units/main/a/f;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/f;->b(Lcab/snapp/passenger/units/main/a/f;)Lcab/snapp/passenger/units/main/a/e$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/a/f$a;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->a:Lcab/snapp/passenger/units/main/a/f;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/f;->a(Lcab/snapp/passenger/units/main/a/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/f$a;->a:Lcab/snapp/passenger/units/main/a/f;

    invoke-static {v0}, Lcab/snapp/passenger/units/main/a/f;->b(Lcab/snapp/passenger/units/main/a/f;)Lcab/snapp/passenger/units/main/a/e$e;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/main/a/f$a;->a:Lcab/snapp/passenger/units/main/a/f;

    invoke-static {v1}, Lcab/snapp/passenger/units/main/a/f;->a(Lcab/snapp/passenger/units/main/a/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    invoke-interface {v0, p1}, Lcab/snapp/passenger/units/main/a/e$e;->onItemClicked(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V

    :cond_0
    return-void
.end method
