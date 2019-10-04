.class public final Lcab/snapp/passenger/a/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field private final b:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:Landroid/widget/TextView;

.field private d:Lcab/snapp/passenger/a/j;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcab/snapp/passenger/a/k$c;->a:Landroid/view/View;

    const v0, 0x7f0a0428

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcab/snapp/passenger/a/k$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0429

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcab/snapp/passenger/a/k$c;->c:Landroid/widget/TextView;

    .line 148
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 149
    iget-object p1, p0, Lcab/snapp/passenger/a/k$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/a/k$a;Lcab/snapp/passenger/a/k$b;ILcab/snapp/passenger/data/models/ride_rating/RideRatingReason;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 167
    iget-boolean p2, p2, Lcab/snapp/passenger/a/k$b;->isNegative:Z

    iget-object p3, p0, Lcab/snapp/passenger/a/k$c;->d:Lcab/snapp/passenger/a/j;

    invoke-interface {p1, p4, p2, p3}, Lcab/snapp/passenger/a/k$a;->onReasonClicked(Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;ZLcab/snapp/passenger/a/j;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$vEDk6w7IgGOp08-nAyhy3c1bZJQ(Lcab/snapp/passenger/a/k$c;Lcab/snapp/passenger/a/k$a;Lcab/snapp/passenger/a/k$b;ILcab/snapp/passenger/data/models/ride_rating/RideRatingReason;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/passenger/a/k$c;->a(Lcab/snapp/passenger/a/k$a;Lcab/snapp/passenger/a/k$b;ILcab/snapp/passenger/data/models/ride_rating/RideRatingReason;)V

    return-void
.end method


# virtual methods
.method public final hideTitle()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcab/snapp/passenger/a/k$c;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final initialize(Lcab/snapp/passenger/data/models/RideRatingModel;Lcab/snapp/passenger/a/k$b;Lcab/snapp/passenger/a/k$a;)V
    .locals 3

    .line 161
    new-instance v0, Lcab/snapp/passenger/a/j;

    iget-object v1, p0, Lcab/snapp/passenger/a/k$c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p2, Lcab/snapp/passenger/a/k$b;->isNegative:Z

    invoke-direct {v0, v1, p1, v2}, Lcab/snapp/passenger/a/j;-><init>(Landroid/content/Context;Lcab/snapp/passenger/data/models/RideRatingModel;Z)V

    iput-object v0, p0, Lcab/snapp/passenger/a/k$c;->d:Lcab/snapp/passenger/a/j;

    .line 162
    iget-object v0, p0, Lcab/snapp/passenger/a/k$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcab/snapp/passenger/a/k$c;->d:Lcab/snapp/passenger/a/j;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    iget-object v0, p0, Lcab/snapp/passenger/a/k$c;->d:Lcab/snapp/passenger/a/j;

    new-instance v1, Lcab/snapp/passenger/a/-$$Lambda$k$c$vEDk6w7IgGOp08-nAyhy3c1bZJQ;

    invoke-direct {v1, p0, p3, p2}, Lcab/snapp/passenger/a/-$$Lambda$k$c$vEDk6w7IgGOp08-nAyhy3c1bZJQ;-><init>(Lcab/snapp/passenger/a/k$c;Lcab/snapp/passenger/a/k$a;Lcab/snapp/passenger/a/k$b;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/a/j;->setOnItemClickListener(Lcab/snapp/passenger/a/j$a;)V

    .line 171
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 174
    invoke-virtual {p0}, Lcab/snapp/passenger/a/k$c;->hideTitle()V

    return-void

    :cond_0
    const/4 p3, 0x5

    const v0, 0x7f1202a5

    if-ge p1, p3, :cond_2

    .line 178
    iget-object p1, p0, Lcab/snapp/passenger/a/k$c;->c:Landroid/widget/TextView;

    iget-boolean p2, p2, Lcab/snapp/passenger/a/k$b;->isNegative:Z

    if-eqz p2, :cond_1

    const v0, 0x7f1202a8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 179
    invoke-virtual {p0}, Lcab/snapp/passenger/a/k$c;->showTitle()V

    return-void

    .line 183
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/a/k$c;->c:Landroid/widget/TextView;

    iget-boolean p2, p2, Lcab/snapp/passenger/a/k$b;->isNegative:Z

    if-eqz p2, :cond_3

    const v0, 0x7f1200fd

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 184
    invoke-virtual {p0}, Lcab/snapp/passenger/a/k$c;->showTitle()V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcab/snapp/passenger/a/k$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final showTitle()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcab/snapp/passenger/a/k$c;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
