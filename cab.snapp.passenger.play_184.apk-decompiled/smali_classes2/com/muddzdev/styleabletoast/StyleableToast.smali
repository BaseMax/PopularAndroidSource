.class public Lcom/muddzdev/styleabletoast/StyleableToast;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muddzdev/styleabletoast/StyleableToast$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Landroid/content/res/TypedArray;

.field private q:Landroid/widget/TextView;

.field private r:I

.field private s:Landroid/widget/Toast;

.field private t:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->l:Z

    .line 75
    iput-object p2, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->o:Ljava/lang/String;

    .line 76
    iput p3, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->i:I

    .line 77
    iput p4, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->j:I

    return-void
.end method

.method private constructor <init>(Lcom/muddzdev/styleabletoast/StyleableToast$a;)V
    .locals 1

    .line 1272
    iget-object v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->o:Landroid/content/Context;

    .line 81
    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->l:Z

    .line 2272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->b:I

    .line 82
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->b:I

    .line 3272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->a:I

    .line 83
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->a:I

    .line 4272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->f:I

    .line 84
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->f:I

    .line 5272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->e:I

    .line 85
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->e:I

    .line 6272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->c:I

    .line 86
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->c:I

    .line 7272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->d:I

    .line 87
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->d:I

    .line 8272
    iget-boolean v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->k:Z

    .line 88
    iput-boolean v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->m:Z

    .line 9272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->g:I

    .line 89
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->g:I

    .line 10272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->j:F

    .line 90
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->k:F

    .line 11272
    iget-boolean v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->l:Z

    .line 91
    iput-boolean v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->n:Z

    .line 12272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->h:I

    .line 92
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->h:I

    .line 13272
    iget-object v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->m:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->o:Ljava/lang/String;

    .line 14272
    iget v0, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->n:I

    .line 94
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->r:I

    .line 15272
    iget p1, p1, Lcom/muddzdev/styleabletoast/StyleableToast$a;->i:I

    .line 95
    iput p1, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->i:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/muddzdev/styleabletoast/StyleableToast$a;B)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/muddzdev/styleabletoast/StyleableToast;-><init>(Lcom/muddzdev/styleabletoast/StyleableToast$a;)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)Lcom/muddzdev/styleabletoast/StyleableToast;
    .locals 2

    .line 70
    new-instance v0, Lcom/muddzdev/styleabletoast/StyleableToast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/muddzdev/styleabletoast/StyleableToast;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;II)Lcom/muddzdev/styleabletoast/StyleableToast;
    .locals 1

    .line 66
    new-instance v0, Lcom/muddzdev/styleabletoast/StyleableToast;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/muddzdev/styleabletoast/StyleableToast;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->s:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 10

    .line 17099
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/muddzdev/styleabletoast/a$e;->styleable_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/muddzdev/styleabletoast/StyleableToast;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 17100
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->t:Landroid/widget/LinearLayout;

    .line 17101
    sget v1, Lcom/muddzdev/styleabletoast/a$c;->textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    .line 17102
    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->j:I

    if-lez v0, :cond_0

    .line 17103
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->j:I

    sget-object v3, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    .line 17226
    :cond_0
    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->j:I

    const/16 v1, 0x11

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    .line 17230
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v7, Lcom/muddzdev/styleabletoast/a$a;->default_background_color:I

    invoke-static {v0, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 17231
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/muddzdev/styleabletoast/a$b;->default_corner_radius:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 17233
    iget-object v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v9, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stSolidBackground:I

    invoke-virtual {v8, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->m:Z

    .line 17234
    iget-object v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v9, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stColorBackground:I

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->b:I

    .line 17235
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v8, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stRadius:I

    int-to-float v7, v7

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->a:I

    .line 17236
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stLength:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->i:I

    .line 17237
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stGravity:I

    const/16 v8, 0x50

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->r:I

    .line 17239
    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->r:I

    if-ne v0, v5, :cond_1

    .line 17240
    iput v1, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->r:I

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    const/16 v0, 0x30

    .line 17242
    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->r:I

    .line 17245
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stStrokeColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stStrokeWidth:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17246
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stStrokeWidth:I

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->d:I

    .line 17247
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stStrokeColor:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->c:I

    .line 17139
    :cond_3
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 17140
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/muddzdev/styleabletoast/a$d;->defaultBackgroundAlpha:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 17142
    iget v7, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->d:I

    if-lez v7, :cond_4

    .line 17143
    iget v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->c:I

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 17145
    :cond_4
    iget v7, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->a:I

    if-ltz v7, :cond_5

    int-to-float v7, v7

    .line 17146
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 17148
    :cond_5
    iget v7, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->b:I

    if-eqz v7, :cond_6

    .line 17149
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 17151
    :cond_6
    iget-boolean v7, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->m:Z

    if-eqz v7, :cond_7

    .line 17152
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/muddzdev/styleabletoast/a$d;->fullBackgroundAlpha:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 17155
    :cond_7
    iget-object v7, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18252
    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->j:I

    if-eqz v0, :cond_9

    .line 18256
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stTextColor:I

    iget-object v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->g:I

    .line 18257
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stTextBold:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->n:Z

    .line 18258
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stTextSize:I

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->k:F

    .line 18259
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v7, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stFont:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->h:I

    .line 18260
    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->k:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->l:Z

    .line 18160
    :cond_9
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->o:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18161
    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->g:I

    if-eqz v0, :cond_a

    .line 18162
    iget-object v7, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18164
    :cond_a
    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->k:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_c

    .line 18165
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->l:Z

    if-eqz v4, :cond_b

    const/4 v3, 0x0

    :cond_b
    iget v4, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->k:F

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 18167
    :cond_c
    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->h:I

    if-lez v0, :cond_d

    .line 18168
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->h:I

    invoke-static {v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    iget-boolean v4, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->n:Z

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 18170
    :cond_d
    iget-boolean v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->n:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->h:I

    if-nez v0, :cond_e

    .line 18171
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 19265
    :cond_e
    iget v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->j:I

    if-eqz v0, :cond_f

    .line 19268
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v3, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stIconStart:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->e:I

    .line 19269
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    sget v3, Lcom/muddzdev/styleabletoast/a$f;->StyleableToast_stIconEnd:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->f:I

    .line 19178
    :cond_f
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/muddzdev/styleabletoast/a$b;->toast_vertical_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 19179
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/muddzdev/styleabletoast/a$b;->toast_horizontal_padding_icon_side:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 19180
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/muddzdev/styleabletoast/a$b;->toast_horizontal_padding_empty_side:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 19181
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/muddzdev/styleabletoast/a$b;->icon_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 19183
    iget v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->e:I

    if-eqz v8, :cond_11

    .line 19184
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->e:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 19186
    invoke-virtual {v8, v6, v6, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19187
    iget-object v9, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    invoke-static {v9, v8, v2, v2, v2}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 19188
    invoke-static {}, Lcom/muddzdev/styleabletoast/b;->a()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 19189
    iget-object v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4, v0, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    .line 19191
    :cond_10
    iget-object v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v0, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 19196
    :cond_11
    :goto_2
    iget v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->f:I

    if-eqz v8, :cond_13

    .line 19197
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->f:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 19199
    invoke-virtual {v8, v6, v6, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19200
    iget-object v9, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    invoke-static {v9, v2, v2, v8, v2}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 19201
    invoke-static {}, Lcom/muddzdev/styleabletoast/b;->a()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 19202
    iget-object v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v0, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3

    .line 19204
    :cond_12
    iget-object v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4, v0, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 19209
    :cond_13
    :goto_3
    iget v4, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->e:I

    if-eqz v4, :cond_14

    iget v4, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->f:I

    if-eqz v4, :cond_14

    .line 19210
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v8, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->e:I

    invoke-static {v4, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 19211
    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->f:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v4, :cond_14

    if-eqz v8, :cond_14

    .line 19213
    invoke-virtual {v4, v6, v6, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19214
    invoke-virtual {v8, v6, v6, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19215
    iget-object v7, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->q:Landroid/widget/TextView;

    invoke-virtual {v7, v4, v2, v8, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 19216
    iget-object v2, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 17111
    :cond_14
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->p:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_15

    .line 17112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 16118
    :cond_15
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/muddzdev/styleabletoast/StyleableToast;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->s:Landroid/widget/Toast;

    .line 16119
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->s:Landroid/widget/Toast;

    iget v2, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->r:I

    if-ne v2, v1, :cond_16

    const/4 v1, 0x0

    goto :goto_4

    :cond_16
    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    :goto_4
    invoke-virtual {v0, v2, v6, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 16120
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->s:Landroid/widget/Toast;

    iget v1, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->i:I

    if-ne v1, v5, :cond_17

    goto :goto_5

    :cond_17
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 16121
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->s:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 16122
    iget-object v0, p0, Lcom/muddzdev/styleabletoast/StyleableToast;->s:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
