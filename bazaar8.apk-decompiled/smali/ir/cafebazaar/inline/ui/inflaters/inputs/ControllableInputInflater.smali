.class public abstract Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
.super Lf/a/a/e/b/b/B;
.source "ControllableInputInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$a;,
        Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;
    }
.end annotation


# instance fields
.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/b/B;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/View;Z)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->b(Landroid/view/View;Landroid/view/View;Z)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;Landroid/view/View;Z)Landroid/view/animation/Animation;
    .locals 18

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x2

    .line 2
    new-array v3, v2, [I

    move-object/from16 v4, p0

    .line 3
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    new-array v2, v2, [I

    move-object/from16 v5, p1

    .line 5
    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    new-instance v6, Landroid/graphics/PointF;

    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v8, v5

    int-to-float v5, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v0

    sub-float/2addr v5, v8

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-float v2, v2

    invoke-direct {v6, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    if-eqz p2, :cond_1

    move v10, v0

    goto :goto_0

    :cond_1
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p2, :cond_2

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move v11, v0

    :goto_1
    if-eqz p2, :cond_3

    move v12, v0

    goto :goto_2

    :cond_3
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_2
    if-eqz p2, :cond_4

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    move v13, v0

    :goto_3
    const/4 v14, 0x1

    aget v5, v3, v7

    int-to-float v5, v5

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    sub-float/2addr v0, v1

    div-float/2addr v5, v0

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v15, v5, v1

    const/16 v16, 0x1

    aget v1, v3, v8

    int-to-float v1, v1

    iget v3, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v0

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v17, v1, v0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    return-object v2
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .line 3
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->x()Lf/a/a/g/h/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/a/a/e/b/b/B;->a(Lf/a/a/g/h/b;)V

    .line 4
    sget v0, Lf/a/a/e;->error:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 5
    sget v0, Lf/a/a/e;->placeholder:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 6
    sget v0, Lf/a/a/e;->placeholder_small:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    .line 7
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v6

    .line 8
    sget v0, Lf/a/a/e;->stub:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 9
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lf/a/a/e/b/b/B;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v6}, Lir/cafebazaar/inline/ui/Theme;->e()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-virtual {p0}, Lf/a/a/e/b/b/B;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v6}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    new-instance v7, Lf/a/a/e/b/b/q;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lf/a/a/e/b/b/q;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lir/cafebazaar/inline/ui/Theme;)V

    invoke-virtual {p0, v0, p1, v7}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;

    move-result-object v0

    .line 16
    iget-boolean v1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->f:Z

    .line 17
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v2

    instance-of v2, v2, Lf/a/a/e/c;

    if-eqz v2, :cond_0

    .line 18
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object p1

    check-cast p1, Lf/a/a/e/c;

    new-instance v2, Lf/a/a/e/b/b/r;

    invoke-direct {v2, p0, v1, v0}, Lf/a/a/e/b/b/r;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;ZLf/a/a/e/b/b/B$a;)V

    invoke-virtual {p0, p1, v2}, Lf/a/a/e/b/b/B;->a(Lf/a/a/e/c;Lf/a/a/e/b/b/B$a;)V

    return-object p2

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u0634\u0645\u0627 \u0645\u062c\u0627\u0632 \u0628\u0647 \u0627\u0633\u062a\u0641\u0627\u062f\u0647 \u0627\u0632 \u0627\u06cc\u0646\u067e\u0648\u062a \u062f\u0631 \u0635\u0641\u062d\u0647 \u067e\u06cc\u0634\u200c\u062f\u0631\u0622\u0645\u062f \u0646\u06cc\u0633\u062a\u06cc\u062f"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;->f:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 10
    sget v0, Lf/a/a/f;->inline_input:I

    return v0
.end method

.method public abstract f()I
.end method
