.class public abstract Lme/a/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lme/a/a/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/a/a/a/a/f$b;,
        Lme/a/a/a/a/f$g;,
        Lme/a/a/a/a/f$d;,
        Lme/a/a/a/a/f$c;,
        Lme/a/a/a/a/f$a;,
        Lme/a/a/a/a/f$f;,
        Lme/a/a/a/a/f$e;
    }
.end annotation


# static fields
.field public static final DEFAULT_DECELERATE_FACTOR:F = -2.0f

.field public static final DEFAULT_TOUCH_DRAG_MOVE_RATIO_BCK:F = 1.0f

.field public static final DEFAULT_TOUCH_DRAG_MOVE_RATIO_FWD:F = 3.0f

.field public static final TAG:Ljava/lang/String; = "OverScrollDecor"


# instance fields
.field protected final a:Lme/a/a/a/a/f$f;

.field protected final b:Lme/a/a/a/a/a/c;

.field protected final c:Lme/a/a/a/a/f$d;

.field protected final d:Lme/a/a/a/a/f$g;

.field protected final e:Lme/a/a/a/a/f$b;

.field protected f:Lme/a/a/a/a/f$c;

.field protected g:Lme/a/a/a/a/c;

.field protected h:Lme/a/a/a/a/d;

.field protected i:F


# direct methods
.method public constructor <init>(Lme/a/a/a/a/a/c;FFF)V
    .locals 1

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lme/a/a/a/a/f$f;

    invoke-direct {v0}, Lme/a/a/a/a/f$f;-><init>()V

    iput-object v0, p0, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    .line 77
    new-instance v0, Lme/a/a/a/a/e$a;

    invoke-direct {v0}, Lme/a/a/a/a/e$a;-><init>()V

    iput-object v0, p0, Lme/a/a/a/a/f;->g:Lme/a/a/a/a/c;

    .line 78
    new-instance v0, Lme/a/a/a/a/e$b;

    invoke-direct {v0}, Lme/a/a/a/a/e$b;-><init>()V

    iput-object v0, p0, Lme/a/a/a/a/f;->h:Lme/a/a/a/a/d;

    .line 414
    iput-object p1, p0, Lme/a/a/a/a/f;->b:Lme/a/a/a/a/a/c;

    .line 416
    new-instance p1, Lme/a/a/a/a/f$b;

    invoke-direct {p1, p0, p2}, Lme/a/a/a/a/f$b;-><init>(Lme/a/a/a/a/f;F)V

    iput-object p1, p0, Lme/a/a/a/a/f;->e:Lme/a/a/a/a/f$b;

    .line 417
    new-instance p1, Lme/a/a/a/a/f$g;

    invoke-direct {p1, p0, p3, p4}, Lme/a/a/a/a/f$g;-><init>(Lme/a/a/a/a/f;FF)V

    iput-object p1, p0, Lme/a/a/a/a/f;->d:Lme/a/a/a/a/f$g;

    .line 418
    new-instance p1, Lme/a/a/a/a/f$d;

    invoke-direct {p1, p0}, Lme/a/a/a/a/f$d;-><init>(Lme/a/a/a/a/f;)V

    iput-object p1, p0, Lme/a/a/a/a/f;->c:Lme/a/a/a/a/f$d;

    .line 420
    iget-object p1, p0, Lme/a/a/a/a/f;->c:Lme/a/a/a/a/f$d;

    iput-object p1, p0, Lme/a/a/a/a/f;->f:Lme/a/a/a/a/f$c;

    .line 1466
    invoke-virtual {p0}, Lme/a/a/a/a/f;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1467
    invoke-virtual {p0}, Lme/a/a/a/a/f;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method protected abstract a()Lme/a/a/a/a/f$e;
.end method

.method protected abstract a(Landroid/view/View;F)V
.end method

.method protected abstract a(Landroid/view/View;FLandroid/view/MotionEvent;)V
.end method

.method protected final a(Lme/a/a/a/a/f$c;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lme/a/a/a/a/f;->f:Lme/a/a/a/a/f$c;

    .line 461
    iput-object p1, p0, Lme/a/a/a/a/f;->f:Lme/a/a/a/a/f$c;

    .line 462
    iget-object p1, p0, Lme/a/a/a/a/f;->f:Lme/a/a/a/a/f$c;

    invoke-interface {p1, v0}, Lme/a/a/a/a/f$c;->handleEntryTransition(Lme/a/a/a/a/f$c;)V

    return-void
.end method

.method protected abstract b()Lme/a/a/a/a/f$a;
.end method

.method public detach()V
    .locals 2

    .line 475
    invoke-virtual {p0}, Lme/a/a/a/a/f;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 476
    invoke-virtual {p0}, Lme/a/a/a/a/f;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public getCurrentState()I
    .locals 1

    .line 451
    iget-object v0, p0, Lme/a/a/a/a/f;->f:Lme/a/a/a/a/f$c;

    invoke-interface {v0}, Lme/a/a/a/a/f$c;->getStateId()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 456
    iget-object v0, p0, Lme/a/a/a/a/f;->b:Lme/a/a/a/a/a/c;

    invoke-interface {v0}, Lme/a/a/a/a/a/c;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 427
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 429
    :cond_0
    iget-object p1, p0, Lme/a/a/a/a/f;->f:Lme/a/a/a/a/f$c;

    invoke-interface {p1, p2}, Lme/a/a/a/a/f$c;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 433
    :cond_1
    iget-object p1, p0, Lme/a/a/a/a/f;->f:Lme/a/a/a/a/f$c;

    invoke-interface {p1, p2}, Lme/a/a/a/a/f$c;->handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOverScrollStateListener(Lme/a/a/a/a/c;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    new-instance p1, Lme/a/a/a/a/e$a;

    invoke-direct {p1}, Lme/a/a/a/a/e$a;-><init>()V

    :goto_0
    iput-object p1, p0, Lme/a/a/a/a/f;->g:Lme/a/a/a/a/c;

    return-void
.end method

.method public setOverScrollUpdateListener(Lme/a/a/a/a/d;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance p1, Lme/a/a/a/a/e$b;

    invoke-direct {p1}, Lme/a/a/a/a/e$b;-><init>()V

    :goto_0
    iput-object p1, p0, Lme/a/a/a/a/f;->h:Lme/a/a/a/a/d;

    return-void
.end method
