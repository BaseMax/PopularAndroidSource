.class public final Lcab/snapp/passenger/a/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/f$a;,
        Lcab/snapp/passenger/a/f$b;,
        Lcab/snapp/passenger/a/f$d;,
        Lcab/snapp/passenger/a/f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/a/f$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcab/snapp/passenger/a/f$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcab/snapp/passenger/a/f$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;",
            "Lcab/snapp/passenger/a/f$c;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcab/snapp/passenger/a/f;->a:I

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcab/snapp/passenger/a/f;->b:I

    .line 62
    iput-object p1, p0, Lcab/snapp/passenger/a/f;->c:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcab/snapp/passenger/a/f;->d:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lcab/snapp/passenger/a/f;->e:Lcab/snapp/passenger/a/f$c;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcab/snapp/passenger/a/f;->e:Lcab/snapp/passenger/a/f$c;

    if-eqz p1, :cond_0

    .line 130
    invoke-interface {p1}, Lcab/snapp/passenger/a/f$c;->onAddFavoriteClick()V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/FavoriteModel;Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p2, p0, Lcab/snapp/passenger/a/f;->e:Lcab/snapp/passenger/a/f$c;

    if-eqz p2, :cond_0

    .line 120
    invoke-interface {p2, p1}, Lcab/snapp/passenger/a/f$c;->onFavoriteClick(Lcab/snapp/passenger/data/models/FavoriteModel;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$WrKPQP1ZGplXww0k_BpRR6TVP2I(Lcab/snapp/passenger/a/f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/a/f;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$jDXoeiokKsnWCx1hy5efVdopTbk(Lcab/snapp/passenger/a/f;Lcab/snapp/passenger/data/models/FavoriteModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/a/f;->a(Lcab/snapp/passenger/data/models/FavoriteModel;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcab/snapp/passenger/a/f;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcab/snapp/passenger/a/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 139
    iget-object p1, p0, Lcab/snapp/passenger/a/f;->d:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcab/snapp/passenger/a/f$d;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/f;->onBindViewHolder(Lcab/snapp/passenger/a/f$d;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/a/f$d;I)V
    .locals 2

    .line 107
    instance-of v0, p1, Lcab/snapp/passenger/a/f$b;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcab/snapp/passenger/a/f;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/a/f;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/data/models/FavoriteModel;

    if-eqz p2, :cond_1

    .line 116
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/a/f$b;

    iget-object v0, v0, Lcab/snapp/passenger/a/f$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p1, Lcab/snapp/passenger/a/f$d;->c:Landroid/view/View;

    new-instance v0, Lcab/snapp/passenger/a/-$$Lambda$f$jDXoeiokKsnWCx1hy5efVdopTbk;

    invoke-direct {v0, p0, p2}, Lcab/snapp/passenger/a/-$$Lambda$f$jDXoeiokKsnWCx1hy5efVdopTbk;-><init>(Lcab/snapp/passenger/a/f;Lcab/snapp/passenger/data/models/FavoriteModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object p1, p1, Lcab/snapp/passenger/a/f$d;->c:Landroid/view/View;

    new-instance p2, Lcab/snapp/passenger/a/-$$Lambda$f$WrKPQP1ZGplXww0k_BpRR6TVP2I;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/a/-$$Lambda$f$WrKPQP1ZGplXww0k_BpRR6TVP2I;-><init>(Lcab/snapp/passenger/a/f;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/f;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/f$d;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/f$d;
    .locals 3

    .line 88
    iget-object v0, p0, Lcab/snapp/passenger/a/f;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    .line 94
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0045

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance p2, Lcab/snapp/passenger/a/f$b;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/f$b;-><init>(Lcab/snapp/passenger/a/f;Landroid/view/View;)V

    return-object p2

    .line 99
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0044

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    new-instance p2, Lcab/snapp/passenger/a/f$a;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/f$a;-><init>(Lcab/snapp/passenger/a/f;Landroid/view/View;)V

    return-object p2
.end method

.method public final updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcab/snapp/passenger/a/f;->d:Ljava/util/List;

    .line 78
    invoke-virtual {p0}, Lcab/snapp/passenger/a/f;->notifyDataSetChanged()V

    return-void
.end method
