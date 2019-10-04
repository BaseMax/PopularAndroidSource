.class public final Lcab/snapp/passenger/units/main/a/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/units/main/a/e$a;,
        Lcab/snapp/passenger/units/main/a/e$b;,
        Lcab/snapp/passenger/units/main/a/e$c;,
        Lcab/snapp/passenger/units/main/a/e$f;,
        Lcab/snapp/passenger/units/main/a/e$d;,
        Lcab/snapp/passenger/units/main/a/e$e;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/BannerItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcab/snapp/passenger/units/main/a/e$d;

.field private h:Lcab/snapp/passenger/units/main/a/e$e;

.field private i:Lcab/snapp/passenger/units/main/a/e$f;

.field private j:Lcab/snapp/passenger/units/main/a/c;

.field private k:Lcab/snapp/passenger/units/main/a/d;

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/BannerItem;",
            ">;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcab/snapp/passenger/units/main/a/e;->a:I

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcab/snapp/passenger/units/main/a/e;->b:I

    const/4 v0, 0x2

    .line 37
    iput v0, p0, Lcab/snapp/passenger/units/main/a/e;->c:I

    .line 56
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e;->d:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lcab/snapp/passenger/units/main/a/e;->e:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lcab/snapp/passenger/units/main/a/e;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$f;
    .locals 0

    .line 31
    iget-object p0, p0, Lcab/snapp/passenger/units/main/a/e;->i:Lcab/snapp/passenger/units/main/a/e$f;

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcab/snapp/passenger/units/main/a/e;->l:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/main/a/e;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcab/snapp/passenger/units/main/a/e;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$e;
    .locals 0

    .line 31
    iget-object p0, p0, Lcab/snapp/passenger/units/main/a/e;->h:Lcab/snapp/passenger/units/main/a/e$e;

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/main/a/e;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcab/snapp/passenger/units/main/a/e;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$d;
    .locals 0

    .line 31
    iget-object p0, p0, Lcab/snapp/passenger/units/main/a/e;->g:Lcab/snapp/passenger/units/main/a/e$d;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 124
    instance-of v0, p1, Lcab/snapp/passenger/units/main/a/e$b;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Lcab/snapp/passenger/units/main/a/e$b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/a/e$b;->bindView()V

    return-void

    .line 128
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/units/main/a/e$a;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 130
    check-cast p1, Lcab/snapp/passenger/units/main/a/e$a;

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/main/a/e$a;->bindView(I)V

    return-void

    .line 132
    :cond_1
    instance-of p2, p1, Lcab/snapp/passenger/units/main/a/e$c;

    if-eqz p2, :cond_8

    .line 134
    check-cast p1, Lcab/snapp/passenger/units/main/a/e$c;

    .line 1255
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    .line 2031
    iget-object p2, p2, Lcab/snapp/passenger/units/main/a/e;->f:Ljava/util/List;

    .line 1255
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 1273
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1274
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1275
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1268
    :cond_2
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1269
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1270
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1263
    :cond_3
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1264
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1265
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1258
    :cond_4
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1259
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1260
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1279
    :goto_0
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    .line 3031
    iget-object p2, p2, Lcab/snapp/passenger/units/main/a/e;->f:Ljava/util/List;

    .line 1279
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_8

    .line 1282
    iget-object p2, p1, Lcab/snapp/passenger/units/main/a/e$c;->j:Lcab/snapp/passenger/units/main/a/e;

    .line 4031
    iget-object p2, p2, Lcab/snapp/passenger/units/main/a/e;->f:Ljava/util/List;

    .line 1282
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;

    const v0, 0x7f080167

    if-nez v3, :cond_5

    .line 1286
    iget-object v4, p1, Lcab/snapp/passenger/units/main/a/e$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1288
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/x;->fit()Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/x;->centerInside()Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/x;->error(I)Lcom/squareup/picasso/x;

    move-result-object p2

    iget-object v0, p1, Lcab/snapp/passenger/units/main/a/e$c;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_5
    if-ne v3, v2, :cond_6

    .line 1293
    iget-object v4, p1, Lcab/snapp/passenger/units/main/a/e$c;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1295
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/x;->fit()Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/x;->centerInside()Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/x;->error(I)Lcom/squareup/picasso/x;

    move-result-object p2

    iget-object v0, p1, Lcab/snapp/passenger/units/main/a/e$c;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_6
    if-ne v3, v1, :cond_7

    .line 1300
    iget-object v4, p1, Lcab/snapp/passenger/units/main/a/e$c;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1302
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/x;->fit()Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/x;->centerInside()Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/x;->error(I)Lcom/squareup/picasso/x;

    move-result-object p2

    iget-object v0, p1, Lcab/snapp/passenger/units/main/a/e$c;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/main/a/e;->l:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 96
    new-instance p2, Lcab/snapp/passenger/units/main/a/e$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d005c

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/units/main/a/e$b;-><init>(Lcab/snapp/passenger/units/main/a/e;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 100
    new-instance p2, Lcab/snapp/passenger/units/main/a/e$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0057

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/units/main/a/e$a;-><init>(Lcab/snapp/passenger/units/main/a/e;Landroid/view/View;)V

    return-object p2

    :cond_1
    if-nez p2, :cond_4

    .line 104
    new-instance p2, Lcab/snapp/passenger/units/main/a/e$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0058

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/units/main/a/e$c;-><init>(Lcab/snapp/passenger/units/main/a/e;Landroid/view/View;)V

    .line 105
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e;->j:Lcab/snapp/passenger/units/main/a/c;

    if-eqz p1, :cond_2

    .line 107
    iget-object v0, p2, Lcab/snapp/passenger/units/main/a/e$c;->frame:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/main/a/c;->setHeaderFrame(Landroid/view/View;)V

    .line 110
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e;->k:Lcab/snapp/passenger/units/main/a/d;

    if-eqz p1, :cond_3

    .line 112
    iget-object v0, p2, Lcab/snapp/passenger/units/main/a/e$c;->alpha:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/main/a/d;->setAlphaView(Landroid/view/View;)V

    :cond_3
    return-object p2

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setContentOnClickListener(Lcab/snapp/passenger/units/main/a/e$d;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e;->g:Lcab/snapp/passenger/units/main/a/e$d;

    return-void
.end method

.method public final setItemOnClickListener(Lcab/snapp/passenger/units/main/a/e$e;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e;->h:Lcab/snapp/passenger/units/main/a/e$e;

    return-void
.end method

.method public final setRideItemOnClickListener(Lcab/snapp/passenger/units/main/a/e$f;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e;->i:Lcab/snapp/passenger/units/main/a/e$f;

    return-void
.end method

.method public final setSnappJekBottomSheetCallback(Lcab/snapp/passenger/units/main/a/c;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e;->j:Lcab/snapp/passenger/units/main/a/c;

    return-void
.end method

.method public final setSnappJekBottomSheetScrollListener(Lcab/snapp/passenger/units/main/a/d;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e;->k:Lcab/snapp/passenger/units/main/a/d;

    return-void
.end method
