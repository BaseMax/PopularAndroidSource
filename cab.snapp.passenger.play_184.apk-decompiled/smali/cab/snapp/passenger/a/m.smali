.class public final Lcab/snapp/passenger/a/m;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/m$a;,
        Lcab/snapp/passenger/a/m$c;,
        Lcab/snapp/passenger/a/m$b;,
        Lcab/snapp/passenger/a/m$d;,
        Lcab/snapp/passenger/a/m$f;,
        Lcab/snapp/passenger/a/m$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/a/m$f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/SideMenuData;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcab/snapp/passenger/a/m$e;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZLcab/snapp/passenger/a/m$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/SideMenuData;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcab/snapp/passenger/a/m$e;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcab/snapp/passenger/a/m;->a:I

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcab/snapp/passenger/a/m;->b:I

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcab/snapp/passenger/a/m;->c:I

    const/4 v0, 0x3

    .line 49
    iput v0, p0, Lcab/snapp/passenger/a/m;->d:I

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lcab/snapp/passenger/a/m;->h:J

    .line 109
    iput-object p1, p0, Lcab/snapp/passenger/a/m;->e:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcab/snapp/passenger/a/m;->f:Ljava/util/List;

    .line 111
    iput-object p3, p0, Lcab/snapp/passenger/a/m;->i:Ljava/lang/String;

    .line 112
    iput-boolean p4, p0, Lcab/snapp/passenger/a/m;->k:Z

    .line 113
    iput-boolean p5, p0, Lcab/snapp/passenger/a/m;->j:Z

    .line 114
    iput-object p6, p0, Lcab/snapp/passenger/a/m;->g:Lcab/snapp/passenger/a/m$e;

    return-void
.end method

.method private synthetic a(ILcab/snapp/passenger/data/models/SideMenuData;Landroid/view/View;)V
    .locals 0

    .line 238
    iget-object p3, p0, Lcab/snapp/passenger/a/m;->g:Lcab/snapp/passenger/a/m$e;

    if-eqz p3, :cond_0

    .line 240
    invoke-interface {p3, p1, p2}, Lcab/snapp/passenger/a/m$e;->onItemClick(ILcab/snapp/passenger/data/models/SideMenuData;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$Z5jd-Cy1KB-1quuieVvgiB2jAag(Lcab/snapp/passenger/a/m;ILcab/snapp/passenger/data/models/SideMenuData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/a/m;->a(ILcab/snapp/passenger/data/models/SideMenuData;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 329
    iget-object v0, p0, Lcab/snapp/passenger/a/m;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 299
    iget-object v0, p0, Lcab/snapp/passenger/a/m;->f:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcab/snapp/passenger/a/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 301
    iget-object v0, p0, Lcab/snapp/passenger/a/m;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/SideMenuData;

    if-nez p1, :cond_0

    return v1

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/SideMenuData;->getType()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 310
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/SideMenuData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 p1, 0x2

    return p1

    .line 314
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/SideMenuData;->getType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v1
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcab/snapp/passenger/a/m$f;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/m;->onBindViewHolder(Lcab/snapp/passenger/a/m$f;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/a/m$f;I)V
    .locals 7

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/a/m;->f:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcab/snapp/passenger/a/m;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_6

    .line 232
    iget-object v0, p0, Lcab/snapp/passenger/a/m;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/SideMenuData;

    if-eqz v0, :cond_6

    .line 237
    iget-object v1, p1, Lcab/snapp/passenger/a/m$f;->f:Landroid/view/View;

    new-instance v2, Lcab/snapp/passenger/a/-$$Lambda$m$Z5jd-Cy1KB-1quuieVvgiB2jAag;

    invoke-direct {v2, p0, p2, v0}, Lcab/snapp/passenger/a/-$$Lambda$m$Z5jd-Cy1KB-1quuieVvgiB2jAag;-><init>(Lcab/snapp/passenger/a/m;ILcab/snapp/passenger/data/models/SideMenuData;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    instance-of p2, p1, Lcab/snapp/passenger/a/m$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p2, :cond_1

    .line 246
    check-cast p1, Lcab/snapp/passenger/a/m$d;

    iget-object p2, p1, Lcab/snapp/passenger/a/m$d;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object p2, p1, Lcab/snapp/passenger/a/m$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getIcon()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-wide v3, p0, Lcab/snapp/passenger/a/m;->h:J

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-nez p2, :cond_0

    .line 250
    iget-object p1, p1, Lcab/snapp/passenger/a/m$d;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 254
    :cond_0
    iget-object p1, p1, Lcab/snapp/passenger/a/m$d;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcab/snapp/passenger/a/m;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getTitle()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget-wide v3, p0, Lcab/snapp/passenger/a/m;->h:J

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 258
    :cond_1
    instance-of p2, p1, Lcab/snapp/passenger/a/m$c;

    if-eqz p2, :cond_3

    .line 260
    check-cast p1, Lcab/snapp/passenger/a/m$c;

    iget-object p2, p1, Lcab/snapp/passenger/a/m$c;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getTitle()I

    move-result v4

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 261
    iget-object p2, p1, Lcab/snapp/passenger/a/m$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getIcon()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    iget-object p2, p1, Lcab/snapp/passenger/a/m$c;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, p0, Lcab/snapp/passenger/a/m;->i:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-boolean p2, p0, Lcab/snapp/passenger/a/m;->j:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getType()I

    move-result p2

    if-ne p2, v1, :cond_2

    .line 265
    iget-object p1, p1, Lcab/snapp/passenger/a/m$c;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 269
    :cond_2
    iget-object p1, p1, Lcab/snapp/passenger/a/m$c;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 272
    :cond_3
    instance-of p2, p1, Lcab/snapp/passenger/a/m$b;

    if-eqz p2, :cond_5

    .line 274
    iget-boolean p2, p0, Lcab/snapp/passenger/a/m;->k:Z

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getType()I

    move-result p2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    .line 276
    move-object p2, p1

    check-cast p2, Lcab/snapp/passenger/a/m$b;

    iget-object p2, p2, Lcab/snapp/passenger/a/m$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 280
    :cond_4
    move-object p2, p1

    check-cast p2, Lcab/snapp/passenger/a/m$b;

    iget-object p2, p2, Lcab/snapp/passenger/a/m$b;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    :goto_0
    check-cast p1, Lcab/snapp/passenger/a/m$b;

    iget-object p2, p1, Lcab/snapp/passenger/a/m$b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getTitle()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 283
    iget-object p1, p1, Lcab/snapp/passenger/a/m$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getIcon()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 285
    :cond_5
    instance-of p2, p1, Lcab/snapp/passenger/a/m$a;

    if-eqz p2, :cond_6

    .line 287
    check-cast p1, Lcab/snapp/passenger/a/m$a;

    iget-object p2, p1, Lcab/snapp/passenger/a/m$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object p2, p1, Lcab/snapp/passenger/a/m$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getTitle()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 289
    iget-object p1, p1, Lcab/snapp/passenger/a/m$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SideMenuData;->getIcon()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/m;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/m$f;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/m$f;
    .locals 3

    .line 204
    iget-object v0, p0, Lcab/snapp/passenger/a/m;->e:Landroid/content/Context;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0091

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 220
    new-instance p2, Lcab/snapp/passenger/a/m$a;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/m$a;-><init>(Lcab/snapp/passenger/a/m;Landroid/view/View;)V

    return-object p2

    .line 213
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008f

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 214
    new-instance p2, Lcab/snapp/passenger/a/m$c;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/m$c;-><init>(Lcab/snapp/passenger/a/m;Landroid/view/View;)V

    return-object p2

    .line 216
    :cond_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008e

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 217
    new-instance p2, Lcab/snapp/passenger/a/m$b;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/m$b;-><init>(Lcab/snapp/passenger/a/m;Landroid/view/View;)V

    return-object p2

    .line 210
    :cond_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0090

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 211
    new-instance p2, Lcab/snapp/passenger/a/m$d;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/m$d;-><init>(Lcab/snapp/passenger/a/m;Landroid/view/View;)V

    return-object p2

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final updateCredit(J)V
    .locals 0

    .line 167
    iput-wide p1, p0, Lcab/snapp/passenger/a/m;->h:J

    .line 168
    invoke-virtual {p0}, Lcab/snapp/passenger/a/m;->notifyDataSetChanged()V

    return-void
.end method

.method public final updateData(Ljava/lang/String;ZZ)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcab/snapp/passenger/a/m;->i:Ljava/lang/String;

    .line 192
    iput-boolean p2, p0, Lcab/snapp/passenger/a/m;->k:Z

    .line 193
    iput-boolean p3, p0, Lcab/snapp/passenger/a/m;->j:Z

    .line 194
    invoke-virtual {p0}, Lcab/snapp/passenger/a/m;->notifyDataSetChanged()V

    return-void
.end method

.method public final updateDetailTitle(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcab/snapp/passenger/a/m;->i:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcab/snapp/passenger/a/m;->notifyDataSetChanged()V

    return-void
.end method

.method public final updateShowBadgeForBase(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcab/snapp/passenger/a/m;->k:Z

    .line 146
    invoke-virtual {p0}, Lcab/snapp/passenger/a/m;->notifyDataSetChanged()V

    return-void
.end method

.method public final updateShowBadgeForDetail(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcab/snapp/passenger/a/m;->j:Z

    .line 157
    invoke-virtual {p0}, Lcab/snapp/passenger/a/m;->notifyDataSetChanged()V

    return-void
.end method
