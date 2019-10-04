.class public Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleRatingBar"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/snappuikit/ratingbar/PartialView;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:F

.field private o:F

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x14

    .line 31
    iput p3, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->b:I

    const/4 p3, 0x0

    .line 34
    iput p3, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    iput v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    iput v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    .line 37
    iput p3, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->i:F

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->j:Z

    const/4 v2, 0x1

    .line 40
    iput-boolean v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->k:Z

    .line 41
    iput-boolean v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->l:Z

    .line 42
    iput-boolean v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->m:Z

    .line 71
    sget-object v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 72
    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_rating:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 1081
    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_numStars:I

    iget v3, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    .line 1082
    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_stepSize:I

    iget v3, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    .line 1083
    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_minimumStars:I

    iget v3, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    .line 1084
    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_starPadding:I

    iget v3, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->b:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->b:I

    .line 1085
    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_starWidth:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->c:I

    .line 1086
    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_starHeight:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->e:I

    .line 1087
    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_drawableEmpty:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_drawableEmpty:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    iput-object v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->p:Landroid/graphics/drawable/Drawable;

    .line 1088
    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_drawableFilled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_drawableFilled:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    iput-object p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->q:Landroid/graphics/drawable/Drawable;

    .line 1089
    sget p1, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_isIndicator:I

    iget-boolean v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->j:Z

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->j:Z

    .line 1090
    sget p1, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_scrollable:I

    iget-boolean v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->k:Z

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->k:Z

    .line 1091
    sget p1, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_clickable:I

    iget-boolean v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->l:Z

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->l:Z

    .line 1092
    sget p1, Lcab/snapp/snappuikit/a$h;->BaseRatingBar_srb_clearRatingEnabled:I

    iget-boolean v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->m:Z

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->m:Z

    .line 1093
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1097
    iget p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    if-gtz p1, :cond_2

    const/4 p1, 0x5

    .line 1098
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    .line 1101
    :cond_2
    iget p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->b:I

    if-gez p1, :cond_3

    .line 1102
    iput v1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->b:I

    .line 1105
    :cond_3
    iget-object p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->p:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    .line 1106
    iput-object v4, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->p:Landroid/graphics/drawable/Drawable;

    .line 1110
    :cond_4
    iget-object p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->q:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5

    .line 1111
    iput-object v4, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->q:Landroid/graphics/drawable/Drawable;

    .line 1115
    :cond_5
    iget p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    cmpl-float p2, p1, v0

    if-lez p2, :cond_6

    .line 1116
    iput v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    goto :goto_2

    :cond_6
    const p2, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    .line 1118
    iput p2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    .line 1121
    :cond_7
    :goto_2
    iget p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    iget p2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    invoke-static {p1, p2, v0}, Lcab/snapp/snappuikit/ratingbar/a;->a(FIF)F

    move-result p1

    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    .line 76
    invoke-direct {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a()V

    .line 77
    invoke-virtual {p0, p3}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->setRating(F)V

    return-void
.end method

.method private a()V
    .locals 10

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    const/4 v0, 0x1

    .line 127
    :goto_0
    iget v1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    if-gt v0, v1, :cond_0

    .line 128
    iget v4, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->c:I

    iget v5, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->e:I

    iget v6, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->b:I

    iget-object v7, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->q:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->p:Landroid/graphics/drawable/Drawable;

    .line 1137
    new-instance v9, Lcab/snapp/snappuikit/ratingbar/PartialView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v9

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcab/snapp/snappuikit/ratingbar/PartialView;-><init>(Landroid/content/Context;IIII)V

    .line 1138
    invoke-virtual {v9, v7}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1139
    invoke-virtual {v9, v8}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p0, v9}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->addView(Landroid/view/View;)V

    .line 131
    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(FLandroid/view/View;)Z
    .locals 1

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(F)V
    .locals 7

    .line 155
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/snappuikit/ratingbar/PartialView;

    .line 156
    invoke-virtual {v1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    float-to-double v3, p1

    .line 157
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v5, v2

    cmpl-double v2, v5, v3

    if-lez v2, :cond_0

    .line 160
    invoke-virtual {v1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setEmpty()V

    goto :goto_0

    :cond_0
    cmpl-double v2, v5, v3

    if-nez v2, :cond_1

    .line 165
    invoke-virtual {v1, p1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setPartialFilled(F)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setFilled()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getNumStars()I
    .locals 1

    .line 187
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    return v0
.end method

.method public getRating()F
    .locals 1

    .line 215
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->g:F

    return v0
.end method

.method public getStarHeight()I
    .locals 1

    .line 243
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->e:I

    return v0
.end method

.method public getStarPadding()I
    .locals 1

    .line 261
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->b:I

    return v0
.end method

.method public getStarWidth()I
    .locals 1

    .line 229
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->c:I

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 339
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    return v0
.end method

.method public isClearRatingEnabled()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->m:Z

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->l:Z

    return v0
.end method

.method public isIndicator()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->j:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->k:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 440
    check-cast p1, Lcab/snapp/snappuikit/ratingbar/SavedState;

    .line 441
    invoke-virtual {p1}, Lcab/snapp/snappuikit/ratingbar/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 443
    invoke-virtual {p1}, Lcab/snapp/snappuikit/ratingbar/SavedState;->getRating()F

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->setRating(F)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 431
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 432
    new-instance v1, Lcab/snapp/snappuikit/ratingbar/SavedState;

    invoke-direct {v1, v0}, Lcab/snapp/snappuikit/ratingbar/SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 434
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->g:F

    invoke-virtual {v1, v0}, Lcab/snapp/snappuikit/ratingbar/SavedState;->setRating(F)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 354
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->isIndicator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 358
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    if-eq v3, v4, :cond_5

    const/4 p1, 0x2

    if-eq v3, p1, :cond_1

    goto/16 :goto_4

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->isScrollable()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 1386
    :cond_2
    iget-object p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/snappuikit/ratingbar/PartialView;

    .line 1387
    invoke-virtual {v1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    invoke-virtual {v1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 1388
    iget p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->setRating(F)V

    goto/16 :goto_4

    .line 1392
    :cond_4
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a(FLandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1396
    iget v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    invoke-static {v1, v2, v0}, Lcab/snapp/snappuikit/ratingbar/a;->a(Lcab/snapp/snappuikit/ratingbar/PartialView;FF)F

    move-result v1

    .line 1398
    iget v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->g:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3

    .line 1399
    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->setRating(F)V

    goto :goto_0

    .line 374
    :cond_5
    iget v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->n:F

    iget v3, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->o:F

    .line 2016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float v5, v5

    const/high16 v6, 0x43480000    # 200.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_6

    .line 2021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 2022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_6

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_b

    .line 374
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->isClickable()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 2405
    :cond_7
    iget-object p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/snappuikit/ratingbar/PartialView;

    .line 2406
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a(FLandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2410
    iget p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    goto :goto_2

    :cond_9
    invoke-static {v1, p1, v0}, Lcab/snapp/snappuikit/ratingbar/a;->a(Lcab/snapp/snappuikit/ratingbar/PartialView;FF)F

    move-result p1

    .line 2412
    :goto_2
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->i:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->isClearRatingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2413
    iget p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->setRating(F)V

    goto :goto_4

    .line 2415
    :cond_a
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->setRating(F)V

    goto :goto_4

    :cond_b
    :goto_3
    return v1

    .line 362
    :cond_c
    iput v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->n:F

    .line 363
    iput v2, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->o:F

    .line 364
    iget p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->g:F

    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->i:F

    .line 381
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v4
.end method

.method public setClearRatingEnabled(Z)V
    .locals 0

    .line 329
    iput-boolean p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->m:Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->l:Z

    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 276
    iput-object p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->p:Landroid/graphics/drawable/Drawable;

    .line 278
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/snappuikit/ratingbar/PartialView;

    .line 279
    invoke-virtual {v1, p1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEmptyDrawableRes(I)V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFilledDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 285
    iput-object p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->q:Landroid/graphics/drawable/Drawable;

    .line 287
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/snappuikit/ratingbar/PartialView;

    .line 288
    invoke-virtual {v1, p1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFilledDrawableRes(I)V
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIsIndicator(Z)V
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->j:Z

    return-void
.end method

.method public setMinimumStars(F)V
    .locals 2

    .line 294
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    iget v1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    invoke-static {p1, v0, v1}, Lcab/snapp/snappuikit/ratingbar/a;->a(FIF)F

    move-result p1

    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    return-void
.end method

.method public setNumStars(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->removeAllViews()V

    .line 181
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    .line 182
    invoke-direct {p0}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a()V

    return-void
.end method

.method public setOnRatingChangeListener(Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->r:Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;

    return-void
.end method

.method public setRating(F)V
    .locals 2

    .line 192
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    int-to-float p1, v0

    .line 196
    :cond_0
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->f:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 200
    :cond_1
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    .line 204
    :cond_2
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->g:F

    .line 206
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->r:Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;

    if-eqz v0, :cond_3

    .line 207
    iget v1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->g:F

    invoke-interface {v0, p0, v1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;->onRatingChange(Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;F)V

    .line 210
    :cond_3
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->a(F)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->k:Z

    return-void
.end method

.method public setStarHeight(I)V
    .locals 2

    .line 235
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->e:I

    .line 236
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/snappuikit/ratingbar/PartialView;

    .line 237
    invoke-virtual {v1, p1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setStarHeight(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStarPadding(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 252
    :cond_0
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->b:I

    .line 254
    iget-object p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/ratingbar/PartialView;

    .line 255
    iget v1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->b:I

    invoke-virtual {v0, v1, v1, v1, v1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setStarWidth(I)V
    .locals 2

    .line 221
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->c:I

    .line 222
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/snappuikit/ratingbar/PartialView;

    .line 223
    invoke-virtual {v1, p1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setStarWidth(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStepSize(F)V
    .locals 0

    .line 344
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;->h:F

    return-void
.end method
