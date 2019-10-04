.class public Lf/a/a/g/e/c;
.super Lf/a/a/e/b/n;
.source "LoadMoreInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 1
    sget v0, Lf/a/a/e;->progressBar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance v1, Lf/a/a/e/c/b;

    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v2

    invoke-direct {v1, v2}, Lf/a/a/e/c/b;-><init>(I)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    return-object p2
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_load_more:I

    return v0
.end method
