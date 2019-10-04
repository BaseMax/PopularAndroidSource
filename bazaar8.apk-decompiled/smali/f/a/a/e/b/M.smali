.class public Lf/a/a/e/b/M;
.super Lir/cafebazaar/inline/ui/inflaters/PageInflater;
.source "SplashPageInflater.java"


# instance fields
.field public f:Lf/a/a/g/d/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;
    .locals 5

    .line 2
    sget v0, Lf/a/a/f;->inline_page:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    sget v0, Lf/a/a/e;->scroll_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v3, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->c:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->getId()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-interface {p3}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    sget v0, Lf/a/a/e;->container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    iget-object v2, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/a/a/e/b/n;

    .line 10
    invoke-virtual {v3, p1, v0, p3}, Lf/a/a/e/b/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/e/b/Q;

    .line 12
    invoke-interface {v0}, Lf/a/a/e/b/Q;->f()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 13
    invoke-interface {v0, v2, p3}, Lf/a/a/e/b/Q;->a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;

    .line 14
    invoke-virtual {v2, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public a(Lf/a/a/g/d/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/M;->f:Lf/a/a/g/d/a/b;

    return-void
.end method

.method public c()Lf/a/a/g/d/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/M;->f:Lf/a/a/g/d/a/b;

    return-object v0
.end method
