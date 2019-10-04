.class public Lcab/snapp/snappuikit/MoneyAmountEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappuikit/MoneyAmountEditText$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z

.field d:Lcab/snapp/snappuikit/MoneyAmountEditText$a;

.field e:Landroid/graphics/Rect;

.field f:Landroid/graphics/Rect;

.field g:Landroid/graphics/Paint;

.field h:I

.field private final i:Landroid/text/TextWatcher;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->b:I

    .line 34
    iput-boolean v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->c:Z

    .line 77
    new-instance v1, Lcab/snapp/snappuikit/MoneyAmountEditText$1;

    invoke-direct {v1, p0}, Lcab/snapp/snappuikit/MoneyAmountEditText$1;-><init>(Lcab/snapp/snappuikit/MoneyAmountEditText;)V

    iput-object v1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->i:Landroid/text/TextWatcher;

    .line 203
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->e:Landroid/graphics/Rect;

    .line 204
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->f:Landroid/graphics/Rect;

    .line 207
    iput v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->h:I

    const-string v0, ""

    .line 282
    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->j:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->b:I

    .line 34
    iput-boolean p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->c:Z

    .line 77
    new-instance v0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/MoneyAmountEditText$1;-><init>(Lcab/snapp/snappuikit/MoneyAmountEditText;)V

    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->i:Landroid/text/TextWatcher;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->e:Landroid/graphics/Rect;

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->f:Landroid/graphics/Rect;

    .line 207
    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->h:I

    const-string p1, ""

    .line 282
    iput-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->j:Ljava/lang/String;

    .line 49
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/MoneyAmountEditText;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->b:I

    .line 34
    iput-boolean p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->c:Z

    .line 77
    new-instance p3, Lcab/snapp/snappuikit/MoneyAmountEditText$1;

    invoke-direct {p3, p0}, Lcab/snapp/snappuikit/MoneyAmountEditText$1;-><init>(Lcab/snapp/snappuikit/MoneyAmountEditText;)V

    iput-object p3, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->i:Landroid/text/TextWatcher;

    .line 203
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->e:Landroid/graphics/Rect;

    .line 204
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->f:Landroid/graphics/Rect;

    .line 207
    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->h:I

    const-string p1, ""

    .line 282
    iput-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->j:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/MoneyAmountEditText;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcab/snapp/snappuikit/a$h;->MoneyAmountEditText:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget v0, Lcab/snapp/snappuikit/a$h;->MoneyAmountEditText_maet_currency:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "\u0631\u06cc\u0627\u0644"

    .line 62
    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    .line 64
    :cond_0
    sget v0, Lcab/snapp/snappuikit/a$h;->MoneyAmountEditText_maet_currency_padding:I

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->spToPx(F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->b:I

    .line 65
    sget v0, Lcab/snapp/snappuikit/a$h;->MoneyAmountEditText_maet_center_based_on:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->c:Z

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    iget-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->i:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x2

    .line 69
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setInputType(I)V

    .line 70
    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setLayoutDirection(I)V

    .line 71
    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setTextDirection(I)V

    const/4 p1, 0x4

    .line 72
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setTextAlignment(I)V

    const/16 p1, 0x11

    .line 73
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setGravity(I)V

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappuikit/MoneyAmountEditText;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->b()V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->d:Lcab/snapp/snappuikit/MoneyAmountEditText$a;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getAmount()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcab/snapp/snappuikit/MoneyAmountEditText$a;->onMoneyAmountChanged(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeAmountBy(J)V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getAmount()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setAmount(J)V

    return-void
.end method

.method public getAmount()J
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getAmount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAmount(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 187
    invoke-static {p1}, Lcab/snapp/snappuikit/c/b;->stripNonNumerals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p1}, Lcab/snapp/snappuikit/c/b;->convertNumeralsToEnglish(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public getFormattedText(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    .line 167
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 168
    invoke-static {p1, p2}, Lcab/snapp/c/j;->formatLong(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 213
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 214
    invoke-direct {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->a()Z

    move-result v0

    .line 1289
    iget-boolean v4, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->c:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1290
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iput-object v4, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    .line 1293
    iget-object v4, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    iget-object v5, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->f:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1295
    iget-object v4, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->b:I

    add-int/2addr v4, v5

    .line 1297
    invoke-direct {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    neg-int v4, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 216
    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p0, v4, v3, v3, v3}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setPadding(IIII)V

    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {p0, v3, v3, v4, v3}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setPadding(IIII)V

    .line 224
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iput-object v5, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    .line 226
    iget-object v5, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    iget-object v8, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->e:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 227
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getMeasuredWidth()I

    move-result v5

    .line 228
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getMeasuredHeight()I

    move-result v6

    .line 229
    iget-object v7, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->e:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 231
    iget-object v8, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    iget-object v9, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->f:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v3, v10, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 233
    iget-object v3, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->f:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 234
    iget-object v8, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->f:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 238
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v0, :cond_3

    sub-int/2addr v5, v7

    int-to-float v0, v5

    div-float/2addr v0, v2

    .line 242
    iget v5, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->b:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v3, v4

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    goto :goto_2

    :cond_3
    add-int/2addr v5, v7

    int-to-float v0, v5

    div-float/2addr v0, v2

    iget v3, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->b:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    int-to-float v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    .line 246
    :goto_2
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    int-to-float v0, v6

    div-float/2addr v0, v2

    int-to-float v2, v8

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 247
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->a:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 256
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->j:Ljava/lang/String;

    const-string v0, ""

    .line 257
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 259
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    .line 261
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    iget-object v4, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->j:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 262
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getMeasuredWidth()I

    move-result v0

    .line 263
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getMeasuredHeight()I

    move-result v4

    .line 264
    iget-object v5, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->e:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 266
    invoke-virtual {p0, v3, v3, v3, v3}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setPadding(IIII)V

    .line 268
    iget-object v3, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iput v3, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->h:I

    .line 269
    iget-object v3, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getCurrentHintTextColor()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 273
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    int-to-float v0, v4

    div-float/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->j:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 276
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAmount(J)V
    .locals 0

    .line 172
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getFormattedText(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMoneyAmountChangedListener(Lcab/snapp/snappuikit/MoneyAmountEditText$a;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText;->d:Lcab/snapp/snappuikit/MoneyAmountEditText$a;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 163
    invoke-direct {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->b()V

    return-void
.end method

.method public spToPx(F)I
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
