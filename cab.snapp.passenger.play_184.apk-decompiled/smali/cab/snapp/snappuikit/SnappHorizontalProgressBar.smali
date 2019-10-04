.class public Lcab/snapp/snappuikit/SnappHorizontalProgressBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final THEME_ACCENT:I = 0x2

.field public static final THEME_BLUE:I = 0x4

.field public static final THEME_ERROR:I = 0x3

.field public static final THEME_PRIMARY:I = 0x0

.field public static final THEME_SECONDARY:I = 0x1


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->a:I

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->b:Z

    const/16 v0, 0x64

    .line 66
    iput v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->e:I

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->commonConstructor(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->a:I

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->b:Z

    const/16 v0, 0x64

    .line 66
    iput v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->e:I

    .line 90
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->commonConstructor(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 50
    iput p3, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->a:I

    const/4 p3, 0x1

    .line 54
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->b:Z

    const/16 p3, 0x64

    .line 66
    iput p3, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->e:I

    .line 103
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->commonConstructor(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 50
    iput p3, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->a:I

    const/4 p3, 0x1

    .line 54
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->b:Z

    const/16 p3, 0x64

    .line 66
    iput p3, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->e:I

    .line 118
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->commonConstructor(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public commonConstructor(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1259
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcab/snapp/snappuikit/a$h;->horizontalProgressBarOptions:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1261
    sget v0, Lcab/snapp/snappuikit/a$h;->horizontalProgressBarOptions_hpbTheme:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->a:I

    .line 1262
    sget v0, Lcab/snapp/snappuikit/a$h;->horizontalProgressBarOptions_hpbIndeterminate:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->b:Z

    .line 1263
    sget v0, Lcab/snapp/snappuikit/a$h;->horizontalProgressBarOptions_hpbProgress:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->c:I

    .line 1264
    sget v0, Lcab/snapp/snappuikit/a$h;->horizontalProgressBarOptions_hpbSecondaryProgress:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->d:I

    .line 1265
    sget v0, Lcab/snapp/snappuikit/a$h;->horizontalProgressBarOptions_hpbMaxProgress:I

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->e:I

    .line 1266
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcab/snapp/snappuikit/a$g;->horizontal_progressbar_layout:I

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1274
    sget p1, Lcab/snapp/snappuikit/a$f;->horizontal_progressbar_layout_progress:I

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    .line 1283
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1285
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 1287
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1289
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1294
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcab/snapp/snappuikit/a$b;->silver:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 1295
    iget v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->a:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 1335
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1334
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 1339
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1338
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    .line 1326
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/a$b;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1325
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 1330
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1329
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    .line 1317
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/a$b;->cherry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1316
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 1321
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->cherry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1320
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 1308
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/a$b;->color_accent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1307
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 1312
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->color_accent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1311
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 1299
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/a$b;->pure_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1298
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 1303
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1302
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1344
    :cond_6
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7

    .line 1346
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1347
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 1351
    :cond_7
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->isIndeterminate()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1353
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1357
    :cond_8
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1360
    :goto_2
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    iget-boolean p2, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->b:Z

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1361
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    iget p2, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->c:I

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1362
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    iget p2, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->d:I

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1363
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    iget p2, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->e:I

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method public getMaxProgress()I
    .locals 1

    .line 160
    iget v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->e:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 140
    iget v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->c:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 150
    iget v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->d:I

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->b:Z

    return v0
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 182
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->b:Z

    .line 183
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1

    .line 217
    iput p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->e:I

    .line 218
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 219
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 193
    iput p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->c:I

    .line 194
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 195
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressTheme(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->a:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 205
    iput p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->d:I

    .line 206
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 207
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappHorizontalProgressBar;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method
