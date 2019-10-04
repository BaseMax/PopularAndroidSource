.class public Lcab/snapp/snappuikit/SnappTextButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final GRAVITY_BOTTOM:I = 0x20

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_CENTER_HORIZONTAL:I = 0x2

.field public static final GRAVITY_CENTER_VERTICAL:I = 0x4

.field public static final GRAVITY_END:I = 0x10

.field public static final GRAVITY_START:I = 0x8

.field public static final GRAVITY_TOP:I = 0x40


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/SnappTextButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappTextButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappTextButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappTextButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 117
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/a$g;->text_button_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    sget v0, Lcab/snapp/snappuikit/a$f;->text_button_layout_textview:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_16

    .line 122
    sget-object v0, Lcab/snapp/snappuikit/a$h;->textButtonOptions:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 125
    sget p2, Lcab/snapp/snappuikit/a$h;->textButtonOptions_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 127
    sget p2, Lcab/snapp/snappuikit/a$h;->textButtonOptions_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 131
    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappTextButton;->setText(Ljava/lang/String;)V

    .line 134
    :goto_0
    sget p2, Lcab/snapp/snappuikit/a$h;->textButtonOptions_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 135
    sget p2, Lcab/snapp/snappuikit/a$h;->textButtonOptions_textColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappTextButton;->setTextColor(I)V

    .line 138
    :cond_1
    sget p2, Lcab/snapp/snappuikit/a$h;->textButtonOptions_textSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/16 v0, 0x10

    if-eqz p2, :cond_2

    .line 139
    sget p2, Lcab/snapp/snappuikit/a$h;->textButtonOptions_textSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappTextButton;->setTextSize(I)V

    .line 142
    :cond_2
    sget p2, Lcab/snapp/snappuikit/a$h;->textButtonOptions_textFont:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 143
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappTextButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcab/snapp/snappuikit/a$h;->textButtonOptions_textFont:I

    sget v3, Lcab/snapp/snappuikit/a$e;->iran_sans_mobile_medium:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p2, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappTextButton;->setTextFont(Landroid/graphics/Typeface;)V

    .line 146
    :cond_3
    sget p2, Lcab/snapp/snappuikit/a$h;->textButtonOptions_textGravity:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v2, :cond_14

    .line 148
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_14

    const/4 v1, 0x6

    if-ne p2, v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 156
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    :cond_5
    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    .line 160
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0x8

    if-ne p2, v1, :cond_7

    .line 164
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const v0, 0x800003

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    :cond_7
    if-ne p2, v0, :cond_8

    .line 168
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const v0, 0x800005

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    :cond_8
    const/16 v3, 0x40

    if-ne p2, v3, :cond_9

    .line 172
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    :cond_9
    const/16 v4, 0x20

    if-ne p2, v4, :cond_a

    .line 176
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    :cond_a
    const/16 v5, 0x60

    if-ne p2, v5, :cond_b

    .line 180
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_2

    :cond_b
    const/16 v5, 0x18

    if-ne p2, v5, :cond_c

    .line 184
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_c
    add-int/lit8 v2, p2, -0x4

    if-ne v2, v1, :cond_d

    .line 191
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const v0, 0x800013

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_d
    if-ne v2, v0, :cond_e

    .line 195
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const v0, 0x800015

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_e
    add-int/lit8 v2, p2, -0x2

    if-ne v2, v3, :cond_f

    .line 202
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const/16 v0, 0x31

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_f
    if-ne v2, v4, :cond_10

    .line 206
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const/16 v0, 0x51

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_10
    add-int/lit8 v2, p2, -0x40

    if-ne v2, v1, :cond_11

    .line 213
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const v0, 0x800033

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_11
    if-ne v2, v0, :cond_12

    .line 217
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const v0, 0x800035

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_12
    sub-int/2addr p2, v4

    if-ne p2, v1, :cond_13

    .line 224
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const v0, 0x800053

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_13
    if-ne p2, v0, :cond_15

    .line 228
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const v0, 0x800055

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 150
    :cond_14
    :goto_1
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 237
    :cond_15
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_16
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappTextButton;->a:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
