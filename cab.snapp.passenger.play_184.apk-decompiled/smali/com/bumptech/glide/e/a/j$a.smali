.class final Lcom/bumptech/glide/e/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/e/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/a/j$a$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Integer;


# instance fields
.field final b:Landroid/view/View;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/a/h;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Lcom/bumptech/glide/e/a/j$a$a;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/e/a/j$a;->c:Ljava/util/List;

    .line 343
    iput-object p1, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    return-void
.end method

.method private a(III)I
    .locals 2

    sub-int v0, p2, p3

    if-lez v0, :cond_0

    return v0

    .line 460
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a/j$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    return p1

    .line 487
    :cond_2
    iget-object p1, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_3

    .line 496
    iget-object p1, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/e/a/j$a;->a(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1

    .line 348
    sget-object v0, Lcom/bumptech/glide/e/a/j$a;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "window"

    .line 350
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 351
    invoke-static {p0}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 352
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 353
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 354
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/e/a/j$a;->a:Ljava/lang/Integer;

    .line 356
    :cond_0
    sget-object p0, Lcom/bumptech/glide/e/a/j$a;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static a(I)Z
    .locals 1

    if-gtz p0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static a(II)Z
    .locals 0

    .line 431
    invoke-static {p0}, Lcom/bumptech/glide/e/a/j$a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/bumptech/glide/e/a/j$a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a/j$a;->d()I

    move-result v0

    .line 376
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a/j$a;->c()I

    move-result v1

    .line 377
    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a/j$a;->a(II)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1364
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/e/a/j$a;->c:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/e/a/h;

    .line 1365
    invoke-interface {v3, v0, v1}, Lcom/bumptech/glide/e/a/h;->onSizeReady(II)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a/j$a;->b()V

    return-void
.end method

.method final b()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/bumptech/glide/e/a/j$a;->e:Lcom/bumptech/glide/e/a/j$a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/bumptech/glide/e/a/j$a;->e:Lcom/bumptech/glide/e/a/j$a$a;

    .line 427
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method final c()I
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    iget-object v1, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 438
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/e/a/j$a;->a(III)I

    move-result v0

    return v0
.end method

.method final d()I
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    iget-object v1, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 445
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/e/a/j$a;->a(III)I

    move-result v0

    return v0
.end method
