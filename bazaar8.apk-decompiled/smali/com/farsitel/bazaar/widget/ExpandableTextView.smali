.class public final Lcom/farsitel/bazaar/widget/ExpandableTextView;
.super Landroid/widget/LinearLayout;
.source "ExpandableTextView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroidx/appcompat/widget/AppCompatTextView;

.field public b:Landroid/view/View;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/widget/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/widget/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->c:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->d:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/ExpandableTextView;->setOrientation(I)V

    .line 6
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/widget/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getChildAt(1)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->b:Landroid/view/View;

    return-void

    .line 4
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.widget.AppCompatTextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 5
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v0, "rotate"

    .line 6
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x42b40000    # 90.0f
        0x43870000    # 270.0f
    .end array-data
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v0, "rotate"

    .line 2
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x43870000    # 270.0f
        0x42b40000    # 90.0f
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->d:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->d:Z

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 3
    iget-boolean v1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->d:Z

    if-eqz v1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->c:I

    .line 5
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    iget-boolean p1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->d:Z

    const-string v1, "toggleView"

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/ExpandableTextView;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->b:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/widget/ExpandableTextView;->b(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_3
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "textView"

    .line 9
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/ExpandableTextView;->a()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->b:Landroid/view/View;

    const-string v1, "toggleView"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "textView"

    if-eqz v0, :cond_6

    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->a:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v4, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->c:I

    if-gt v0, v4, :cond_1

    return-void

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->d:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->a:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/ExpandableTextView;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 12
    :cond_4
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_5
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_6
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_7
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExpandableTextView only supports Vertical Orientation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
