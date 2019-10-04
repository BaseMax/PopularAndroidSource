.class public final Lme/a/a/a/a/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/a/a/a/a/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/a/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "g"
.end annotation


# instance fields
.field protected final a:F

.field protected final b:F

.field final c:Lme/a/a/a/a/f$e;

.field d:I

.field final synthetic e:Lme/a/a/a/a/f;


# direct methods
.method public constructor <init>(Lme/a/a/a/a/f;FF)V
    .locals 0

    .line 222
    iput-object p1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Lme/a/a/a/a/f;->a()Lme/a/a/a/a/f$e;

    move-result-object p1

    iput-object p1, p0, Lme/a/a/a/a/f$g;->c:Lme/a/a/a/a/f$e;

    .line 224
    iput p2, p0, Lme/a/a/a/a/f$g;->a:F

    .line 225
    iput p3, p0, Lme/a/a/a/a/f$g;->b:F

    return-void
.end method


# virtual methods
.method public final getStateId()I
    .locals 1

    .line 232
    iget v0, p0, Lme/a/a/a/a/f$g;->d:I

    return v0
.end method

.method public final handleEntryTransition(Lme/a/a/a/a/f$c;)V
    .locals 3

    .line 289
    iget-object v0, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget-boolean v0, v0, Lme/a/a/a/a/f$f;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lme/a/a/a/a/f$g;->d:I

    .line 290
    iget-object v0, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->g:Lme/a/a/a/a/c;

    iget-object v1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    invoke-interface {p1}, Lme/a/a/a/a/f$c;->getStateId()I

    move-result p1

    invoke-virtual {p0}, Lme/a/a/a/a/f$g;->getStateId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lme/a/a/a/a/c;->onOverScrollStateChange(Lme/a/a/a/a/b;II)V

    return-void
.end method

.method public final handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 240
    iget-object v0, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget v0, v0, Lme/a/a/a/a/f$f;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 241
    iget-object p1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v0, p1, Lme/a/a/a/a/f;->e:Lme/a/a/a/a/f$b;

    invoke-virtual {p1, v0}, Lme/a/a/a/a/f;->a(Lme/a/a/a/a/f$c;)V

    return v3

    .line 245
    :cond_0
    iget-object v0, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->b:Lme/a/a/a/a/a/c;

    invoke-interface {v0}, Lme/a/a/a/a/a/c;->getView()Landroid/view/View;

    move-result-object v0

    .line 246
    iget-object v2, p0, Lme/a/a/a/a/f$g;->c:Lme/a/a/a/a/f$e;

    invoke-virtual {v2, v0, p1}, Lme/a/a/a/a/f$e;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 251
    :cond_1
    iget-object v2, p0, Lme/a/a/a/a/f$g;->c:Lme/a/a/a/a/f$e;

    iget v2, v2, Lme/a/a/a/a/f$e;->mDeltaOffset:F

    iget-object v4, p0, Lme/a/a/a/a/f$g;->c:Lme/a/a/a/a/f$e;

    iget-boolean v4, v4, Lme/a/a/a/a/f$e;->mDir:Z

    iget-object v5, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v5, v5, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget-boolean v5, v5, Lme/a/a/a/a/f$f;->c:Z

    if-ne v4, v5, :cond_2

    iget v4, p0, Lme/a/a/a/a/f$g;->a:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lme/a/a/a/a/f$g;->b:F

    :goto_0
    div-float/2addr v2, v4

    .line 252
    iget-object v4, p0, Lme/a/a/a/a/f$g;->c:Lme/a/a/a/a/f$e;

    iget v4, v4, Lme/a/a/a/a/f$e;->mAbsOffset:F

    add-float/2addr v4, v2

    .line 257
    iget-object v5, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v5, v5, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget-boolean v5, v5, Lme/a/a/a/a/f$f;->c:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lme/a/a/a/a/f$g;->c:Lme/a/a/a/a/f$e;

    iget-boolean v5, v5, Lme/a/a/a/a/f$e;->mDir:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v5, v5, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget v5, v5, Lme/a/a/a/a/f$f;->b:F

    cmpg-float v5, v4, v5

    if-lez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v5, v5, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget-boolean v5, v5, Lme/a/a/a/a/f$f;->c:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lme/a/a/a/a/f$g;->c:Lme/a/a/a/a/f$e;

    iget-boolean v5, v5, Lme/a/a/a/a/f$e;->mDir:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v5, v5, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget v5, v5, Lme/a/a/a/a/f$f;->b:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_5

    .line 259
    :cond_4
    iget-object v1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v2, v1, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget v2, v2, Lme/a/a/a/a/f$f;->b:F

    invoke-virtual {v1, v0, v2, p1}, Lme/a/a/a/a/f;->a(Landroid/view/View;FLandroid/view/MotionEvent;)V

    .line 260
    iget-object p1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object p1, p1, Lme/a/a/a/a/f;->h:Lme/a/a/a/a/d;

    iget-object v0, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget v1, p0, Lme/a/a/a/a/f$g;->d:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lme/a/a/a/a/d;->onOverScrollUpdate(Lme/a/a/a/a/b;IF)V

    .line 262
    iget-object p1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v0, p1, Lme/a/a/a/a/f;->c:Lme/a/a/a/a/f$d;

    invoke-virtual {p1, v0}, Lme/a/a/a/a/f;->a(Lme/a/a/a/a/f$c;)V

    return v3

    .line 266
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 270
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_7

    .line 272
    iget-object p1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    long-to-float v1, v5

    div-float/2addr v2, v1

    iput v2, p1, Lme/a/a/a/a/f;->i:F

    .line 275
    :cond_7
    iget-object p1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    invoke-virtual {p1, v0, v4}, Lme/a/a/a/a/f;->a(Landroid/view/View;F)V

    .line 276
    iget-object p1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object p1, p1, Lme/a/a/a/a/f;->h:Lme/a/a/a/a/d;

    iget-object v0, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget v1, p0, Lme/a/a/a/a/f$g;->d:I

    invoke-interface {p1, v0, v1, v4}, Lme/a/a/a/a/d;->onOverScrollUpdate(Lme/a/a/a/a/b;IF)V

    return v3
.end method

.method public final handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 283
    iget-object p1, p0, Lme/a/a/a/a/f$g;->e:Lme/a/a/a/a/f;

    iget-object v0, p1, Lme/a/a/a/a/f;->e:Lme/a/a/a/a/f$b;

    invoke-virtual {p1, v0}, Lme/a/a/a/a/f;->a(Lme/a/a/a/a/f$c;)V

    const/4 p1, 0x0

    return p1
.end method
