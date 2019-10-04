.class public Lcom/getkeepsafe/taptargetview/TapTargetView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/taptargetview/TapTargetView$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Landroid/text/SpannableStringBuilder;

.field G:Landroid/text/DynamicLayout;

.field H:Landroid/text/TextPaint;

.field I:Landroid/graphics/Paint;

.field J:Landroid/graphics/Rect;

.field K:Landroid/graphics/Rect;

.field L:Landroid/graphics/Path;

.field M:F

.field N:I

.field O:[I

.field P:I

.field Q:F

.field R:I

.field S:F

.field T:I

.field U:I

.field V:I

.field W:F

.field final a:I

.field aa:F

.field ab:I

.field ac:I

.field ad:Landroid/graphics/Bitmap;

.field ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

.field af:Landroid/view/ViewOutlineProvider;

.field final ag:Lcom/getkeepsafe/taptargetview/a$b;

.field final ah:Landroid/animation/ValueAnimator;

.field final ai:Landroid/animation/ValueAnimator;

.field final aj:Landroid/animation/ValueAnimator;

.field private ak:Z

.field private al:Z

.field private am:Z

.field private final an:Landroid/animation/ValueAnimator;

.field private ao:[Landroid/animation/ValueAnimator;

.field private final ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I

.field final i:I

.field final j:I

.field final k:I

.field final l:Landroid/view/ViewGroup;

.field final m:Landroid/view/ViewManager;

.field final n:Lcom/getkeepsafe/taptargetview/c;

.field final o:Landroid/graphics/Rect;

.field final p:Landroid/text/TextPaint;

.field final q:Landroid/text/TextPaint;

.field final r:Landroid/graphics/Paint;

.field final s:Landroid/graphics/Paint;

.field final t:Landroid/graphics/Paint;

.field final u:Landroid/graphics/Paint;

.field v:Ljava/lang/CharSequence;

.field w:Landroid/text/StaticLayout;

.field x:Ljava/lang/CharSequence;

.field y:Landroid/text/StaticLayout;

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)V
    .locals 9

    .line 373
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    .line 71
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->al:Z

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    .line 226
    new-instance v2, Lcom/getkeepsafe/taptargetview/TapTargetView$1;

    invoke-direct {v2, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$1;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ag:Lcom/getkeepsafe/taptargetview/a$b;

    .line 262
    new-instance v2, Lcom/getkeepsafe/taptargetview/a;

    invoke-direct {v2}, Lcom/getkeepsafe/taptargetview/a;-><init>()V

    const-wide/16 v3, 0xfa

    .line 263
    invoke-virtual {v2, v3, v4}, Lcom/getkeepsafe/taptargetview/a;->duration(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 264
    invoke-virtual {v2, v3, v4}, Lcom/getkeepsafe/taptargetview/a;->delayBy(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 265
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Lcom/getkeepsafe/taptargetview/TapTargetView$6;

    invoke-direct {v5, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$6;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 266
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->onUpdate(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v5, Lcom/getkeepsafe/taptargetview/TapTargetView$5;

    invoke-direct {v5, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$5;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 272
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->onEnd(Lcom/getkeepsafe/taptargetview/a$a;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/a;->build()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ah:Landroid/animation/ValueAnimator;

    .line 281
    new-instance v2, Lcom/getkeepsafe/taptargetview/a;

    invoke-direct {v2}, Lcom/getkeepsafe/taptargetview/a;-><init>()V

    const-wide/16 v5, 0x3e8

    .line 282
    invoke-virtual {v2, v5, v6}, Lcom/getkeepsafe/taptargetview/a;->duration(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    const/4 v5, -0x1

    .line 283
    invoke-virtual {v2, v5}, Lcom/getkeepsafe/taptargetview/a;->repeat(I)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 284
    invoke-virtual {v2, v6}, Lcom/getkeepsafe/taptargetview/a;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v6, Lcom/getkeepsafe/taptargetview/TapTargetView$7;

    invoke-direct {v6, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$7;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 285
    invoke-virtual {v2, v6}, Lcom/getkeepsafe/taptargetview/a;->onUpdate(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 301
    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/a;->build()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ai:Landroid/animation/ValueAnimator;

    .line 303
    new-instance v2, Lcom/getkeepsafe/taptargetview/a;

    invoke-direct {v2, v1}, Lcom/getkeepsafe/taptargetview/a;-><init>(Z)V

    .line 304
    invoke-virtual {v2, v3, v4}, Lcom/getkeepsafe/taptargetview/a;->duration(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 305
    invoke-virtual {v2, v6}, Lcom/getkeepsafe/taptargetview/a;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v6, Lcom/getkeepsafe/taptargetview/TapTargetView$9;

    invoke-direct {v6, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$9;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 306
    invoke-virtual {v2, v6}, Lcom/getkeepsafe/taptargetview/a;->onUpdate(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v6, Lcom/getkeepsafe/taptargetview/TapTargetView$8;

    invoke-direct {v6, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$8;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 312
    invoke-virtual {v2, v6}, Lcom/getkeepsafe/taptargetview/a;->onEnd(Lcom/getkeepsafe/taptargetview/a$a;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/a;->build()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->aj:Landroid/animation/ValueAnimator;

    .line 320
    new-instance v2, Lcom/getkeepsafe/taptargetview/a;

    invoke-direct {v2}, Lcom/getkeepsafe/taptargetview/a;-><init>()V

    .line 321
    invoke-virtual {v2, v3, v4}, Lcom/getkeepsafe/taptargetview/a;->duration(J)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 322
    invoke-virtual {v2, v3}, Lcom/getkeepsafe/taptargetview/a;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v3, Lcom/getkeepsafe/taptargetview/TapTargetView$11;

    invoke-direct {v3, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$11;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 323
    invoke-virtual {v2, v3}, Lcom/getkeepsafe/taptargetview/a;->onUpdate(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    new-instance v3, Lcom/getkeepsafe/taptargetview/TapTargetView$10;

    invoke-direct {v3, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$10;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 340
    invoke-virtual {v2, v3}, Lcom/getkeepsafe/taptargetview/a;->onEnd(Lcom/getkeepsafe/taptargetview/a$a;)Lcom/getkeepsafe/taptargetview/a;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/a;->build()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->an:Landroid/animation/ValueAnimator;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/ValueAnimator;

    .line 348
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ah:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ai:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->an:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->aj:Landroid/animation/ValueAnimator;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ao:[Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_12

    .line 376
    iput-object p4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    .line 377
    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->m:Landroid/view/ViewManager;

    .line 378
    iput-object p3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->l:Landroid/view/ViewGroup;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    new-instance p5, Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    invoke-direct {p5}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;-><init>()V

    :goto_0
    iput-object p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    .line 380
    iget-object p2, p4, Lcom/getkeepsafe/taptargetview/c;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->v:Ljava/lang/CharSequence;

    .line 381
    iget-object p2, p4, Lcom/getkeepsafe/taptargetview/c;->b:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->x:Ljava/lang/CharSequence;

    const/16 p2, 0x14

    .line 383
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    const/16 p5, 0x28

    .line 384
    invoke-static {p1, p5}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    .line 385
    iget v2, p4, Lcom/getkeepsafe/taptargetview/c;->d:I

    invoke-static {p1, v2}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    .line 386
    invoke-static {p1, p5}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->d:I

    const/16 p5, 0x8

    .line 387
    invoke-static {p1, p5}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->e:I

    const/16 v2, 0x168

    .line 388
    invoke-static {p1, v2}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->f:I

    .line 389
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->g:I

    const/16 p2, 0x58

    .line 390
    invoke-static {p1, p2}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->i:I

    .line 391
    invoke-static {p1, p5}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->j:I

    .line 392
    invoke-static {p1, v1}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->k:I

    const p2, 0x3dcccccd    # 0.1f

    .line 393
    iget p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float p5, p5

    mul-float p5, p5, p2

    float-to-int p2, p5

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->c:I

    .line 395
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->L:Landroid/graphics/Path;

    .line 396
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 397
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    .line 399
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    .line 400
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    .line 1479
    iget p5, p4, Lcom/getkeepsafe/taptargetview/c;->u:I

    iget v2, p4, Lcom/getkeepsafe/taptargetview/c;->s:I

    invoke-static {p1, p5, v2}, Lcom/getkeepsafe/taptargetview/c;->a(Landroid/content/Context;II)I

    move-result p5

    int-to-float p5, p5

    .line 400
    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 401
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    const-string p5, "sans-serif-medium"

    invoke-static {p5, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 402
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 404
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    .line 405
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    .line 1483
    iget p5, p4, Lcom/getkeepsafe/taptargetview/c;->v:I

    iget v2, p4, Lcom/getkeepsafe/taptargetview/c;->t:I

    invoke-static {p1, p5, v2}, Lcom/getkeepsafe/taptargetview/c;->a(Landroid/content/Context;II)I

    move-result p5

    int-to-float p5, p5

    .line 405
    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 406
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    sget-object p5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p5, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 407
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 408
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    const/16 p5, 0x89

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 410
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    .line 411
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 412
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    iget p5, p4, Lcom/getkeepsafe/taptargetview/c;->c:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p5, p5, v2

    float-to-int p5, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 414
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    .line 415
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 416
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    const/16 p5, 0x32

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 417
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 418
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    iget p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->k:I

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 419
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    const/high16 p5, -0x1000000

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    .line 422
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 424
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    .line 425
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1544
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-boolean p2, p2, Lcom/getkeepsafe/taptargetview/c;->z:Z

    iput-boolean p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->B:Z

    .line 1545
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-boolean p2, p2, Lcom/getkeepsafe/taptargetview/c;->x:Z

    iput-boolean p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->C:Z

    .line 1546
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-boolean p2, p2, Lcom/getkeepsafe/taptargetview/c;->y:Z

    iput-boolean p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->D:Z

    .line 1550
    iget-boolean p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->C:Z

    if-eqz p2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p2, v2, :cond_1

    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-boolean p2, p2, Lcom/getkeepsafe/taptargetview/c;->A:Z

    if-nez p2, :cond_1

    .line 1551
    new-instance p2, Lcom/getkeepsafe/taptargetview/TapTargetView$4;

    invoke-direct {p2, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$4;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    .line 1566
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1567
    iget p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->j:I

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setElevation(F)V

    .line 1570
    :cond_1
    iget-boolean p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->C:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    if-nez p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge p2, v3, :cond_2

    .line 1571
    invoke-virtual {p0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 1573
    :cond_2
    invoke-virtual {p0, v4, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1576
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const-string v2, "isLightTheme"

    .line 1577
    invoke-static {p1, v2}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->z:Z

    .line 1579
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    .line 2455
    iget-object v3, v2, Lcom/getkeepsafe/taptargetview/c;->n:Ljava/lang/Integer;

    iget v2, v2, Lcom/getkeepsafe/taptargetview/c;->i:I

    invoke-static {p1, v3, v2}, Lcom/getkeepsafe/taptargetview/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1581
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 1583
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    const-string v2, "colorPrimary"

    invoke-static {p1, v2}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 1585
    :cond_5
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1588
    :goto_3
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    .line 2460
    iget-object v2, p2, Lcom/getkeepsafe/taptargetview/c;->o:Ljava/lang/Integer;

    iget p2, p2, Lcom/getkeepsafe/taptargetview/c;->j:I

    invoke-static {p1, v2, p2}, Lcom/getkeepsafe/taptargetview/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1590
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    .line 1592
    :cond_6
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    iget-boolean p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->z:Z

    if-eqz p2, :cond_7

    const/high16 p2, -0x1000000

    goto :goto_4

    :cond_7
    const/4 p2, -0x1

    :goto_4
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1595
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-boolean p2, p2, Lcom/getkeepsafe/taptargetview/c;->A:Z

    if-eqz p2, :cond_8

    .line 1596
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1599
    :cond_8
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1601
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    .line 2465
    iget-object v2, p2, Lcom/getkeepsafe/taptargetview/c;->p:Ljava/lang/Integer;

    iget p2, p2, Lcom/getkeepsafe/taptargetview/c;->k:I

    invoke-static {p1, v2, p2}, Lcom/getkeepsafe/taptargetview/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 1603
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    ushr-int/lit8 v2, p2, 0x18

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float v2, v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    const v3, 0xffffff

    and-int/2addr p2, v3

    or-int/2addr p2, v2

    iput p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->V:I

    goto :goto_5

    .line 1605
    :cond_9
    iput v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->V:I

    .line 1608
    :goto_5
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    .line 3470
    iget-object v2, p2, Lcom/getkeepsafe/taptargetview/c;->q:Ljava/lang/Integer;

    iget p2, p2, Lcom/getkeepsafe/taptargetview/c;->l:I

    invoke-static {p1, v2, p2}, Lcom/getkeepsafe/taptargetview/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1610
    iget-object p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object p2, p5

    goto :goto_6

    .line 1612
    :cond_a
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->z:Z

    if-eqz v2, :cond_b

    const/high16 v5, -0x1000000

    :cond_b
    :goto_6
    invoke-virtual {p2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1615
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    .line 3475
    iget-object p5, p2, Lcom/getkeepsafe/taptargetview/c;->r:Ljava/lang/Integer;

    iget p2, p2, Lcom/getkeepsafe/taptargetview/c;->m:I

    invoke-static {p1, p5, p2}, Lcom/getkeepsafe/taptargetview/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 1617
    iget-object p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p5, p2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_7

    .line 1619
    :cond_c
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    iget-object p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    invoke-virtual {p5}, Landroid/text/TextPaint;->getColor()I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1622
    :goto_7
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object p2, p2, Lcom/getkeepsafe/taptargetview/c;->g:Landroid/graphics/Typeface;

    if-eqz p2, :cond_d

    .line 1623
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    iget-object p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object p5, p5, Lcom/getkeepsafe/taptargetview/c;->g:Landroid/graphics/Typeface;

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1626
    :cond_d
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object p2, p2, Lcom/getkeepsafe/taptargetview/c;->h:Landroid/graphics/Typeface;

    if-eqz p2, :cond_e

    .line 1627
    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    iget-object p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object p5, p5, Lcom/getkeepsafe/taptargetview/c;->h:Landroid/graphics/Typeface;

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 431
    :cond_e
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x13

    if-lt p2, p5, :cond_11

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_11

    .line 432
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    .line 433
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p5, 0x4000000

    and-int/2addr p5, p2

    if-eqz p5, :cond_f

    const/4 p5, 0x1

    goto :goto_8

    :cond_f
    const/4 p5, 0x0

    :goto_8
    const/high16 v2, 0x8000000

    and-int/2addr p2, v2

    if-eqz p2, :cond_10

    const/4 v0, 0x1

    :cond_10
    move v7, p5

    move v8, v0

    goto :goto_9

    :cond_11
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 441
    :goto_9
    new-instance p2, Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/getkeepsafe/taptargetview/TapTargetView$12;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;Lcom/getkeepsafe/taptargetview/c;Landroid/view/ViewGroup;Landroid/content/Context;ZZ)V

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 493
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 495
    invoke-virtual {p0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setFocusableInTouchMode(Z)V

    .line 496
    invoke-virtual {p0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setClickable(Z)V

    .line 497
    new-instance p1, Lcom/getkeepsafe/taptargetview/TapTargetView$2;

    invoke-direct {p1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$2;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    new-instance p1, Lcom/getkeepsafe/taptargetview/TapTargetView$3;

    invoke-direct {p1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$3;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 374
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(IIII)D
    .locals 4

    sub-int/2addr p2, p0

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1029
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int/2addr p3, p1

    int-to-double p0, p3

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static a(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    div-float/2addr v1, v0

    return v1
.end method

.method static a(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    div-float/2addr p0, v0

    return p0
.end method

.method static a(IILandroid/graphics/Rect;)I
    .locals 7

    .line 1021
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1, v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide v0

    .line 1022
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1, v2, v3}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide v2

    .line 1023
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1, v4, v5}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide v4

    .line 1024
    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1, v6, p2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide p0

    .line 1025
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method static synthetic a(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 638
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->al:Z

    const/4 v1, 0x1

    .line 641
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    .line 643
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ao:[Landroid/animation/ValueAnimator;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 644
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 645
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ap:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v1, v2}, Lcom/getkeepsafe/taptargetview/g;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 649
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->E:Z

    .line 651
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    if-eqz v0, :cond_2

    .line 652
    invoke-virtual {v0, p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetDismissed(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    return p1
.end method

.method private b(Z)V
    .locals 0

    .line 781
    invoke-direct {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Z)V

    .line 782
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->m:Landroid/view/ViewManager;

    invoke-static {p1, p0}, Lcom/getkeepsafe/taptargetview/g;->a(Landroid/view/ViewManager;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/getkeepsafe/taptargetview/TapTargetView;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->al:Z

    return p0
.end method

.method static synthetic c(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 1

    .line 4536
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4537
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    .line 4538
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 4539
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->E:Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/getkeepsafe/taptargetview/TapTargetView;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    return p0
.end method

.method public static showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/c;)Lcom/getkeepsafe/taptargetview/TapTargetView;
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object p0

    return-object p0
.end method

.method public static showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;
    .locals 9

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 163
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v7, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const v1, 0x1020002

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    .line 166
    new-instance v8, Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/getkeepsafe/taptargetview/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)V

    .line 167
    invoke-virtual {v0, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v8

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showFor(Landroid/app/Dialog;Lcom/getkeepsafe/taptargetview/c;)Lcom/getkeepsafe/taptargetview/TapTargetView;
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Dialog;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object p0

    return-object p0
.end method

.method public static showFor(Landroid/app/Dialog;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;
    .locals 8

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "window"

    .line 180
    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 181
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v0, 0x2

    .line 182
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    .line 183
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, 0x0

    .line 184
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x800033

    .line 185
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 186
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 187
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, -0x1

    .line 188
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 189
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 191
    new-instance v7, Lcom/getkeepsafe/taptargetview/TapTargetView;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/getkeepsafe/taptargetview/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)V

    .line 192
    invoke-interface {p0, v7, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7

    .line 177
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dialog is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 923
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    if-nez v0, :cond_0

    return-void

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 929
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    sub-float/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 930
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v2, v3, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 932
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method final a(Landroid/graphics/Rect;)V
    .locals 1

    .line 1033
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->invalidate(Landroid/graphics/Rect;)V

    .line 1034
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 766
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->al:Z

    .line 767
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ai:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 768
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 769
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->E:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 774
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->an:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 776
    :cond_1
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->aj:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 770
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->b(Z)V

    return-void
.end method

.method getOuterCircleCenterPoint()[I
    .locals 9

    .line 968
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 4013
    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ac:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 4014
    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->i:I

    if-lt v0, v4, :cond_2

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 4016
    :cond_0
    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->i:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getHeight()I

    move-result v1

    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->i:I

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x2

    if-eqz v0, :cond_3

    new-array v0, v1, [I

    .line 969
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    aput v1, v0, v2

    return-object v0

    .line 972
    :cond_3
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v0, v1

    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    add-int/2addr v0, v4

    .line 973
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getTotalTextHeight()I

    move-result v4

    .line 975
    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 977
    :goto_2
    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 978
    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 979
    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-nez v7, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    :goto_3
    if-eqz v5, :cond_6

    .line 980
    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 981
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v8, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    sub-int/2addr v5, v8

    iget v8, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    sub-int/2addr v5, v8

    sub-int/2addr v5, v4

    add-int/2addr v5, v7

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 983
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    add-int/2addr v4, v5

    add-int v5, v4, v7

    :goto_4
    new-array v4, v1, [I

    add-int/2addr v6, v0

    .line 985
    div-int/2addr v6, v1

    aput v6, v4, v3

    aput v5, v4, v2

    return-object v4
.end method

.method getTextBounds()Landroid/graphics/Rect;
    .locals 6

    .line 949
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getTotalTextHeight()I

    move-result v0

    .line 950
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getTotalTextWidth()I

    move-result v1

    .line 952
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 954
    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ab:I

    if-gt v2, v3, :cond_0

    .line 957
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    add-int/2addr v2, v3

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 961
    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->g:I

    neg-int v3, v3

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->g:I

    .line 962
    :goto_0
    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->d:I

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 963
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->d:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 964
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method getTotalTextHeight()I
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 993
    :cond_0
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    .line 994
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->e:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 997
    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->e:I

    goto :goto_0
.end method

.method getTotalTextWidth()I
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    .line 1006
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    return v0

    .line 1009
    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 795
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 633
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 634
    invoke-direct {p0, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 658
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ak:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 660
    :cond_0
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ab:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ac:I

    if-lez v2, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ac:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 664
    :cond_1
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->V:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 665
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    iget v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->P:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 670
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->C:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->af:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_4

    .line 671
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 673
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->L:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const v3, 0x3e4ccccd    # 0.2f

    .line 3799
    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->P:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 3800
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3801
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    float-to-int v5, v4

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3802
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v5, v3, v1

    int-to-float v5, v5

    aget v3, v3, v2

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->j:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3803
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x6

    :goto_0
    if-lez v3, :cond_3

    .line 3806
    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    int-to-float v6, v3

    const/high16 v7, 0x40e00000    # 7.0f

    div-float/2addr v6, v7

    mul-float v6, v6, v4

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3807
    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v6, v5, v1

    int-to-float v6, v6

    aget v5, v5, v2

    iget v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->j:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    rsub-int/lit8 v8, v3, 0x7

    iget v9, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->k:I

    mul-int v8, v8, v9

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v3, v0, v1

    int-to-float v3, v3

    aget v0, v0, v2

    int-to-float v0, v0

    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 680
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    iget v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->T:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 681
    iget v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->R:I

    if-lez v0, :cond_5

    .line 682
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 683
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->Q:F

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 686
    :cond_5
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->S:F

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 689
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 691
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 692
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    iget v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->U:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 693
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-eqz v3, :cond_6

    .line 694
    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 697
    :cond_6
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    if-eqz v3, :cond_7

    .line 698
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    iget v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->e:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 699
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget v5, v5, Lcom/getkeepsafe/taptargetview/c;->B:F

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->U:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 700
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 703
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 705
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 707
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    .line 708
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 709
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 708
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 710
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ad:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 711
    :cond_8
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object v3, v3, Lcom/getkeepsafe/taptargetview/c;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    .line 712
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object v5, v5, Lcom/getkeepsafe/taptargetview/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 713
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object v6, v6, Lcom/getkeepsafe/taptargetview/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 712
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 714
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object v3, v3, Lcom/getkeepsafe/taptargetview/c;->f:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->t:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 715
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/c;

    iget-object v3, v3, Lcom/getkeepsafe/taptargetview/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 718
    :cond_9
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 720
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->A:Z

    if-eqz v0, :cond_e

    .line 3813
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    const/16 v3, 0xff

    if-nez v0, :cond_a

    .line 3814
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    .line 3815
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 3816
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3817
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/getkeepsafe/taptargetview/e;->a(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3820
    :cond_a
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    if-nez v0, :cond_b

    .line 3821
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    .line 3822
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    const/high16 v5, -0x10000

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 3823
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lcom/getkeepsafe/taptargetview/e;->b(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3827
    :cond_b
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3828
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3829
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3830
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v5, v0, v1

    int-to-float v5, v5

    aget v0, v0, v2

    int-to-float v0, v0

    const/high16 v6, 0x41200000    # 10.0f

    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3831
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v5, v0, v1

    int-to-float v5, v5

    aget v0, v0, v2

    int-to-float v0, v0

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->N:I

    iget v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->h:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3832
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    iget v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->a:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3835
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3836
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Text bounds: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->K:Landroid/graphics/Rect;

    .line 3837
    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nTarget bounds: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 3838
    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nCenter: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nView size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3840
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 3841
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3843
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->F:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_c

    .line 3844
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->F:Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 3846
    :cond_c
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3847
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->F:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3850
    :goto_2
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    if-nez v0, :cond_d

    .line 3851
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v7, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->H:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    .line 3854
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3856
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    const/16 v5, 0xdc

    invoke-virtual {v2, v5, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 3857
    iget v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ab:I

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3858
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v2

    int-to-float v8, v2

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3859
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->I:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 3860
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->G:Landroid/text/DynamicLayout;

    invoke-virtual {v1, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3862
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_e
    :goto_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 735
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 744
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 745
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 746
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->am:Z

    .line 748
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    if-eqz p1, :cond_0

    .line 749
    invoke-virtual {p1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    goto :goto_0

    .line 751
    :cond_0
    new-instance p1, Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    invoke-direct {p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;-><init>()V

    invoke-virtual {p1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->W:F

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->aa:F

    .line 729
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawDebug(Z)V
    .locals 1

    .line 787
    iget-boolean v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->A:Z

    if-eq v0, p1, :cond_0

    .line 788
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView;->A:Z

    .line 789
    invoke-virtual {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->postInvalidate()V

    :cond_0
    return-void
.end method
