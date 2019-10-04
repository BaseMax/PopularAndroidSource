.class public Lcom/ebay/android/widget/ButtonBar;
.super Landroid/widget/LinearLayout;
.source "ButtonBar.java"


# instance fields
.field private dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private dividerHeight:I

.field private negativeButton:Landroid/widget/Button;

.field private neutralButton:Landroid/widget/Button;

.field private positiveButton:Landroid/widget/Button;

.field private showTopDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x101032e

    .line 70
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, 0x0

    .line 72
    invoke-virtual {v0, v4}, Lcom/ebay/android/widget/ButtonBar;->setMotionEventSplittingEnabled(Z)V

    .line 89
    sget-object v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar:[I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    :goto_0
    if-ge v7, v3, :cond_d

    .line 94
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 95
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_positiveSide:I

    if-ne v6, v5, :cond_1

    .line 96
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    move v12, v5

    goto/16 :goto_3

    .line 97
    :cond_1
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_positiveButtonText:I

    if-ne v6, v5, :cond_2

    .line 98
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move/from16 v18, v5

    goto/16 :goto_3

    .line 99
    :cond_2
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_neutralButtonText:I

    if-ne v6, v5, :cond_3

    .line 100
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move/from16 v16, v5

    goto/16 :goto_3

    .line 101
    :cond_3
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_negativeButtonText:I

    if-ne v6, v5, :cond_4

    .line 102
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v14, v5

    goto :goto_3

    .line 103
    :cond_4
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_positiveButtonId:I

    if-ne v6, v5, :cond_5

    const/4 v5, -0x1

    .line 104
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move/from16 v17, v6

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    .line 105
    sget v4, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_neutralButtonId:I

    if-ne v6, v4, :cond_6

    .line 106
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v15, v4

    :goto_2
    const/4 v4, 0x0

    goto :goto_3

    .line 107
    :cond_6
    sget v4, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_negativeButtonId:I

    if-ne v6, v4, :cond_7

    .line 108
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v13, v4

    goto :goto_2

    .line 109
    :cond_7
    sget v4, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_buttonLayout:I

    if-ne v6, v4, :cond_8

    const/4 v4, 0x0

    .line 110
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v8, v6

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 111
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_positiveButtonLayout:I

    if-ne v6, v5, :cond_9

    .line 112
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v9, v5

    goto :goto_3

    .line 113
    :cond_9
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_neutralButtonLayout:I

    if-ne v6, v5, :cond_a

    .line 114
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v10, v5

    goto :goto_3

    .line 115
    :cond_a
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_negativeButtonLayout:I

    if-ne v6, v5, :cond_b

    .line 116
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v11, v5

    goto :goto_3

    .line 117
    :cond_b
    sget v5, Lcom/ebay/nautilus/shell/R$styleable;->ButtonBar_showTopDivider:I

    if-ne v6, v5, :cond_c

    .line 118
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/ebay/android/widget/ButtonBar;->showTopDivider:Z

    :cond_c
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 121
    :cond_d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v2, 0x10

    .line 123
    invoke-virtual {v0, v2}, Lcom/ebay/android/widget/ButtonBar;->setGravity(I)V

    if-gtz v8, :cond_e

    .line 126
    sget v8, Lcom/ebay/nautilus/shell/R$layout;->button_bar_button:I

    :cond_e
    if-gtz v9, :cond_f

    move v9, v8

    :cond_f
    if-gtz v10, :cond_10

    move v10, v8

    :cond_10
    if-gtz v11, :cond_11

    goto :goto_4

    :cond_11
    move v8, v11

    .line 134
    :goto_4
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-eqz v12, :cond_12

    .line 138
    invoke-direct {v0, v1, v8, v13, v14}, Lcom/ebay/android/widget/ButtonBar;->createButton(Landroid/view/LayoutInflater;III)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/ebay/android/widget/ButtonBar;->negativeButton:Landroid/widget/Button;

    move/from16 v4, v16

    .line 139
    invoke-direct {v0, v1, v10, v15, v4}, Lcom/ebay/android/widget/ButtonBar;->createButton(Landroid/view/LayoutInflater;III)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/ebay/android/widget/ButtonBar;->neutralButton:Landroid/widget/Button;

    move/from16 v6, v17

    move/from16 v2, v18

    .line 140
    invoke-direct {v0, v1, v9, v6, v2}, Lcom/ebay/android/widget/ButtonBar;->createButton(Landroid/view/LayoutInflater;III)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/android/widget/ButtonBar;->positiveButton:Landroid/widget/Button;

    goto :goto_5

    :cond_12
    move/from16 v4, v16

    move/from16 v6, v17

    move/from16 v2, v18

    .line 144
    invoke-direct {v0, v1, v9, v6, v2}, Lcom/ebay/android/widget/ButtonBar;->createButton(Landroid/view/LayoutInflater;III)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/ebay/android/widget/ButtonBar;->positiveButton:Landroid/widget/Button;

    .line 145
    invoke-direct {v0, v1, v10, v15, v4}, Lcom/ebay/android/widget/ButtonBar;->createButton(Landroid/view/LayoutInflater;III)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/ebay/android/widget/ButtonBar;->neutralButton:Landroid/widget/Button;

    .line 146
    invoke-direct {v0, v1, v8, v13, v14}, Lcom/ebay/android/widget/ButtonBar;->createButton(Landroid/view/LayoutInflater;III)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/android/widget/ButtonBar;->negativeButton:Landroid/widget/Button;

    :goto_5
    return-void
.end method

.method private createButton(Landroid/view/LayoutInflater;III)Landroid/widget/Button;
    .locals 3

    if-gtz p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/ButtonBar;->isInEditMode()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 160
    new-instance p1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ebay/android/widget/ButtonBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    :goto_0
    if-eq p3, v1, :cond_2

    .line 168
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setId(I)V

    .line 170
    :cond_2
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setText(I)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/ButtonBar;->addView(Landroid/view/View;)V

    return-object p1
.end method


# virtual methods
.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/ebay/android/widget/ButtonBar;->negativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getNeutralButton()Landroid/widget/Button;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/ebay/android/widget/ButtonBar;->neutralButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/ebay/android/widget/ButtonBar;->positiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 209
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 211
    iget-boolean v0, p0, Lcom/ebay/android/widget/ButtonBar;->showTopDivider:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/ButtonBar;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/android/widget/ButtonBar;->dividerHeight:I

    if-lez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/ebay/android/widget/ButtonBar;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/ebay/android/widget/ButtonBar;->getRight()I

    move-result v1

    iget v2, p0, Lcom/ebay/android/widget/ButtonBar;->dividerHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 214
    iget-object v0, p0, Lcom/ebay/android/widget/ButtonBar;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 221
    iput-object p1, p0, Lcom/ebay/android/widget/ButtonBar;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/ebay/android/widget/ButtonBar;->dividerHeight:I

    .line 224
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
