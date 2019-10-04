.class public Lir/cafebazaar/inline/ux/list/WrapContentLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "WrapContentLinearLayoutManager.java"


# instance fields
.field public H:[I


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$p;III[I)V
    .locals 4

    .line 16
    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 17
    invoke-super {p0, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;II)V

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->o()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->p()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->f(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->i(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 20
    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->q()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->n()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->n()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->e(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 22
    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 23
    invoke-virtual {p2, p3, p4}, Landroid/view/View;->measure(II)V

    .line 24
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->h(Landroid/view/View;)I

    move-result p3

    iget p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p4

    aput p3, p5, v0

    const/4 p3, 0x1

    .line 25
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->g(Landroid/view/View;)I

    move-result p4

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p4, v0

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p4, v0

    aput p4, p5, p3

    .line 26
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;II)V
    .locals 15

    move-object v6, p0

    .line 1
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 2
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 3
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 4
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->j()I

    move-result v0

    if-ge v12, v0, :cond_2

    .line 6
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 7
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, v6, Lir/cafebazaar/inline/ux/list/WrapContentLinearLayoutManager;->H:[I

    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v12

    .line 8
    invoke-virtual/range {v0 .. v5}, Lir/cafebazaar/inline/ux/list/WrapContentLinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;III[I)V

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 10
    iget-object v0, v6, Lir/cafebazaar/inline/ux/list/WrapContentLinearLayoutManager;->H:[I

    aget v2, v0, v11

    add-int/2addr v14, v2

    if-nez v12, :cond_1

    .line 11
    aget v13, v0, v1

    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, v6, Lir/cafebazaar/inline/ux/list/WrapContentLinearLayoutManager;->H:[I

    aget v1, v0, v1

    add-int/2addr v13, v1

    if-nez v12, :cond_1

    .line 13
    aget v14, v0, v11

    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    if-ge v13, v10, :cond_5

    if-ge v14, v9, :cond_5

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v7, v0, :cond_3

    goto :goto_2

    :cond_3
    move v14, v9

    :goto_2
    if-eq v8, v0, :cond_4

    goto :goto_3

    :cond_4
    move v13, v10

    .line 14
    :goto_3
    invoke-virtual {p0, v14, v13}, Landroidx/recyclerview/widget/RecyclerView$i;->c(II)V

    goto :goto_4

    .line 15
    :cond_5
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;II)V

    :goto_4
    return-void
.end method
