.class public final Lme/a/a/a/a/f$d;
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
    name = "d"
.end annotation


# instance fields
.field final a:Lme/a/a/a/a/f$e;

.field final synthetic b:Lme/a/a/a/a/f;


# direct methods
.method public constructor <init>(Lme/a/a/a/a/f;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p1}, Lme/a/a/a/a/f;->a()Lme/a/a/a/a/f$e;

    move-result-object p1

    iput-object p1, p0, Lme/a/a/a/a/f$d;->a:Lme/a/a/a/a/f$e;

    return-void
.end method


# virtual methods
.method public final getStateId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final handleEntryTransition(Lme/a/a/a/a/f$c;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->g:Lme/a/a/a/a/c;

    iget-object v1, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    invoke-interface {p1}, Lme/a/a/a/a/f$c;->getStateId()I

    move-result p1

    invoke-virtual {p0}, Lme/a/a/a/a/f$d;->getStateId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lme/a/a/a/a/c;->onOverScrollStateChange(Lme/a/a/a/a/b;II)V

    return-void
.end method

.method public final handleMoveTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 171
    iget-object v0, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->b:Lme/a/a/a/a/a/c;

    invoke-interface {v0}, Lme/a/a/a/a/a/c;->getView()Landroid/view/View;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lme/a/a/a/a/f$d;->a:Lme/a/a/a/a/f$e;

    invoke-virtual {v1, v0, p1}, Lme/a/a/a/a/f$e;->init(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 177
    :cond_0
    iget-object v0, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->b:Lme/a/a/a/a/a/c;

    invoke-interface {v0}, Lme/a/a/a/a/a/c;->isInAbsoluteStart()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/a/a/a/a/f$d;->a:Lme/a/a/a/a/f$e;

    iget-boolean v0, v0, Lme/a/a/a/a/f$e;->mDir:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->b:Lme/a/a/a/a/a/c;

    .line 178
    invoke-interface {v0}, Lme/a/a/a/a/a/c;->isInAbsoluteEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/a/a/a/a/f$d;->a:Lme/a/a/a/a/f$e;

    iget-boolean v0, v0, Lme/a/a/a/a/f$e;->mDir:Z

    if-nez v0, :cond_3

    .line 181
    :cond_2
    iget-object v0, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lme/a/a/a/a/f$f;->a:I

    .line 182
    iget-object v0, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget-object v1, p0, Lme/a/a/a/a/f$d;->a:Lme/a/a/a/a/f$e;

    iget v1, v1, Lme/a/a/a/a/f$e;->mAbsOffset:F

    iput v1, v0, Lme/a/a/a/a/f$f;->b:F

    .line 183
    iget-object v0, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->a:Lme/a/a/a/a/f$f;

    iget-object v1, p0, Lme/a/a/a/a/f$d;->a:Lme/a/a/a/a/f$e;

    iget-boolean v1, v1, Lme/a/a/a/a/f$e;->mDir:Z

    iput-boolean v1, v0, Lme/a/a/a/a/f$f;->c:Z

    .line 185
    iget-object v0, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    iget-object v1, v0, Lme/a/a/a/a/f;->d:Lme/a/a/a/a/f$g;

    invoke-virtual {v0, v1}, Lme/a/a/a/a/f;->a(Lme/a/a/a/a/f$c;)V

    .line 186
    iget-object v0, p0, Lme/a/a/a/a/f$d;->b:Lme/a/a/a/a/f;

    iget-object v0, v0, Lme/a/a/a/a/f;->d:Lme/a/a/a/a/f$g;

    invoke-virtual {v0, p1}, Lme/a/a/a/a/f$g;->handleMoveTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final handleUpOrCancelTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
