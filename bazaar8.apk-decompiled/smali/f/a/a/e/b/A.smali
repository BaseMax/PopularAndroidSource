.class public Lf/a/a/e/b/A;
.super Lf/a/a/e/b/n;
.source "PhotoSliderInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/b/A$a;
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lir/cafebazaar/inline/ui/inflaters/ImageInflater;",
            ">;"
        }
    .end annotation
.end field

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lf/a/a/e/b/A;->d:F

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/A;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/A;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/e/b/A;)F
    .locals 0

    .line 1
    iget p0, p0, Lf/a/a/e/b/A;->d:F

    return p0
.end method

.method public static synthetic c(Lf/a/a/e/b/A;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/b/A;->c()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 4
    sget v0, Lf/a/a/e;->pager:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ui/inflaters/views/AspectRatioViewPager;

    .line 5
    iget v1, p0, Lf/a/a/e/b/A;->d:F

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ui/inflaters/views/AspectRatioViewPager;->setAspectRatio(F)V

    .line 6
    new-instance v1, Lf/a/a/e/b/A$a;

    invoke-direct {v1, p0, p1}, Lf/a/a/e/b/A$a;-><init>(Lf/a/a/e/b/A;Lf/a/a/e/g;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/G/a/a;)V

    .line 7
    sget p1, Lf/a/a/e;->indicator:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator;

    .line 8
    invoke-virtual {p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-object p2
.end method

.method public a(F)V
    .locals 0

    .line 3
    iput p1, p0, Lf/a/a/e/b/A;->d:F

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lir/cafebazaar/inline/ui/inflaters/ImageInflater;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/A;->c:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    sget v0, Lf/a/a/f;->inline_photo_slider:I

    return v0
.end method

.method public final c()[Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/A;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lf/a/a/e/b/A;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lf/a/a/e/b/A;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
