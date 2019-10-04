.class public Lcom/apptentive/android/sdk/view/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/view/AutoResizeTextView$OnTextResizeListener;
    }
.end annotation


# static fields
.field public static final MIN_TEXT_SIZE:F = 20.0f


# instance fields
.field private mAddEllipsis:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextResizeListener:Lcom/apptentive/android/sdk/view/AutoResizeTextView$OnTextResizeListener;

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mNeedsResize:Z

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMaxTextSize:F

    const/high16 p2, 0x41a00000    # 20.0f

    .line 57
    iput p2, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMinTextSize:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 60
    iput p2, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingMult:F

    .line 63
    iput p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingAdd:F

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mAddEllipsis:Z

    .line 81
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextSize:F

    return-void
.end method

.method private getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8

    .line 317
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 319
    invoke-virtual {v2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 321
    new-instance p2, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingMult:F

    iget v6, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingAdd:F

    const/4 v7, 0x1

    move-object v0, p2

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 322
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    return p1
.end method


# virtual methods
.method public getAddEllipsis()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mAddEllipsis:Z

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .line 158
    iget v0, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMinTextSize:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-nez p1, :cond_0

    .line 214
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mNeedsResize:Z

    if-eqz v0, :cond_1

    :cond_0
    sub-int v0, p4, p2

    .line 215
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p5, p3

    .line 216
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->resizeText(II)V

    .line 219
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mNeedsResize:Z

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mNeedsResize:Z

    .line 91
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->resetTextSize()V

    return-void
.end method

.method public resetTextSize()V
    .locals 2

    .line 203
    iget v0, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 204
    iget v1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextSize:F

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 205
    iget v0, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextSize:F

    iput v0, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMaxTextSize:F

    :cond_0
    return-void
.end method

.method public resizeText()V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 228
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 229
    invoke-virtual {p0, v1, v0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->resizeText(II)V

    return-void
.end method

.method public resizeText(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p2

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 241
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_8

    if-lez v10, :cond_8

    if-lez v9, :cond_8

    iget v2, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 245
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    move-object v11, v1

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    .line 253
    invoke-virtual {v12}, Landroid/text/TextPaint;->getTextSize()F

    move-result v13

    .line 255
    iget v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMaxTextSize:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextSize:F

    iget v2, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMaxTextSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextSize:F

    .line 258
    :goto_0
    invoke-direct {v0, v11, v12, v9, v1}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v2

    move v14, v1

    :goto_1
    if-le v2, v10, :cond_3

    .line 261
    iget v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v1, v14, v1

    if-lez v1, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v14, v1

    .line 262
    iget v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMinTextSize:F

    invoke-static {v14, v1}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 263
    invoke-direct {v0, v11, v12, v9, v14}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v2

    goto :goto_1

    .line 267
    :cond_3
    iget-boolean v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mAddEllipsis:Z

    const/4 v15, 0x0

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMinTextSize:F

    cmpl-float v1, v14, v1

    if-nez v1, :cond_6

    if-le v2, v10, :cond_6

    .line 270
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v12}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 272
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v6, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingMult:F

    iget v7, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingAdd:F

    const/16 v16, 0x0

    move-object v1, v8

    move-object v2, v11

    move/from16 v4, p1

    move-object/from16 v17, v8

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 274
    invoke-virtual/range {v17 .. v17}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_6

    move-object/from16 v1, v17

    .line 277
    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_4

    const-string v1, ""

    .line 280
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 284
    :cond_4
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 285
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    .line 286
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    const-string v2, "..."

    .line 287
    invoke-virtual {v12, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    :goto_2
    int-to-float v5, v9

    add-float/2addr v1, v2

    cmpg-float v1, v5, v1

    if-gez v1, :cond_5

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v4, 0x1

    .line 291
    invoke-interface {v11, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    goto :goto_2

    .line 293
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11, v15, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_6
    :goto_3
    invoke-virtual {v0, v15, v14}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->setTextSize(IF)V

    .line 301
    iget v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingAdd:F

    iget v2, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingMult:F

    invoke-virtual {v0, v1, v2}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->setLineSpacing(FF)V

    .line 304
    iget-object v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextResizeListener:Lcom/apptentive/android/sdk/view/AutoResizeTextView$OnTextResizeListener;

    if-eqz v1, :cond_7

    .line 305
    iget-object v1, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextResizeListener:Lcom/apptentive/android/sdk/view/AutoResizeTextView$OnTextResizeListener;

    invoke-interface {v1, v0, v13, v14}, Lcom/apptentive/android/sdk/view/AutoResizeTextView$OnTextResizeListener;->onTextResize(Landroid/widget/TextView;FF)V

    .line 309
    :cond_7
    iput-boolean v15, v0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mNeedsResize:Z

    return-void

    :cond_8
    :goto_4
    return-void
.end method

.method public setAddEllipsis(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mAddEllipsis:Z

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 137
    iput p2, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingMult:F

    .line 138
    iput p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mSpacingAdd:F

    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMaxTextSize:F

    .line 148
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->requestLayout()V

    .line 149
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->invalidate()V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mMinTextSize:F

    .line 168
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->requestLayout()V

    .line 169
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->invalidate()V

    return-void
.end method

.method public setOnResizeListener(Lcom/apptentive/android/sdk/view/AutoResizeTextView$OnTextResizeListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextResizeListener:Lcom/apptentive/android/sdk/view/AutoResizeTextView$OnTextResizeListener;

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextSize:F

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/apptentive/android/sdk/view/AutoResizeTextView;->mTextSize:F

    return-void
.end method
