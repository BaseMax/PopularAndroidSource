.class public final Lcom/adyen/threeds2/internal/ui/widget/DividerView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;


# instance fields
.field private b:Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;->HORIZONTAL:Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;

    sput-object v0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->a:Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/adyen/threeds2/R$styleable;->DividerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->a(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/adyen/threeds2/R$styleable;->DividerView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->a(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 142
    sget v0, Lcom/adyen/threeds2/R$styleable;->DividerView_dividerColor:I

    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->setColor(I)V

    .line 145
    sget v0, Lcom/adyen/threeds2/R$styleable;->DividerView_dividerThickness:I

    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getDefaultThickness()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 146
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->setThickness(I)V

    .line 148
    sget v0, Lcom/adyen/threeds2/R$styleable;->DividerView_dividerOrientation:I

    sget-object v1, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->a:Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 149
    invoke-static {}, Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;->values()[Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->setOrientation(Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;)V

    return-void
.end method

.method private getDefaultColor()I
    .locals 4

    .line 130
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010038

    const/4 v3, 0x1

    .line 132
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 134
    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method private getDefaultThickness()I
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adyen/threeds2/R$dimen;->a3ds2_divider_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->d:I

    return v0
.end method

.method public getOrientation()Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->b:Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;

    return-object v0
.end method

.method public getThickness()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->c:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getDefaultSize(II)I

    move-result p1

    .line 108
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->getDefaultSize(II)I

    move-result p2

    .line 110
    iget v0, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->c:I

    if-lez v0, :cond_0

    .line 111
    sget-object v0, Lcom/adyen/threeds2/internal/ui/widget/DividerView$1;->a:[I

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->b:Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    iget p1, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->c:I

    goto :goto_0

    .line 113
    :pswitch_1
    iget p2, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->c:I

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->setMeasuredDimension(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->d:I

    .line 86
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->setBackgroundColor(I)V

    return-void
.end method

.method public setOrientation(Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->b:Lcom/adyen/threeds2/internal/ui/widget/DividerView$a;

    return-void
.end method

.method public setThickness(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/adyen/threeds2/internal/ui/widget/DividerView;->c:I

    return-void
.end method
