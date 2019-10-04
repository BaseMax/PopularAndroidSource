.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 56
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->c:Z

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 63
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->c:Z

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    return p0

    .line 163
    :cond_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/a$k;->FlowLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 70
    sget p2, Lcom/google/android/material/a$k;->FlowLayout_lineSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->a:I

    .line 71
    sget p2, Lcom/google/android/material/a$k;->FlowLayout_itemSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->b:I

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->b:I

    return v0
.end method

.method protected getLineSpacing()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->a:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 p3, 0x1

    const/4 p5, 0x0

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result p1

    :goto_1
    if-eqz p3, :cond_3

    .line 178
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v0

    .line 180
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    move v0, p1

    move v2, v1

    const/4 p2, 0x0

    .line 186
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v3

    if-ge p2, v3, :cond_8

    .line 187
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 196
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_4

    .line 197
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 198
    invoke-static {v4}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    .line 199
    invoke-static {v4}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    add-int v6, v0, v5

    .line 202
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 204
    iget-boolean v7, p0, Lcom/google/android/material/internal/FlowLayout;->c:Z

    if-nez v7, :cond_5

    if-le v6, p4, :cond_5

    .line 206
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->a:I

    add-int v2, v1, v0

    move v0, p1

    :cond_5
    add-int v1, v0, v5

    .line 209
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    .line 210
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    if-eqz p3, :cond_6

    sub-int v1, p4, v6

    sub-int v6, p4, v0

    sub-int/2addr v6, v5

    .line 213
    invoke-virtual {v3, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 216
    :cond_6
    invoke-virtual {v3, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    :goto_5
    add-int/2addr v5, v4

    .line 219
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v5, v1

    iget v1, p0, Lcom/google/android/material/internal/FlowLayout;->b:I

    add-int/2addr v5, v1

    add-int/2addr v0, v5

    move v1, v7

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 102
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 105
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 106
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7fffffff

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    .line 113
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    move v10, v6

    move v9, v7

    move v11, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 119
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 120
    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 122
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_5

    move/from16 v13, p1

    move/from16 v14, p2

    .line 125
    invoke-virtual {v0, v12, v13, v14}, Lcom/google/android/material/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 127
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 130
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_2

    .line 131
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v16, 0x0

    add-int/lit8 v8, v8, 0x0

    .line 133
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/lit8 v15, v15, 0x0

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_3
    add-int v17, v10, v8

    .line 136
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v19, v10

    add-int v10, v17, v18

    if-le v10, v5, :cond_3

    .line 1092
    iget-boolean v10, v0, Lcom/google/android/material/internal/FlowLayout;->c:Z

    if-nez v10, :cond_3

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v10

    .line 140
    iget v11, v0, Lcom/google/android/material/internal/FlowLayout;->a:I

    add-int/2addr v11, v9

    move/from16 v19, v10

    :cond_3
    add-int v9, v19, v8

    .line 143
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 144
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v11

    if-le v9, v7, :cond_4

    move v7, v9

    :cond_4
    add-int/2addr v8, v15

    .line 150
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v0, Lcom/google/android/material/internal/FlowLayout;->b:I

    add-int/2addr v8, v9

    add-int v19, v19, v8

    move v9, v10

    move/from16 v10, v19

    goto :goto_4

    :cond_5
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v19, v10

    const/16 v16, 0x0

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 153
    :cond_6
    invoke-static {v1, v2, v7}, Lcom/google/android/material/internal/FlowLayout;->a(III)I

    move-result v1

    .line 154
    invoke-static {v3, v4, v9}, Lcom/google/android/material/internal/FlowLayout;->a(III)I

    move-result v2

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setItemSpacing(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->b:I

    return-void
.end method

.method protected setLineSpacing(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->a:I

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->c:Z

    return-void
.end method
