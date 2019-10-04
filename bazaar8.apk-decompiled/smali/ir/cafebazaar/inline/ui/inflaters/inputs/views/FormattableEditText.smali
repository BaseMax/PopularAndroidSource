.class public Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "FormattableEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;
    }
.end annotation


# instance fields
.field public d:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getFormattedText()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 6
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;->getFormattedText()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 8
    invoke-virtual {p0}, Landroid/widget/EditText;->getBaseline()I

    move-result v3

    const/16 v4, 0xff

    .line 9
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v3, v3

    .line 10
    invoke-virtual {p1, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawingTime()J

    move-result-wide v4

    const-wide/16 v8, 0x1f4

    div-long/2addr v4, v8

    const-wide/16 v8, 0x2

    rem-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    .line 13
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    iget-object v5, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;

    .line 15
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v6

    invoke-interface {v5, v0, v6}, Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v2, v0

    .line 17
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 18
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v2, v0

    .line 19
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float v4, v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v5, v2, v1

    .line 20
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float v6, v3, v1

    move-object v2, p1

    move v3, v0

    .line 21
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFormatter(Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;

    return-void
.end method
