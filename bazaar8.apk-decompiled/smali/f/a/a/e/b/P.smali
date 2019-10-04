.class public Lf/a/a/e/b/P;
.super Lf/a/a/e/b/n;
.source "TableRowInflater.java"


# instance fields
.field public c:Lir/cafebazaar/inline/ux/table/TableRowDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf/a/a/e/g;)Landroid/content/Context;
    .locals 1

    .line 29
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    return-object p1
.end method

.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .line 1
    sget v0, Lf/a/a/e;->inlineTableRowParent:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lf/a/a/e/b/P;->c:Lir/cafebazaar/inline/ux/table/TableRowDescriptor;

    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->b()Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    move-result-object v1

    sget-object v2, Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;->FIX:Lir/cafebazaar/inline/ux/table/TableRowDescriptor$HeightCell;

    const/4 v3, -0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x30

    .line 4
    invoke-static {v1}, Lf/a/a/f/c;->a(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 5
    :cond_0
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lf/a/a/e/b/P;->c:Lir/cafebazaar/inline/ux/table/TableRowDescriptor;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 8
    iget-object v4, p0, Lf/a/a/e/b/P;->c:Lir/cafebazaar/inline/ux/table/TableRowDescriptor;

    invoke-virtual {v4}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lf/a/a/e/b/P;->b(Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 10
    :cond_1
    iget-object v4, p0, Lf/a/a/e/b/P;->c:Lir/cafebazaar/inline/ux/table/TableRowDescriptor;

    invoke-virtual {v4}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/a/a/e/b/n;

    .line 11
    invoke-virtual {p0, p1}, Lf/a/a/e/b/P;->a(Lf/a/a/e/g;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 12
    invoke-virtual {v4}, Lf/a/a/e/b/n;->b()I

    move-result v6

    .line 13
    invoke-virtual {v5, v6, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 14
    invoke-virtual {v4, p1, v5}, Lf/a/a/e/b/n;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 15
    invoke-virtual {v4}, Lf/a/a/e/b/n;->a()F

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 16
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 17
    :cond_2
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    invoke-virtual {v4}, Lf/a/a/e/b/n;->a()F

    move-result v4

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object v4, v6

    :goto_2
    const/16 v6, 0x11

    .line 19
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v6, 0x4

    .line 20
    invoke-static {v6}, Lf/a/a/f/c;->a(I)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 21
    invoke-static {v6}, Lf/a/a/f/c;->a(I)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-nez v2, :cond_3

    .line 22
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_4

    .line 23
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 24
    :cond_4
    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_5
    iget-object v0, p0, Lf/a/a/e/b/P;->c:Lir/cafebazaar/inline/ux/table/TableRowDescriptor;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {p0, p1}, Lf/a/a/e/b/P;->b(Lf/a/a/e/g;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    return-object p2
.end method

.method public a(Lir/cafebazaar/inline/ux/table/TableRowDescriptor;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lf/a/a/e/b/P;->c:Lir/cafebazaar/inline/ux/table/TableRowDescriptor;

    return-void
.end method

.method public b()I
    .locals 1

    .line 5
    sget v0, Lf/a/a/f;->inline_table_row:I

    return v0
.end method

.method public final b(Lf/a/a/e/g;)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-static {v1}, Lf/a/a/f/c;->a(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lf/a/a/e/b/P;->a(Lf/a/a/e/g;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lf/a/a/e/b/P;->c:Lir/cafebazaar/inline/ux/table/TableRowDescriptor;

    invoke-virtual {v0, p1}, Lir/cafebazaar/inline/ux/table/TableRowDescriptor;->a(Lf/a/a/e/g;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v1
.end method
