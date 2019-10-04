.class public Lcab/snapp/snappuikit/SnappCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SourceFile"


# static fields
.field public static final TYPE_MEDIUM:I = 0x0

.field public static final TYPE_SMALL:I = 0x1


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappCheckBox;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappCheckBox;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 128
    iget v0, p0, Lcab/snapp/snappuikit/SnappCheckBox;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    sget v0, Lcab/snapp/snappuikit/a$d;->selector_checkbox_rounded_green_blue_16dp:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappCheckBox;->setButtonDrawable(I)V

    :goto_0
    return-void

    .line 131
    :cond_1
    sget v0, Lcab/snapp/snappuikit/a$d;->selector_checkbox_rounded_green_blue_24dp:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappCheckBox;->setButtonDrawable(I)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->b(Landroid/util/AttributeSet;)V

    .line 107
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappCheckBox;->a()V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcab/snapp/snappuikit/a$h;->checkboxOptions:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 119
    sget v0, Lcab/snapp/snappuikit/a$h;->checkboxOptions_cbStyle:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappCheckBox;->a:I

    .line 120
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setStyle(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcab/snapp/snappuikit/SnappCheckBox;->a:I

    return-void
.end method
