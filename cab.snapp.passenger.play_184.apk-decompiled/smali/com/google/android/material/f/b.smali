.class public final Lcom/google/android/material/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Landroid/graphics/Typeface;

.field private final c:I

.field public final fontFamily:Ljava/lang/String;

.field public final shadowColor:Landroid/content/res/ColorStateList;

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field public final textColor:Landroid/content/res/ColorStateList;

.field public final textColorHint:Landroid/content/res/ColorStateList;

.field public final textColorLink:Landroid/content/res/ColorStateList;

.field public final textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/google/android/material/f/b;->a:Z

    .line 74
    sget-object v1, Lcom/google/android/material/a$k;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 76
    sget v1, Lcom/google/android/material/a$k;->TextAppearance_android_textSize:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/f/b;->textSize:F

    .line 77
    sget v1, Lcom/google/android/material/a$k;->TextAppearance_android_textColor:I

    .line 78
    invoke-static {p1, p2, v1}, Lcom/google/android/material/f/a;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/f/b;->textColor:Landroid/content/res/ColorStateList;

    .line 80
    sget v1, Lcom/google/android/material/a$k;->TextAppearance_android_textColorHint:I

    .line 81
    invoke-static {p1, p2, v1}, Lcom/google/android/material/f/a;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/f/b;->textColorHint:Landroid/content/res/ColorStateList;

    .line 83
    sget v1, Lcom/google/android/material/a$k;->TextAppearance_android_textColorLink:I

    .line 84
    invoke-static {p1, p2, v1}, Lcom/google/android/material/f/a;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/f/b;->textColorLink:Landroid/content/res/ColorStateList;

    .line 86
    sget v1, Lcom/google/android/material/a$k;->TextAppearance_android_textStyle:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/f/b;->textStyle:I

    .line 87
    sget v1, Lcom/google/android/material/a$k;->TextAppearance_android_typeface:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/f/b;->typeface:I

    .line 88
    sget v1, Lcom/google/android/material/a$k;->TextAppearance_fontFamily:I

    sget v3, Lcom/google/android/material/a$k;->TextAppearance_android_fontFamily:I

    .line 1099
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 93
    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/f/b;->c:I

    .line 94
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/f/b;->fontFamily:Ljava/lang/String;

    .line 95
    sget v1, Lcom/google/android/material/a$k;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/f/b;->textAllCaps:Z

    .line 96
    sget v0, Lcom/google/android/material/a$k;->TextAppearance_android_shadowColor:I

    .line 97
    invoke-static {p1, p2, v0}, Lcom/google/android/material/f/a;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/f/b;->shadowColor:Landroid/content/res/ColorStateList;

    .line 99
    sget p1, Lcom/google/android/material/a$k;->TextAppearance_android_shadowDx:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/f/b;->shadowDx:F

    .line 100
    sget p1, Lcom/google/android/material/a$k;->TextAppearance_android_shadowDy:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/f/b;->shadowDy:F

    .line 101
    sget p1, Lcom/google/android/material/a$k;->TextAppearance_android_shadowRadius:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/f/b;->shadowRadius:F

    .line 103
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/material/f/b;->fontFamily:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/material/f/b;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    .line 199
    iget v0, p0, Lcom/google/android/material/f/b;->typeface:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 210
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    goto :goto_0

    .line 207
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    goto :goto_0

    .line 204
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    goto :goto_0

    .line 201
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    if-eqz v0, :cond_4

    .line 214
    iget v1, p0, Lcom/google/android/material/f/b;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method

.method public final getFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/google/android/material/f/b;->a:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object p1, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    return-object p1

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :try_start_0
    iget v0, p0, Lcom/google/android/material/f/b;->c:I

    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    .line 122
    iget-object p1, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    iget v0, p0, Lcom/google/android/material/f/b;->textStyle:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error loading font "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/f/b;->fontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :catch_1
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/f/b;->a()V

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/google/android/material/f/b;->a:Z

    .line 134
    iget-object p1, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public final getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/google/android/material/f/b;->a:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/f/b;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/f/b;->a()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/google/android/material/f/b;->a:Z

    .line 158
    iget-object p1, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/f/b;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    return-void

    .line 164
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/google/android/material/f/b;->c:I

    new-instance v1, Lcom/google/android/material/f/b$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/material/f/b$1;-><init>(Lcom/google/android/material/f/b;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 187
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error loading font "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/material/f/b;->fontFamily:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catch_1
    return-void
.end method

.method public final updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 4

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/f/b;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 228
    iget-object p1, p0, Lcom/google/android/material/f/b;->textColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v0, p0, Lcom/google/android/material/f/b;->textColor:Landroid/content/res/ColorStateList;

    .line 230
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 228
    :goto_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 232
    iget p1, p0, Lcom/google/android/material/f/b;->shadowRadius:F

    iget p3, p0, Lcom/google/android/material/f/b;->shadowDx:F

    iget v0, p0, Lcom/google/android/material/f/b;->shadowDy:F

    iget-object v1, p0, Lcom/google/android/material/f/b;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v3, p0, Lcom/google/android/material/f/b;->shadowColor:Landroid/content/res/ColorStateList;

    .line 237
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 232
    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 1

    .line 249
    invoke-static {}, Lcom/google/android/material/f/c;->shouldLoadFontSynchronously()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/google/android/material/f/b;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/f/b;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/f/b;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 253
    iget-boolean p1, p0, Lcom/google/android/material/f/b;->a:Z

    if-nez p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/f/b;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method

.method public final updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 1

    .line 267
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    iget v0, p0, Lcom/google/android/material/f/b;->textStyle:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 271
    :goto_1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 273
    iget p2, p0, Lcom/google/android/material/f/b;->textSize:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
