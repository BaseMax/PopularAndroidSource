.class public final Lcab/snapp/passenger/a/k;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/k$c;,
        Lcab/snapp/passenger/a/k$b;,
        Lcab/snapp/passenger/a/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcab/snapp/passenger/a/k$a;

.field private final b:Lcab/snapp/passenger/data/models/RideRatingModel;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/a/k$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/data/models/RideRatingModel;Ljava/util/List;Lcab/snapp/passenger/a/k$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data/models/RideRatingModel;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/a/k$b;",
            ">;",
            "Lcab/snapp/passenger/a/k$a;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 39
    iput-object p2, p0, Lcab/snapp/passenger/a/k;->c:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcab/snapp/passenger/a/k;->a:Lcab/snapp/passenger/a/k$a;

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/a/k;->b:Lcab/snapp/passenger/data/models/RideRatingModel;

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcab/snapp/passenger/a/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 81
    new-instance v0, Lcab/snapp/passenger/a/k$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00c9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/a/k$c;-><init>(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcab/snapp/passenger/a/k;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/a/k$b;

    .line 83
    iget-object v1, p0, Lcab/snapp/passenger/a/k;->b:Lcab/snapp/passenger/data/models/RideRatingModel;

    iget-object v2, p0, Lcab/snapp/passenger/a/k;->a:Lcab/snapp/passenger/a/k$a;

    invoke-virtual {v0, v1, p2, v2}, Lcab/snapp/passenger/a/k$c;->initialize(Lcab/snapp/passenger/data/models/RideRatingModel;Lcab/snapp/passenger/a/k$b;Lcab/snapp/passenger/a/k$a;)V

    .line 1131
    iget-object p2, v0, Lcab/snapp/passenger/a/k$c;->a:Landroid/view/View;

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2131
    iget-object p1, v0, Lcab/snapp/passenger/a/k$c;->a:Landroid/view/View;

    return-object p1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/a/k$b;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcab/snapp/passenger/a/k;->c:Ljava/util/List;

    return-void
.end method
