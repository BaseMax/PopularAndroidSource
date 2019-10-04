.class public final Lcab/snapp/passenger/a/j;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/j$b;,
        Lcab/snapp/passenger/a/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/a/j$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcab/snapp/passenger/data/models/RideRatingModel;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcab/snapp/passenger/a/j$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcab/snapp/passenger/data/models/RideRatingModel;Z)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/a/j;->d:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/a/j;->c:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcab/snapp/passenger/a/j;->b:Lcab/snapp/passenger/data/models/RideRatingModel;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 47
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/RideRatingModel;->getNegativeReasons()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/a/j;->d:Ljava/util/List;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/RideRatingModel;->getPositiveReasons()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/a/j;->d:Ljava/util/List;

    .line 54
    :cond_1
    :goto_0
    iput-boolean p3, p0, Lcab/snapp/passenger/a/j;->a:Z

    return-void
.end method

.method private synthetic a(ILcab/snapp/passenger/data/models/ride_rating/RideRatingReason;Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p3, p0, Lcab/snapp/passenger/a/j;->e:Lcab/snapp/passenger/a/j$a;

    if-eqz p3, :cond_0

    .line 97
    invoke-interface {p3, p1, p2}, Lcab/snapp/passenger/a/j$a;->onItemClick(ILcab/snapp/passenger/data/models/ride_rating/RideRatingReason;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$Dk8blQI6JsEmqTncgCk9cgEwJg4(Lcab/snapp/passenger/a/j;ILcab/snapp/passenger/data/models/ride_rating/RideRatingReason;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/a/j;->a(ILcab/snapp/passenger/data/models/ride_rating/RideRatingReason;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcab/snapp/passenger/a/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcab/snapp/passenger/a/j$b;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/j;->onBindViewHolder(Lcab/snapp/passenger/a/j$b;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/a/j$b;I)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/a/j;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;

    .line 79
    invoke-static {p1}, Lcab/snapp/passenger/a/j$b;->a(Lcab/snapp/passenger/a/j$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-boolean v1, p0, Lcab/snapp/passenger/a/j;->a:Z

    if-eqz v1, :cond_0

    .line 83
    invoke-static {p1}, Lcab/snapp/passenger/a/j$b;->a(Lcab/snapp/passenger/a/j$b;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f080209

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    invoke-static {p1}, Lcab/snapp/passenger/a/j$b;->a(Lcab/snapp/passenger/a/j$b;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/a/j;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p1}, Lcab/snapp/passenger/a/j$b;->a(Lcab/snapp/passenger/a/j$b;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f08020a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 89
    invoke-static {p1}, Lcab/snapp/passenger/a/j$b;->a(Lcab/snapp/passenger/a/j$b;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/a/j;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 92
    :goto_0
    invoke-static {p1}, Lcab/snapp/passenger/a/j$b;->a(Lcab/snapp/passenger/a/j$b;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/a/j;->b:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcab/snapp/passenger/data/models/RideRatingModel;->isSelected(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 94
    invoke-static {p1}, Lcab/snapp/passenger/a/j$b;->a(Lcab/snapp/passenger/a/j$b;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Lcab/snapp/passenger/a/-$$Lambda$j$Dk8blQI6JsEmqTncgCk9cgEwJg4;

    invoke-direct {v1, p0, p2, v0}, Lcab/snapp/passenger/a/-$$Lambda$j$Dk8blQI6JsEmqTncgCk9cgEwJg4;-><init>(Lcab/snapp/passenger/a/j;ILcab/snapp/passenger/data/models/ride_rating/RideRatingReason;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/j;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/j$b;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/j$b;
    .locals 3

    .line 72
    new-instance p2, Lcab/snapp/passenger/a/j$b;

    iget-object v0, p0, Lcab/snapp/passenger/a/j;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/j$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setOnItemClickListener(Lcab/snapp/passenger/a/j$a;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcab/snapp/passenger/a/j;->e:Lcab/snapp/passenger/a/j$a;

    return-void
.end method
