.class public Lcom/ebay/android/widget/EbayTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "EbayTextView.java"


# static fields
.field public static final ANDROID_ATTR_TEXT_APPEARANCE:[I

.field static final EXTRA_TEXT_APPEARANCE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 16
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010034

    aput v3, v1, v2

    sput-object v1, Lcom/ebay/android/widget/EbayTextView;->ANDROID_ATTR_TEXT_APPEARANCE:[I

    .line 17
    new-array v0, v0, [I

    sget v1, Lcom/ebay/nautilus/shell/R$attr;->ebayLineSpacingMultiplier:I

    aput v1, v0, v2

    sput-object v0, Lcom/ebay/android/widget/EbayTextView;->EXTRA_TEXT_APPEARANCE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, v0, v1}, Lcom/ebay/android/widget/EbayTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/android/widget/EbayTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/android/widget/EbayTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static applyExtraAttributesToTextView(Landroid/content/Context;Landroid/widget/TextView;[ILandroid/util/AttributeSet;I)V
    .locals 1

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    sget-object p4, Lcom/ebay/android/widget/EbayTextView;->ANDROID_ATTR_TEXT_APPEARANCE:[I

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 p4, -0x1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p3, v0, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    throw p0

    .line 73
    :catch_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 77
    :cond_1
    :goto_0
    invoke-static {p1, p0, p4, p2}, Lcom/ebay/android/widget/EbayTextView;->applyExtraTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I[I)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method static applyExtraTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I[I)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/4 p3, 0x0

    .line 96
    invoke-virtual {p0, p3, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    throw p0

    .line 105
    :catch_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 41
    sget-object v0, Lcom/ebay/android/widget/EbayTextView;->EXTRA_TEXT_APPEARANCE:[I

    invoke-static {p1, p0, v0, p2, p3}, Lcom/ebay/android/widget/EbayTextView;->applyExtraAttributesToTextView(Landroid/content/Context;Landroid/widget/TextView;[ILandroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 47
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 49
    sget-object v0, Lcom/ebay/android/widget/EbayTextView;->EXTRA_TEXT_APPEARANCE:[I

    invoke-static {p0, p1, p2, v0}, Lcom/ebay/android/widget/EbayTextView;->applyExtraTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I[I)V

    return-void
.end method
