.class public Lf/a/a/e/b/m;
.super Lf/a/a/e/b/n;
.source "DualButtonsInflater.java"


# instance fields
.field public c:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

.field public d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 9

    .line 2
    check-cast p2, Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lf/a/a/e/b/m;->c:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->c()Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->h()Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;)V

    .line 5
    iget-object v0, p0, Lf/a/a/e/b/m;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->c()Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->h()Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;)V

    .line 6
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lf/a/a/e/b/m;->c:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    invoke-virtual {v1, v0, p2, p1}, Lf/a/a/e/b/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lf/a/a/e/b/m;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    invoke-virtual {v2, v0, p2, p1}, Lf/a/a/e/b/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v0

    .line 9
    sget v2, Lf/a/a/e;->button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 10
    sget v3, Lf/a/a/e;->button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 11
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 12
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v6, 0xc

    .line 13
    invoke-static {v6}, Lf/a/a/f/c;->a(I)I

    move-result v7

    invoke-static {v6}, Lf/a/a/f/c;->a(I)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 14
    invoke-virtual {p2, v1, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p2, v0, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 17
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, -0x80000000

    .line 19
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 20
    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 21
    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 22
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/m;->c:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    sget v0, Lf/a/a/f;->inline_dualbuttons:I

    return v0
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/m;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    return-void
.end method
