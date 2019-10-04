.class public Lcom/ebay/android/widget/EbayButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "EbayButton.java"


# static fields
.field public static final TYPE_ACTION:I = 0x3

.field public static final TYPE_ACTION_SMALL:I = 0x4

.field public static final TYPE_FLAT:I = 0x5

.field public static final TYPE_FLAT_ACTION:I = 0x6

.field public static final TYPE_PRIMARY:I = 0x0

.field public static final TYPE_SECONDARY:I = 0x1

.field public static final TYPE_SECONDARYALT:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private buttonType:I

.field private iconEnd:Landroid/graphics/drawable/Drawable;

.field private iconRightSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/ebay/android/widget/EbayButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    sget v0, Lcom/ebay/nautilus/shell/R$attr;->ebayButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/android/widget/EbayButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object v0, Lcom/ebay/nautilus/shell/R$styleable;->EbayButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    sget p2, Lcom/ebay/nautilus/shell/R$styleable;->EbayButton_buttonType:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/ebay/android/widget/EbayButton;->buttonType:I

    .line 60
    sget p2, Lcom/ebay/nautilus/shell/R$styleable;->EbayButton_iconEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-direct {p0}, Lcom/ebay/android/widget/EbayButton;->updateIconEnd()V

    return-void
.end method

.method private updateIconEnd()V
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object v0, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getIconTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 282
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getIconSize()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 288
    :goto_1
    iget-object v2, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/ebay/android/widget/EbayButton;->iconRightSpacing:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/ebay/android/widget/EbayButton;->iconRightSpacing:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    iget-object v0, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getButtonType()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/ebay/android/widget/EbayButton;->buttonType:I

    return v0
.end method

.method public getIconEnd()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->onMeasure(II)V

    .line 71
    iget-object p1, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getIconGravity()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getMeasuredWidth()I

    move-result p1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 74
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getIconPadding()I

    move-result p2

    sub-int/2addr p1, p2

    .line 76
    iget p2, p0, Lcom/ebay/android/widget/EbayButton;->iconRightSpacing:I

    if-eq p2, p1, :cond_0

    .line 78
    iput p1, p0, Lcom/ebay/android/widget/EbayButton;->iconRightSpacing:I

    .line 79
    invoke-direct {p0}, Lcom/ebay/android/widget/EbayButton;->updateIconEnd()V

    :cond_0
    return-void
.end method

.method public setActionColors(II)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 191
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getButtonType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 195
    new-array v3, v0, [[I

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, -0x101009e

    const/4 v7, 0x0

    aput v6, v5, v7

    aput-object v5, v3, v7

    new-array v5, v7, [I

    aput-object v5, v3, v4

    .line 196
    new-array v5, v0, [I

    const/16 v6, 0x48

    invoke-static {p1, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    aput v6, v5, v7

    aput p1, v5, v4

    .line 197
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 198
    invoke-virtual {p0, v6}, Lcom/ebay/android/widget/EbayButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 199
    invoke-virtual {p0, v6}, Lcom/ebay/android/widget/EbayButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 200
    invoke-virtual {p0, v6}, Lcom/ebay/android/widget/EbayButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 202
    new-array v3, v0, [[I

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    aput-object v5, v3, v7

    new-array v5, v7, [I

    aput-object v5, v3, v4

    .line 205
    new-array v1, v1, [I

    const/16 v5, 0x20

    .line 206
    invoke-static {p1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    aput v5, v1, v7

    const/16 v5, 0x1c

    .line 207
    invoke-static {p1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    aput v5, v1, v4

    const/16 v4, 0x8

    .line 208
    invoke-static {p1, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    aput p1, v1, v0

    aput p2, v1, v2

    .line 210
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/EbayButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009c
        0x1010367
    .end array-data
.end method

.method public setButtonType(I)Z
    .locals 6

    .line 120
    iget v0, p0, Lcom/ebay/android/widget/EbayButton;->buttonType:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 123
    :cond_0
    iget v0, p0, Lcom/ebay/android/widget/EbayButton;->buttonType:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ebay/android/widget/EbayButton;->buttonType:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ebay/android/widget/EbayButton;->buttonType:I

    if-ne v0, v2, :cond_8

    :cond_1
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_8

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, -0x1

    const/16 v4, 0x15

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 132
    :pswitch_0
    sget v5, Lcom/ebay/nautilus/shell/R$attr;->buttonSecondaryAccentTextAppearance:I

    .line 133
    invoke-static {v0, v5, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result v2

    .line 132
    invoke-virtual {p0, v0, v2}, Lcom/ebay/android/widget/EbayButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 134
    sget v2, Lcom/ebay/nautilus/shell/R$attr;->buttonSecondaryAccentTextColor:I

    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ebay/android/widget/EbayButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 135
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ebay/android/widget/EbayButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 136
    sget v2, Lcom/ebay/nautilus/shell/R$attr;->buttonSecondaryRippleColor:I

    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ebay/android/widget/EbayButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 137
    sget v2, Lcom/ebay/nautilus/shell/R$attr;->buttonSecondaryStrokeColor:I

    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ebay/android/widget/EbayButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 138
    sget v2, Lcom/ebay/nautilus/shell/R$attr;->buttonSecondaryStrokeWidth:I

    invoke-static {v0, v2, v3}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDimensionPixelSize(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ebay/android/widget/EbayButton;->setStrokeWidth(I)V

    .line 141
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v4, :cond_3

    .line 142
    sget v2, Lcom/ebay/nautilus/shell/R$attr;->buttonSecondaryStateListAnimator:I

    .line 143
    invoke-static {v0, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result v2

    .line 142
    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ebay/android/widget/EbayButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_3
    if-ne p1, v1, :cond_4

    .line 145
    sget v1, Lcom/ebay/nautilus/shell/R$attr;->buttonSecondaryBackground:I

    goto :goto_0

    :cond_4
    sget v1, Lcom/ebay/nautilus/shell/R$attr;->buttonSecondaryAltBackground:I

    :goto_0
    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/EbayButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v4, :cond_5

    .line 149
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->refreshDrawableState()V

    .line 151
    :cond_5
    iput p1, p0, Lcom/ebay/android/widget/EbayButton;->buttonType:I

    goto :goto_1

    .line 154
    :pswitch_1
    sget v1, Lcom/ebay/nautilus/shell/R$attr;->buttonPrimaryTextAppearance:I

    .line 155
    invoke-static {v0, v1, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;II)I

    move-result v1

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/ebay/android/widget/EbayButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 156
    sget v1, Lcom/ebay/nautilus/shell/R$attr;->buttonPrimaryTextColor:I

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/android/widget/EbayButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 157
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/android/widget/EbayButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 158
    sget v1, Lcom/ebay/nautilus/shell/R$attr;->buttonPrimaryRippleColor:I

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/android/widget/EbayButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0, v1}, Lcom/ebay/android/widget/EbayButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 160
    invoke-virtual {p0, v3}, Lcom/ebay/android/widget/EbayButton;->setStrokeWidth(I)V

    .line 162
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v4, :cond_6

    .line 163
    sget v1, Lcom/ebay/nautilus/shell/R$attr;->buttonPrimaryStateListAnimator:I

    .line 164
    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result v1

    .line 163
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/android/widget/EbayButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 166
    :cond_6
    sget v1, Lcom/ebay/nautilus/shell/R$attr;->buttonPrimaryBackground:I

    invoke-static {v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/EbayButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v4, :cond_7

    .line 168
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->refreshDrawableState()V

    .line 170
    :cond_7
    iput p1, p0, Lcom/ebay/android/widget/EbayButton;->buttonType:I

    :cond_8
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-direct {p0}, Lcom/ebay/android/widget/EbayButton;->updateIconEnd()V

    return-void
.end method

.method public setIconEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    iget-object v0, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 92
    invoke-static {p0, v1, v1, v1, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/ebay/android/widget/EbayButton;->iconEnd:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p0, v1}, Lcom/ebay/android/widget/EbayButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconGravity(I)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconGravity(I)V

    .line 232
    invoke-direct {p0}, Lcom/ebay/android/widget/EbayButton;->updateIconEnd()V

    return-void
.end method

.method public setIconPadding(I)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconPadding(I)V

    .line 225
    invoke-direct {p0}, Lcom/ebay/android/widget/EbayButton;->updateIconEnd()V

    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconSize(I)V

    .line 239
    invoke-direct {p0}, Lcom/ebay/android/widget/EbayButton;->updateIconEnd()V

    return-void
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 218
    invoke-direct {p0}, Lcom/ebay/android/widget/EbayButton;->updateIconEnd()V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 252
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getPaddingRight()I

    move-result v0

    .line 253
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getPaddingLeft()I

    move-result v1

    .line 254
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getPaddingTop()I

    move-result v2

    .line 255
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getPaddingBottom()I

    move-result v3

    .line 257
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 259
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/ebay/android/widget/EbayButton;->setPadding(IIII)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 4

    .line 265
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getPaddingRight()I

    move-result v0

    .line 266
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getPaddingLeft()I

    move-result v1

    .line 267
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getPaddingTop()I

    move-result v2

    .line 268
    invoke-virtual {p0}, Lcom/ebay/android/widget/EbayButton;->getPaddingBottom()I

    move-result v3

    .line 270
    invoke-super {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 272
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/ebay/android/widget/EbayButton;->setPadding(IIII)V

    return-void
.end method
