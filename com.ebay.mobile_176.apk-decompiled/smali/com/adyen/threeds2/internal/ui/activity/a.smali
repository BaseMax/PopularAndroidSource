.class final Lcom/adyen/threeds2/internal/ui/activity/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SyntheticAccessor"
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/adyen/threeds2/internal/ui/b/a;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/adyen/threeds2/internal/ui/b/a;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->b:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->c:Lcom/adyen/threeds2/internal/ui/b/a;

    .line 76
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    return-void
.end method

.method private a(Landroid/animation/AnimatorSet;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->g()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-direct {p0, v0, p1}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 202
    sget v0, Lcom/adyen/threeds2/R$id;->scrollView_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    sget v1, Lcom/adyen/threeds2/R$id;->scrollView_content:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 205
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 206
    invoke-direct {p0, p2}, Lcom/adyen/threeds2/internal/ui/activity/a;->c(Landroid/view/View;)V

    .line 208
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 209
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 211
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 212
    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 213
    new-instance v0, Lcom/adyen/threeds2/internal/ui/activity/a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/activity/a$1;-><init>(Lcom/adyen/threeds2/internal/ui/activity/a;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    invoke-direct {p0, v2}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Landroid/animation/AnimatorSet;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/adyen/threeds2/internal/ui/activity/a;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->i()V

    return-void
.end method

.method static synthetic a(Lcom/adyen/threeds2/internal/ui/activity/a;Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/activity/a;->b(Landroid/view/View;)V

    return-void
.end method

.method private static a(Z)V
    .locals 0

    .line 70
    sput-boolean p0, Lcom/adyen/threeds2/internal/ui/activity/a;->a:Z

    return-void
.end method

.method static a()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/adyen/threeds2/internal/ui/activity/a;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/adyen/threeds2/internal/ui/activity/a;)Ljava/util/Queue;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->h()Landroid/view/ViewGroup;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/adyen/threeds2/internal/ui/activity/a;)Lcom/adyen/threeds2/internal/ui/b/a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->c:Lcom/adyen/threeds2/internal/ui/b/a;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 230
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->h()Landroid/view/ViewGroup;

    move-result-object v0

    .line 232
    instance-of v1, p1, Lcom/adyen/threeds2/internal/ui/c/c;

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private f()Landroid/view/View;
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->h()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g()Landroid/view/View;
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->h()Landroid/view/ViewGroup;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 188
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private h()Landroid/view/ViewGroup;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private i()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/adyen/threeds2/internal/a/a/b/a;)V
    .locals 2

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Z)V

    .line 105
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/a$2;->a:[I

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/a;->a()Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->CHALLENGE_PRESENTATION_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1

    .line 123
    :pswitch_0
    new-instance v0, Lcom/adyen/threeds2/internal/ui/c/b;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adyen/threeds2/internal/ui/c/b;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Landroid/view/View;)V

    .line 125
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/f;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/ui/c/b;->a(Lcom/adyen/threeds2/internal/a/a/b/f;)V

    goto :goto_0

    .line 118
    :pswitch_1
    new-instance v0, Lcom/adyen/threeds2/internal/ui/c/e;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adyen/threeds2/internal/ui/c/e;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Landroid/view/View;)V

    .line 120
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/n;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/ui/c/e;->a(Lcom/adyen/threeds2/internal/a/a/b/l;)V

    goto :goto_0

    .line 113
    :pswitch_2
    new-instance v0, Lcom/adyen/threeds2/internal/ui/c/f;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adyen/threeds2/internal/ui/c/f;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Landroid/view/View;)V

    .line 115
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/o;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->a(Lcom/adyen/threeds2/internal/a/a/b/l;)V

    goto :goto_0

    .line 107
    :pswitch_3
    new-instance v0, Lcom/adyen/threeds2/internal/ui/c/g;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adyen/threeds2/internal/ui/c/g;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Landroid/view/View;)V

    .line 109
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/q;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/ui/c/g;->a(Lcom/adyen/threeds2/internal/a/a/b/l;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b()V
    .locals 2

    .line 80
    invoke-static {}, Lcom/adyen/threeds2/internal/ui/activity/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 81
    invoke-static {v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Z)V

    .line 83
    new-instance v0, Lcom/adyen/threeds2/internal/ui/c/c;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adyen/threeds2/internal/ui/c/c;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method b(Lcom/adyen/threeds2/internal/a/a/b/a;)V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->e()Lcom/adyen/threeds2/internal/ui/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    instance-of v1, v0, Lcom/adyen/threeds2/internal/ui/c/c;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    sget-object v1, Lcom/adyen/threeds2/internal/ui/activity/a$2;->a:[I

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/a;->a()Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    check-cast v0, Lcom/adyen/threeds2/internal/ui/c/b;

    .line 146
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/f;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/ui/c/b;->b(Lcom/adyen/threeds2/internal/a/a/b/f;)V

    goto :goto_0

    .line 141
    :pswitch_1
    check-cast v0, Lcom/adyen/threeds2/internal/ui/c/e;

    .line 142
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/n;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/ui/c/e;->b(Lcom/adyen/threeds2/internal/a/a/b/n;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method c()V
    .locals 1

    .line 89
    invoke-static {}, Lcom/adyen/threeds2/internal/ui/activity/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Z)V

    .line 92
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->g()Landroid/view/View;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->b(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->h()Landroid/view/ViewGroup;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 159
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method e()Lcom/adyen/threeds2/internal/ui/c/a;
    .locals 2

    .line 196
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/a;->f()Landroid/view/View;

    move-result-object v0

    .line 198
    instance-of v1, v0, Lcom/adyen/threeds2/internal/ui/c/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/adyen/threeds2/internal/ui/c/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
