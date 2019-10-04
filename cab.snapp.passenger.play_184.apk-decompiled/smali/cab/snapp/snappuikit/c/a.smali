.class public final Lcab/snapp/snappuikit/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusBarColor(Landroid/app/Activity;)I
    .locals 3

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 70
    invoke-virtual {p0}, Landroid/view/Window;->getStatusBarColor()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 10

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1083
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 1084
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1085
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    int-to-double v6, v1

    .line 1086
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    add-double/2addr v1, v8

    add-double/2addr v6, v1

    const-wide v1, 0x4067400000000000L    # 186.0

    const/4 v3, -0x1

    cmpl-double v4, v6, v1

    if-lez v4, :cond_1

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1092
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_4

    .line 1095
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 1097
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_3

    and-int/lit16 v1, v2, -0x2001

    goto :goto_2

    :cond_3
    or-int/lit16 v1, v2, 0x2000

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 45
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_5

    if-ne p1, v3, :cond_5

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcab/snapp/snappuikit/a$b;->scorpion:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_5
    const/high16 p0, -0x80000000

    .line 49
    invoke-virtual {v0, p0}, Landroid/view/Window;->addFlags(I)V

    .line 50
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_6
    return-void
.end method

.method public static setStatusBarColorRes(Landroid/app/Activity;I)V
    .locals 1

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method
