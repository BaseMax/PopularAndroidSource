.class final Lcom/bumptech/glide/e/a/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/e/a/j;->clearOnDetach()Lcom/bumptech/glide/e/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/e/a/j;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e/a/j;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/bumptech/glide/e/a/j$1;->a:Lcom/bumptech/glide/e/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/bumptech/glide/e/a/j$1;->a:Lcom/bumptech/glide/e/a/j;

    .line 1132
    invoke-virtual {p1}, Lcom/bumptech/glide/e/a/j;->getRequest()Lcom/bumptech/glide/e/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1133
    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->isCleared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->begin()V

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/bumptech/glide/e/a/j$1;->a:Lcom/bumptech/glide/e/a/j;

    .line 1140
    invoke-virtual {p1}, Lcom/bumptech/glide/e/a/j;->getRequest()Lcom/bumptech/glide/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1144
    iput-boolean v1, p1, Lcom/bumptech/glide/e/a/j;->b:Z

    .line 1145
    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->clear()V

    const/4 v0, 0x0

    .line 1146
    iput-boolean v0, p1, Lcom/bumptech/glide/e/a/j;->b:Z

    :cond_0
    return-void
.end method
