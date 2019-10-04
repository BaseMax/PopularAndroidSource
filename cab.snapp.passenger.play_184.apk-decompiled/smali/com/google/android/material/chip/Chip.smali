.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Rect;

.field private static final b:[I


# instance fields
.field private c:Lcom/google/android/material/chip/a;

.field private d:Landroid/graphics/drawable/RippleDrawable;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private final l:Lcom/google/android/material/chip/Chip$a;

.field private final m:Landroid/graphics/Rect;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroidx/core/content/res/ResourcesCompat$FontCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->a:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    .line 123
    sput-object v0, Lcom/google/android/material/chip/Chip;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 165
    sget v0, Lcom/google/android/material/a$b;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 138
    iput v0, p0, Lcom/google/android/material/chip/Chip;->h:I

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->m:Landroid/graphics/Rect;

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Landroid/graphics/RectF;

    .line 146
    new-instance v0, Lcom/google/android/material/chip/Chip$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->o:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    const v0, 0x800013

    if-eqz p2, :cond_6

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "background"

    .line 2244
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "drawableLeft"

    .line 2248
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "drawableStart"

    .line 2251
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "drawableEnd"

    .line 2254
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Please set end drawable using R.attr#closeIcon."

    if-nez v2, :cond_2

    const-string v2, "drawableRight"

    .line 2257
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const-string v3, "singleLine"

    .line 2260
    invoke-interface {p2, v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "lines"

    .line 2261
    invoke-interface {p2, v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    const-string v3, "minLines"

    .line 2262
    invoke-interface {p2, v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    const-string v3, "maxLines"

    .line 2263
    invoke-interface {p2, v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    const-string v2, "gravity"

    .line 2267
    invoke-interface {p2, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_0

    .line 2264
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Chip does not support multi-line text"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2258
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2255
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2252
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2249
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2245
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Do not set the background; Chip manages its own background drawable."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_6
    :goto_0
    sget v1, Lcom/google/android/material/a$j;->Widget_MaterialComponents_Chip_Action:I

    .line 172
    invoke-static {p1, p2, p3, v1}, Lcom/google/android/material/chip/a;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/a;)V

    .line 175
    new-instance p2, Lcom/google/android/material/chip/Chip$a;

    invoke-direct {p2, p0, p0}, Lcom/google/android/material/chip/Chip$a;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object p2, p0, Lcom/google/android/material/chip/Chip;->l:Lcom/google/android/material/chip/Chip$a;

    .line 176
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->l:Lcom/google/android/material/chip/Chip$a;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 2275
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_7

    .line 2276
    new-instance p2, Lcom/google/android/material/chip/Chip$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 180
    :cond_7
    iget-boolean p2, p0, Lcom/google/android/material/chip/Chip;->g:Z

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    const/4 p2, 0x0

    .line 2961
    iput-boolean p2, p1, Lcom/google/android/material/chip/a;->a:Z

    .line 184
    invoke-virtual {p1}, Lcom/google/android/material/chip/a;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p1}, Lcom/google/android/material/chip/a;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 187
    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/Chip;->setIncludeFontPadding(Z)V

    .line 188
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 189
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/f/b;)V

    .line 192
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->setSingleLine()V

    .line 195
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 197
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->b()V

    return-void
.end method

.method static synthetic a()Landroid/graphics/Rect;
    .locals 1

    .line 116
    sget-object v0, Lcom/google/android/material/chip/Chip;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    return-object p0
.end method

.method private a(Lcom/google/android/material/f/b;)V
    .locals 3

    .line 1170
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1171
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1172
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->o:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/material/f/b;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 684
    :try_start_0
    const-class p1, Landroidx/customview/widget/ExploreByTouchHelper;

    const-string v1, "mHoveredVirtualViewId"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    .line 685
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 686
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->l:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_0

    .line 689
    const-class p1, Landroidx/customview/widget/ExploreByTouchHelper;

    const-string v3, "updateHoveredVirtualView"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 690
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 691
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 692
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->l:Lcom/google/android/material/chip/Chip$a;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_0
    return v0
.end method

.method private a(Z)Z
    .locals 3

    .line 801
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->c()V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 804
    iget p1, p0, Lcom/google/android/material/chip/Chip;->h:I

    if-ne p1, v1, :cond_1

    .line 805
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_0

    .line 809
    :cond_0
    iget p1, p0, Lcom/google/android/material/chip/Chip;->h:I

    if-nez p1, :cond_1

    .line 810
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b()V
    .locals 4

    .line 205
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 209
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipStartPadding()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 210
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getChipEndPadding()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 211
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getTextStartPadding()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 212
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getTextEndPadding()F

    move-result v1

    add-float/2addr v0, v1

    .line 214
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->isChipIconVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 215
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 216
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->isCheckedIconVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 219
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getIconStartPadding()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 220
    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->getIconEndPadding()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 221
    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->getChipIconSize()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->isCloseIconVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 225
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getCloseIconStartPadding()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 226
    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->getCloseIconEndPadding()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 227
    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->getCloseIconSize()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 230
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    .line 233
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingTop()I

    move-result v2

    float-to-int v0, v0

    .line 236
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingBottom()I

    move-result v3

    .line 231
    invoke-static {p0, v1, v2, v0, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/chip/Chip;)Z
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 818
    iget v0, p0, Lcom/google/android/material/chip/Chip;->h:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 819
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private d()Z
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 931
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    .line 940
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->m:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 942
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->m:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextAppearance()Lcom/google/android/material/f/b;
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setCloseIconFocused(Z)V
    .locals 1

    .line 859
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eq v0, p1, :cond_0

    .line 860
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 861
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 852
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eq v0, p1, :cond_0

    .line 853
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    .line 854
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 845
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->i:Z

    if-eq v0, p1, :cond_0

    .line 846
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->i:Z

    .line 847
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setFocusedVirtualView(I)V
    .locals 1

    .line 833
    iget v0, p0, Lcom/google/android/material/chip/Chip;->h:I

    if-eq v0, p1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 835
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconFocused(Z)V

    .line 837
    :cond_0
    iput p1, p0, Lcom/google/android/material/chip/Chip;->h:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 839
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconFocused(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 714
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->l:Lcom/google/android/material/chip/Chip$a;

    .line 715
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->l:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$a;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 5

    .line 867
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 871
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->isCloseIconStateful()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 872
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 4882
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4885
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 4888
    :cond_1
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 4891
    :cond_2
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->i:Z

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 4894
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 4898
    :cond_4
    new-array v2, v2, [I

    .line 4901
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x101009e

    .line 4902
    aput v4, v2, v1

    const/4 v1, 0x1

    .line 4905
    :cond_5
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v3, :cond_6

    const v3, 0x101009c

    .line 4906
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 4909
    :cond_6
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v3, :cond_7

    const v3, 0x1010367

    .line 4910
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 4913
    :cond_7
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->i:Z

    if-eqz v3, :cond_8

    const v3, 0x10100a7

    .line 4914
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 4917
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x10100a1

    .line 4918
    aput v3, v2, v1

    .line 872
    :cond_9
    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->setCloseIconState([I)Z

    move-result v1

    :cond_a
    if-eqz v1, :cond_b

    .line 876
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    :cond_b
    return-void
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipCornerRadius()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipEndPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1298
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipIconSize()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipMinHeight()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipStartPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getChipStrokeWidth()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1134
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCloseIconEndPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCloseIconSize()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCloseIconStartPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCloseIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 825
    iget v0, p0, Lcom/google/android/material/chip/Chip;->h:I

    if-nez v0, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 828
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getHideMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getHideMotionSpec()Lcom/google/android/material/a/h;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getIconEndPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getIconStartPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .line 1477
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getShowMotionSpec()Lcom/google/android/material/a/h;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getTextEndPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getTextStartPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckedIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1431
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckedIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCheckedIconVisible()Z
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->isCheckedIconVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChipIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChipIconVisible()Z

    move-result v0

    return v0
.end method

.method public isChipIconVisible()Z
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->isChipIconVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCloseIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1320
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCloseIconVisible()Z
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->isCloseIconVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onChipDrawableSizeChange()V
    .locals 2

    .line 563
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->b()V

    .line 564
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 332
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 333
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/google/android/material/chip/Chip;->b:[I

    invoke-static {p1, v0}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 341
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_2

    .line 3951
    iget-boolean v0, v0, Lcom/google/android/material/chip/a;->a:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 347
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 4363
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipStartPadding()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->b()F

    move-result v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getTextStartPadding()F

    move-result v1

    add-float/2addr v2, v1

    .line 4364
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    neg-float v2, v2

    :goto_0
    const/4 v1, 0x0

    .line 347
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 348
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 349
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 342
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 728
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    .line 730
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setFocusedVirtualView(I)V

    .line 732
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    .line 734
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 735
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->l:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/chip/Chip$a;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 668
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 673
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 744
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 751
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 752
    invoke-static {p0}, Lcom/google/android/material/internal/l;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->a(Z)Z

    move-result v2

    goto :goto_1

    .line 746
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 747
    invoke-static {p0}, Lcom/google/android/material/internal/l;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->a(Z)Z

    move-result v2

    goto :goto_1

    .line 757
    :cond_0
    :pswitch_2
    iget v0, p0, Lcom/google/android/material/chip/Chip;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    return v3

    .line 759
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->performClick()Z

    return v3

    .line 771
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 773
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 777
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, p0

    .line 781
    :cond_6
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    if-eq v4, p0, :cond_7

    .line 782
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_6

    :cond_7
    if-eqz v4, :cond_8

    .line 784
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 793
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    return v3

    .line 796
    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    .line 948
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 629
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 638
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->i:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    .line 640
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_1

    .line 646
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->i:Z

    if-eqz v0, :cond_2

    .line 647
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 652
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    .line 633
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    .line 657
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    return v2

    :cond_7
    :goto_4
    return v3
.end method

.method public performCloseIconClick()Z
    .locals 4

    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->playSoundEffect(I)V

    .line 612
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 613
    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 619
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->l:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/material/chip/Chip$a;->sendEventForVirtualView(II)Z

    return v1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Landroid/graphics/drawable/RippleDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 400
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 384
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Landroid/graphics/drawable/RippleDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 390
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 372
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 378
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1419
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1420
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCheckable(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCheckableResource(I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    .line 574
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->g:Z

    return-void

    .line 575
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    .line 577
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    if-eq v0, p1, :cond_1

    .line 580
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 581
    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1455
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1449
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCheckedIconResource(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1436
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCheckedIconVisible(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1442
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCheckedIconVisible(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipBackgroundColorResource(I)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipCornerRadius(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipCornerRadiusResource(I)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/a;)V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eq v0, p1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3322
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->setDelegate(Lcom/google/android/material/chip/a$a;)V

    .line 300
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 301
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 3327
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/a;->setDelegate(Lcom/google/android/material/chip/a$a;)V

    .line 303
    sget-boolean p1, Lcom/google/android/material/g/a;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_1

    .line 305
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 307
    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/g/a;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    invoke-direct {p1, v0, v2, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->d:Landroid/graphics/drawable/RippleDrawable;

    .line 310
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/a;->setUseCompatRipple(Z)V

    .line 312
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->d:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/a;->setUseCompatRipple(Z)V

    .line 315
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1633
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1

    .line 1626
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1627
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1247
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1241
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipIconResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipIconSize(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipIconSizeResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipIconTintResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipIconVisible(I)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1234
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipIconVisible(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipMinHeight(F)V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipMinHeightResource(I)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1521
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipStrokeColorResource(I)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setChipStrokeWidthResource(I)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1161
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1155
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1399
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1344
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1338
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 1616
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1617
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1611
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1

    .line 1353
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconSize(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconSizeResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1601
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1376
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1371
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconTintResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconVisible(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setCloseIconVisible(Z)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 427
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 424
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 471
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 468
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 484
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 481
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 499
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 497
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 494
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 439
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 436
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 452
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 449
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    .line 515
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 516
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    return-void

    .line 513
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-ne p1, v0, :cond_0

    .line 357
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setHideMotionSpec(Lcom/google/android/material/a/h;)V

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setHideMotionSpecResource(I)V

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1553
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setIconEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setIconEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1537
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setIconStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1

    .line 1530
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1531
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setIconStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 534
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLines(I)V

    return-void

    .line 532
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 550
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxLines(I)V

    return-void

    .line 548
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 555
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxWidth(I)V

    .line 556
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 542
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMinLines(I)V

    return-void

    .line 540
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setRippleColorResource(I)V

    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setShowMotionSpec(Lcom/google/android/material/a/h;)V

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1482
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setShowMotionSpecResource(I)V

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 526
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSingleLine(Z)V

    return-void

    .line 524
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 1145
    :cond_1
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    .line 4951
    iget-boolean v1, v1, Lcom/google/android/material/chip/a;->a:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 1146
    :cond_2
    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1147
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz p2, :cond_3

    .line 1148
    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/a;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    .line 1206
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(I)V

    .line 1207
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setTextAppearanceResource(I)V

    .line 1210
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1211
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->o:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/material/f/b;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 1212
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/f/b;)V

    :cond_1
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 1194
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 1195
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/a;->setTextAppearanceResource(I)V

    .line 1198
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1199
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->o:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/material/f/b;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 1200
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/f/b;)V

    :cond_1
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/f/b;)V
    .locals 4

    .line 1183
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setTextAppearance(Lcom/google/android/material/f/b;)V

    .line 1186
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1187
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/f/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->o:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/f/b;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 1188
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/f/b;)V

    :cond_1
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1177
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setTextAppearanceResource(I)V

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1585
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setTextEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1579
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setTextEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setTextStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->c:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setTextStartPaddingResource(I)V

    :cond_0
    return-void
.end method
