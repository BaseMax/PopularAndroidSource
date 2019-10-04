.class public Lcab/snapp/snappuikit/SnappRadioButton;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "SourceFile"


# static fields
.field public static final THEME_ACCENT:I = 0x64

.field public static final THEME_BLUE:I = 0x65

.field public static final TYPE_MEDIUM:I = 0x0

.field public static final TYPE_SMALL:I = 0x1


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappRadioButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappRadioButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappRadioButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 156
    iget v0, p0, Lcab/snapp/snappuikit/SnappRadioButton;->b:I

    const/16 v1, 0x65

    const/16 v2, 0x64

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget v0, p0, Lcab/snapp/snappuikit/SnappRadioButton;->a:I

    if-ne v0, v2, :cond_1

    .line 171
    sget v0, Lcab/snapp/snappuikit/a$d;->selector_radio_button_rounded_green_blue_16dp:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappRadioButton;->setButtonDrawable(I)V

    return-void

    :cond_1
    if-ne v0, v1, :cond_4

    .line 175
    sget v0, Lcab/snapp/snappuikit/a$d;->selector_radio_button_rounded_blue_16dp:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappRadioButton;->setButtonDrawable(I)V

    goto :goto_0

    .line 159
    :cond_2
    iget v0, p0, Lcab/snapp/snappuikit/SnappRadioButton;->a:I

    if-ne v0, v2, :cond_3

    .line 161
    sget v0, Lcab/snapp/snappuikit/a$d;->selector_radio_button_rounded_green_blue_24dp:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappRadioButton;->setButtonDrawable(I)V

    return-void

    :cond_3
    if-ne v0, v1, :cond_4

    .line 165
    sget v0, Lcab/snapp/snappuikit/a$d;->selector_radio_button_rounded_blue_24dp:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappRadioButton;->setButtonDrawable(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappRadioButton;->b(Landroid/util/AttributeSet;)V

    .line 134
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappRadioButton;->a()V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 3

    .line 144
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappRadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcab/snapp/snappuikit/a$h;->radioButtonOptions:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 146
    sget v0, Lcab/snapp/snappuikit/a$h;->radioButtonOptions_rbStyle:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappRadioButton;->b:I

    .line 147
    sget v0, Lcab/snapp/snappuikit/a$h;->radioButtonOptions_rbTheme:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappRadioButton;->a:I

    .line 148
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setStyle(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcab/snapp/snappuikit/SnappRadioButton;->b:I

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcab/snapp/snappuikit/SnappRadioButton;->a:I

    return-void
.end method
