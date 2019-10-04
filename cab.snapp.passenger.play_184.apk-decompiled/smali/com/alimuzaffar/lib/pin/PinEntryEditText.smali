.class public Lcom/alimuzaffar/lib/pin/PinEntryEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_MASK:Ljava/lang/String; = "\u25cf"


# instance fields
.field protected A:[I

.field protected B:Landroid/content/res/ColorStateList;

.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/StringBuilder;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:I

.field protected j:[Landroid/graphics/RectF;

.field protected k:[F

.field protected l:Landroid/graphics/Paint;

.field protected m:Landroid/graphics/Paint;

.field protected n:Landroid/graphics/Paint;

.field protected o:Landroid/graphics/drawable/Drawable;

.field protected p:Landroid/graphics/Rect;

.field protected q:Z

.field protected r:Landroid/view/View$OnClickListener;

.field protected s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

.field protected t:F

.field protected u:F

.field protected v:Landroid/graphics/Paint;

.field protected w:Z

.field protected x:Z

.field protected y:Landroid/content/res/ColorStateList;

.field protected z:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 95
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    .line 53
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->d:I

    const/high16 v1, 0x41c00000    # 24.0f

    .line 55
    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 57
    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 58
    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    const/4 v1, 0x4

    .line 59
    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->i:I

    .line 66
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->p:Landroid/graphics/Rect;

    .line 67
    iput-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->q:Z

    .line 70
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 72
    iput p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->t:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 73
    iput p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->u:F

    .line 75
    iput-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->w:Z

    .line 76
    iput-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->x:Z

    new-array p1, v1, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a1

    aput v4, v3, v0

    aput-object v3, p1, v0

    new-array v3, v2, [I

    const v4, 0x10100a2

    aput v4, v3, v0

    aput-object v3, p1, v2

    new-array v3, v2, [I

    const v4, 0x101009c

    aput v4, v3, v0

    const/4 v4, 0x2

    aput-object v3, p1, v4

    new-array v2, v2, [I

    const v3, -0x101009c

    aput v3, v2, v0

    const/4 v0, 0x3

    aput-object v2, p1, v0

    .line 78
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->z:[[I

    new-array p1, v1, [I

    .line 85
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->A:[I

    .line 92
    new-instance p1, Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->z:[[I

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->A:[I

    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->B:Landroid/content/res/ColorStateList;

    return-void

    nop

    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 99
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    .line 53
    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->d:I

    const/high16 v2, 0x41c00000    # 24.0f

    .line 55
    iput v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    const/high16 v2, 0x40800000    # 4.0f

    .line 57
    iput v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    const/high16 v2, 0x41000000    # 8.0f

    .line 58
    iput v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    const/4 v2, 0x4

    .line 59
    iput v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->i:I

    .line 66
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->p:Landroid/graphics/Rect;

    .line 67
    iput-boolean v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->q:Z

    .line 70
    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 72
    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->t:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 73
    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->u:F

    .line 75
    iput-boolean v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->w:Z

    .line 76
    iput-boolean v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->x:Z

    new-array v0, v2, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a1

    aput v5, v4, v1

    aput-object v4, v0, v1

    new-array v4, v3, [I

    const v5, 0x10100a2

    aput v5, v4, v1

    aput-object v4, v0, v3

    new-array v4, v3, [I

    const v5, 0x101009c

    aput v5, v4, v1

    const/4 v5, 0x2

    aput-object v4, v0, v5

    new-array v3, v3, [I

    const v4, -0x101009c

    aput v4, v3, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    .line 78
    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->z:[[I

    new-array v0, v2, [I

    .line 85
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->A:[I

    .line 92
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->z:[[I

    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->A:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->B:Landroid/content/res/ColorStateList;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 51
    iput-object p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    .line 53
    iput-object p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->d:I

    const/high16 v1, 0x41c00000    # 24.0f

    .line 55
    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 57
    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 58
    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    const/4 v1, 0x4

    .line 59
    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->i:I

    .line 66
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->p:Landroid/graphics/Rect;

    .line 67
    iput-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->q:Z

    .line 70
    iput-object p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 72
    iput p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->t:F

    const/high16 p3, 0x40000000    # 2.0f

    .line 73
    iput p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->u:F

    .line 75
    iput-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->w:Z

    .line 76
    iput-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->x:Z

    new-array p3, v1, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a1

    aput v4, v3, v0

    aput-object v3, p3, v0

    new-array v3, v2, [I

    const v4, 0x10100a2

    aput v4, v3, v0

    aput-object v3, p3, v2

    new-array v3, v2, [I

    const v4, 0x101009c

    aput v4, v3, v0

    const/4 v4, 0x2

    aput-object v3, p3, v4

    new-array v2, v2, [I

    const v3, -0x101009c

    aput v3, v2, v0

    const/4 v0, 0x3

    aput-object v2, p3, v0

    .line 78
    iput-object p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->z:[[I

    new-array p3, v1, [I

    .line 85
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->A:[I

    .line 92
    new-instance p3, Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->z:[[I

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->A:[I

    invoke-direct {p3, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->B:Landroid/content/res/ColorStateList;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method private varargs a([I)I
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->B:Landroid/content/res/ColorStateList;

    const v1, -0x777778

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 131
    iget v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->t:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->t:F

    .line 132
    iget v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->u:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->u:F

    .line 133
    iget v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    .line 134
    iget v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    .line 136
    sget-object v0, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 139
    sget v3, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinAnimationType:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 140
    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->d:I

    .line 141
    sget v2, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinCharacterMask:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    .line 142
    sget v2, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinRepeatedHint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->c:Ljava/lang/String;

    .line 143
    sget v2, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinLineStroke:I

    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->t:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->t:F

    .line 144
    sget v2, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinLineStrokeSelected:I

    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->u:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->u:F

    .line 145
    sget v2, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinCharacterSpacing:I

    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    .line 146
    sget v2, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinTextBottomPadding:I

    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    .line 147
    sget v2, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinBackgroundIsSquare:I

    iget-boolean v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->q:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->q:Z

    .line 148
    sget v2, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinBackgroundDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    .line 149
    sget v2, Lcom/alimuzaffar/lib/pin/a$c;->PinEntryEditText_pinLineColors:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    iput-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->B:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->l:Landroid/graphics/Paint;

    .line 158
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->m:Landroid/graphics/Paint;

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->n:Landroid/graphics/Paint;

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    .line 161
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->t:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/alimuzaffar/lib/pin/a$a;->colorControlActivated:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 166
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 167
    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->A:[I

    aput v0, v2, v1

    .line 169
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->isInEditMode()Z

    move-result v0

    const v2, -0x777778

    if-eqz v0, :cond_1

    const v0, -0x777778

    goto :goto_0

    :cond_1
    sget v0, Lcom/alimuzaffar/lib/pin/a$b;->pin_normal:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 170
    :goto_0
    iget-object v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->A:[I

    aput v0, v3, v4

    .line 172
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget v0, Lcom/alimuzaffar/lib/pin/a$b;->pin_normal:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 173
    :goto_1
    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->A:[I

    const/4 v0, 0x2

    aput v2, p1, v0

    .line 175
    invoke-virtual {p0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setBackgroundResource(I)V

    const/4 p1, 0x4

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "maxLength"

    .line 177
    invoke-interface {p2, v0, v2, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->i:I

    .line 178
    iget p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->i:I

    int-to-float p1, p1

    iput p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    .line 181
    new-instance p1, Lcom/alimuzaffar/lib/pin/PinEntryEditText$1;

    invoke-direct {p1, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$1;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 198
    new-instance p1, Lcom/alimuzaffar/lib/pin/PinEntryEditText$2;

    invoke-direct {p1, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$2;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance p1, Lcom/alimuzaffar/lib/pin/PinEntryEditText$3;

    invoke-direct {p1, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$3;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 217
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getInputType()I

    move-result p1

    const/16 p2, 0x80

    and-int/2addr p1, p2

    const-string v0, "\u25cf"

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 218
    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    goto :goto_2

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getInputType()I

    move-result p1

    const/16 p2, 0x10

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 220
    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    .line 223
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 224
    invoke-direct {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getMaskChars()Ljava/lang/StringBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    .line 228
    :cond_5
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->p:Landroid/graphics/Rect;

    const-string v0, "|"

    invoke-virtual {p1, v0, v1, v4, p2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 230
    iget p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->d:I

    if-ltz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->w:Z

    return-void

    :catchall_0
    move-exception p1

    .line 154
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    throw p1
.end method

.method private getFullText()Ljava/lang/CharSequence;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getMaskChars()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private getMaskChars()Ljava/lang/StringBuilder;
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 402
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 403
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private setCustomTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->l:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 490
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 491
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 492
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method


# virtual methods
.method public focus()V
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->requestFocus()Z

    .line 470
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 472
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public isError()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->x:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getFullText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 351
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 352
    new-array v11, v10, [F

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v12, v10, v11}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 356
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 359
    array-length v3, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v5, v1, v2

    add-float/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v13, v4

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x0

    :goto_2
    int-to-float v1, v14

    .line 363
    iget v2, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    .line 365
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    const v15, -0x101009c

    const v16, 0x101009c

    const v17, 0x10100a2

    const/4 v7, 0x1

    if-eqz v1, :cond_9

    if-ge v14, v10, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ne v14, v10, :cond_3

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    .line 1436
    :goto_4
    iget-boolean v3, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->x:Z

    if-eqz v3, :cond_4

    .line 1437
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array v2, v7, [I

    aput v17, v2, v12

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_5

    .line 1438
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->isFocused()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_6

    .line 1439
    iget-object v3, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array v5, v7, [I

    aput v16, v5, v12

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-eqz v2, :cond_5

    .line 1441
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_5

    :cond_5
    if-eqz v1, :cond_8

    .line 1443
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_7

    .line 1447
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_5

    .line 1449
    :cond_7
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    new-array v2, v7, [I

    aput v15, v2, v12

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 367
    :cond_8
    :goto_5
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v2, v2, v14

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v3, v3, v14

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v4, v4, v14

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v5, v5, v14

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 368
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    :cond_9
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v1, v1, v14

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->f:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    if-le v10, v14, :cond_c

    .line 372
    iget-boolean v2, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->w:Z

    if-eqz v2, :cond_b

    add-int/lit8 v2, v10, -0x1

    if-eq v14, v2, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v14, 0x1

    .line 375
    aget v2, v11, v14

    div-float/2addr v2, v3

    sub-float v5, v1, v2

    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->k:[F

    aget v6, v1, v14

    iget-object v3, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v18, v3

    move v3, v14

    const/4 v15, 0x1

    move-object/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v15, 0x1

    add-int/lit8 v4, v14, 0x1

    .line 373
    aget v2, v11, v14

    div-float/2addr v2, v3

    sub-float v5, v1, v2

    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->k:[F

    aget v6, v1, v14

    iget-object v7, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->l:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v14

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_c
    const/4 v15, 0x1

    .line 377
    iget-object v2, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->c:Ljava/lang/String;

    if-eqz v2, :cond_d

    div-float v3, v13, v3

    sub-float/2addr v1, v3

    .line 378
    iget-object v3, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->k:[F

    aget v3, v3, v14

    iget-object v4, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->n:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 381
    :cond_d
    :goto_7
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_12

    if-gt v14, v10, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 2421
    :goto_8
    iget-boolean v2, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->x:Z

    if-eqz v2, :cond_f

    .line 2422
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    new-array v2, v15, [I

    aput v17, v2, v12

    invoke-direct {v0, v2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a([I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 2423
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2424
    iget-object v2, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    iget v3, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->u:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2425
    iget-object v2, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    new-array v3, v15, [I

    aput v16, v3, v12

    invoke-direct {v0, v3}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a([I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v1, :cond_11

    .line 2427
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    new-array v2, v15, [I

    const v3, 0x10100a1

    aput v3, v2, v12

    invoke-direct {v0, v2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a([I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 2430
    :cond_10
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    iget v2, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->t:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2431
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    new-array v2, v15, [I

    const v3, -0x101009c

    aput v3, v2, v12

    invoke-direct {v0, v2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a([I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    :cond_11
    :goto_9
    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v1, v1, v14

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v1, v1, v14

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v1, v1, v14

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v1, v1, v14

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->v:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    :cond_13
    return-void

    nop

    :array_0
    .array-data 4
        0x101009c
        0x10100a1
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009c
        0x10100a0
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 300
    iget-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->q:Z

    if-eqz v0, :cond_4

    .line 301
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 302
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_0

    .line 309
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v1, v0

    .line 310
    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    iget v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    :goto_0
    mul-float v4, v4, v3

    sub-float v3, v2, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_2

    :cond_0
    if-ne v1, v2, :cond_1

    .line 312
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 313
    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    mul-float v0, v0, v2

    iget v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    :goto_1
    mul-float v4, v4, v2

    sub-float/2addr v4, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_2

    :cond_1
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    .line 315
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v1, v0

    .line 316
    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    iget v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    .line 318
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 319
    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    mul-float v0, v0, v2

    iget v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getSuggestedMinimumWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v1, v0

    .line 327
    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    iget v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    goto :goto_0

    :goto_2
    const/4 v2, 0x1

    .line 331
    invoke-static {v0, p1, v2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->resolveSizeAndState(III)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v1, p2, v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->resolveSizeAndState(III)I

    move-result p2

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setMeasuredDimension(II)V

    return-void

    .line 333
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->onSizeChanged(IIII)V

    .line 253
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->y:Landroid/content/res/ColorStateList;

    .line 254
    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->y:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 255
    iget-object p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->m:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->l:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->n:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getCurrentHintTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getWidth()I

    move-result p1

    invoke-static {p0}, Landroidx/legacy/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p0}, Landroidx/legacy/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 260
    iget p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v1, p2, p4

    if-gez v1, :cond_1

    int-to-float p1, p1

    .line 261
    iget p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    mul-float p2, p2, v0

    sub-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->f:F

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 263
    iget v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    sub-float p3, v1, p3

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->f:F

    .line 265
    :goto_0
    iget p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    float-to-int p2, p1

    new-array p2, p2, [Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    float-to-int p1, p1

    .line 266
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->k:[F

    .line 268
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    .line 270
    invoke-static {p0}, Landroidx/legacy/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    const/4 v1, -0x1

    .line 273
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getWidth()I

    move-result p2

    invoke-static {p0}, Landroidx/legacy/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->f:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    goto :goto_2

    .line 276
    :cond_3
    invoke-static {p0}, Landroidx/legacy/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p2

    :goto_2
    int-to-float v2, p3

    .line 278
    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 279
    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float v4, p1

    iget v5, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->f:F

    add-float/2addr v5, p2

    invoke-direct {v3, p2, v4, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v3, v2, p3

    .line 280
    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 281
    iget-boolean v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->q:Z

    if-eqz v2, :cond_4

    .line 282
    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v2, v2, p3

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 283
    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v3, v2, p3

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, p2

    iput v2, v3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 285
    :cond_4
    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v2, v2, p3

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 289
    :cond_5
    :goto_3
    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e:F

    cmpg-float v3, v2, p4

    if-gez v3, :cond_6

    int-to-float v2, v1

    .line 290
    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->f:F

    mul-float v2, v2, v3

    mul-float v2, v2, v0

    add-float/2addr p2, v2

    goto :goto_4

    :cond_6
    int-to-float v3, v1

    .line 292
    iget v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->f:F

    add-float/2addr v4, v2

    mul-float v3, v3, v4

    add-float/2addr p2, v3

    :goto_4
    float-to-int p2, p2

    .line 294
    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->k:[F

    iget-object v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    aget-object v3, v3, p3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    sub-float/2addr v3, v4

    aput v3, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setError(Z)V

    .line 509
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->j:[Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->w:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 516
    :cond_0
    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    return-void

    :cond_1
    if-le p4, p3, :cond_5

    const/4 p3, 0x1

    const/4 p4, 0x2

    if-nez v2, :cond_3

    new-array p1, p4, [F

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p1, v0

    .line 2531
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getTextSize()F

    move-result p2

    aput p2, p1, p3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    .line 2532
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2533
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2534
    new-instance p2, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;

    invoke-direct {p2, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2541
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    iget p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->i:I

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    if-eqz p2, :cond_2

    .line 2542
    new-instance p2, Lcom/alimuzaffar/lib/pin/PinEntryEditText$5;

    invoke-direct {p2, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$5;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2561
    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 2565
    :cond_3
    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->k:[F

    aget-object v1, v1, p2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->h:F

    sub-float/2addr v1, v3

    aput v1, v2, p2

    new-array v1, p4, [F

    .line 2566
    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->k:[F

    aget v2, v2, p2

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->k:[F

    aget v2, v2, p2

    aput v2, v1, p3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 2567
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2568
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2569
    new-instance v4, Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;

    invoke-direct {v4, p0, p2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;I)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2578
    iget-object p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->m:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    new-array p2, p4, [I

    .line 2579
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 2580
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2581
    new-instance v2, Lcom/alimuzaffar/lib/pin/PinEntryEditText$7;

    invoke-direct {v2, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$7;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2589
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2590
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->i:I

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    if-eqz p1, :cond_4

    .line 2591
    new-instance p1, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;

    invoke-direct {p1, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    new-array p1, p4, [Landroid/animation/Animator;

    aput-object v1, p1, v0

    aput-object p2, p1, p3

    .line 2612
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2613
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    return-void

    .line 510
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget p3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->i:I

    if-ne p2, p3, :cond_7

    .line 511
    iget-object p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    invoke-interface {p2, p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;->onPinEntered(Ljava/lang/CharSequence;)V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public setAnimateText(Z)V
    .locals 0

    .line 617
    iput-boolean p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->w:Z

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 344
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setCustomSelectionActionModeCallback() not supported."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setError(Z)V
    .locals 0

    .line 455
    iput-boolean p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->x:Z

    .line 456
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    return-void
.end method

.method public setInputType(I)V
    .locals 2

    .line 235
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 245
    invoke-virtual {p0, p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setMask(Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u25cf"

    .line 241
    invoke-virtual {p0, p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setMask(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b:Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 2

    .line 109
    iput p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->i:I

    int-to-float v0, p1

    .line 110
    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->g:F

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 112
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnPinEnteredListener(Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    return-void
.end method

.method public setPinBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->o:Landroid/graphics/drawable/Drawable;

    .line 503
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    return-void
.end method

.method public setPinLineColors(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->B:Landroid/content/res/ColorStateList;

    .line 498
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    return-void
.end method

.method public setSingleCharHint(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->c:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 477
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setCustomTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 483
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 484
    invoke-direct {p0, p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setCustomTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
