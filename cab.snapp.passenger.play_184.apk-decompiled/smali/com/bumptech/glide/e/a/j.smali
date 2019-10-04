.class public abstract Lcom/bumptech/glide/e/a/j;
.super Lcom/bumptech/glide/e/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/a/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e/a/a<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static c:Z

.field private static d:Ljava/lang/Integer;


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Z

.field private final e:Lcom/bumptech/glide/e/a/j$a;

.field private f:Landroid/view/View$OnAttachStateChangeListener;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/bumptech/glide/e/a/a;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/e/a/j;->a:Landroid/view/View;

    .line 66
    new-instance v0, Lcom/bumptech/glide/e/a/j$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/e/a/j$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/e/a/j;->e:Lcom/bumptech/glide/e/a/j$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/a/j;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a/j;->waitForLayout()Lcom/bumptech/glide/e/a/j;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j;->f:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/bumptech/glide/e/a/j;->g:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/e/a/j;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a/j;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTagId(I)V
    .locals 1

    .line 322
    sget-object v0, Lcom/bumptech/glide/e/a/j;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/bumptech/glide/e/a/j;->c:Z

    if-nez v0, :cond_0

    .line 326
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/e/a/j;->d:Ljava/lang/Integer;

    return-void

    .line 323
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot set the tag id more than once or change the tag id after the first request has been made"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clearOnDetach()Lcom/bumptech/glide/e/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e/a/j<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j;->f:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    return-object p0

    .line 115
    :cond_0
    new-instance v0, Lcom/bumptech/glide/e/a/j$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/e/a/j$1;-><init>(Lcom/bumptech/glide/e/a/j;)V

    iput-object v0, p0, Lcom/bumptech/glide/e/a/j;->f:Landroid/view/View$OnAttachStateChangeListener;

    .line 126
    invoke-direct {p0}, Lcom/bumptech/glide/e/a/j;->a()V

    return-object p0
.end method

.method public getRequest()Lcom/bumptech/glide/e/d;
    .locals 2

    .line 2294
    sget-object v0, Lcom/bumptech/glide/e/a/j;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2297
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/e/a/j;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 268
    instance-of v1, v0, Lcom/bumptech/glide/e/d;

    if-eqz v1, :cond_1

    .line 269
    move-object v1, v0

    check-cast v1, Lcom/bumptech/glide/e/d;

    goto :goto_1

    .line 271
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getSize(Lcom/bumptech/glide/e/a/h;)V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j;->e:Lcom/bumptech/glide/e/a/j$a;

    .line 1386
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a/j$a;->d()I

    move-result v1

    .line 1387
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a/j$a;->c()I

    move-result v2

    .line 1388
    invoke-static {v1, v2}, Lcom/bumptech/glide/e/a/j$a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1389
    invoke-interface {p1, v1, v2}, Lcom/bumptech/glide/e/a/h;->onSizeReady(II)V

    return-void

    .line 1395
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/e/a/j$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1396
    iget-object v1, v0, Lcom/bumptech/glide/e/a/j$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1398
    :cond_1
    iget-object p1, v0, Lcom/bumptech/glide/e/a/j$a;->e:Lcom/bumptech/glide/e/a/j$a$a;

    if-nez p1, :cond_2

    .line 1399
    iget-object p1, v0, Lcom/bumptech/glide/e/a/j$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1400
    new-instance v1, Lcom/bumptech/glide/e/a/j$a$a;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/e/a/j$a$a;-><init>(Lcom/bumptech/glide/e/a/j$a;)V

    iput-object v1, v0, Lcom/bumptech/glide/e/a/j$a;->e:Lcom/bumptech/glide/e/a/j$a$a;

    .line 1401
    iget-object v0, v0, Lcom/bumptech/glide/e/a/j$a;->e:Lcom/bumptech/glide/e/a/j$a$a;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j;->a:Landroid/view/View;

    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 233
    invoke-super {p0, p1}, Lcom/bumptech/glide/e/a/a;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object p1, p0, Lcom/bumptech/glide/e/a/j;->e:Lcom/bumptech/glide/e/a/j$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/e/a/j$a;->b()V

    .line 236
    iget-boolean p1, p0, Lcom/bumptech/glide/e/a/j;->b:Z

    if-nez p1, :cond_1

    .line 2193
    iget-object p1, p0, Lcom/bumptech/glide/e/a/j;->f:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a/j;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2197
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 p1, 0x0

    .line 2198
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a/j;->g:Z

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lcom/bumptech/glide/e/a/a;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-direct {p0}, Lcom/bumptech/glide/e/a/j;->a()V

    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/e/a/h;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j;->e:Lcom/bumptech/glide/e/a/j$a;

    .line 1412
    iget-object v0, v0, Lcom/bumptech/glide/e/a/j$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/e/d;)V
    .locals 2

    .line 2284
    sget-object v0, Lcom/bumptech/glide/e/a/j;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2285
    sput-boolean v0, Lcom/bumptech/glide/e/a/j;->c:Z

    .line 2286
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 2288
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/e/a/j;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/e/a/j;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final waitForLayout()Lcom/bumptech/glide/e/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e/a/j<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/e/a/j;->e:Lcom/bumptech/glide/e/a/j$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/e/a/j$a;->d:Z

    return-object p0
.end method
