.class public Lb/b/f/a/d;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/f/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/f/a/h;


# direct methods
.method public constructor <init>(Lb/b/f/a/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/f/a/d;->a:Lb/b/f/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/f/a/d;->a:Lb/b/f/a/h;

    invoke-virtual {v0}, Lb/b/f/a/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/f/a/d;->a:Lb/b/f/a/h;

    iget-object v0, v0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lb/b/f/a/d;->a:Lb/b/f/a/h;

    iget-object v0, v0, Lb/b/f/a/h;->j:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/a/h$a;

    iget-object v0, v0, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lb/b/f/a/d;->a:Lb/b/f/a/h;

    iget-object v0, v0, Lb/b/f/a/h;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lb/b/f/a/d;->a:Lb/b/f/a/h;

    iget-object v0, v0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/h$a;

    .line 6
    iget-object v1, v1, Lb/b/f/a/h$a;->a:Lb/b/g/P;

    invoke-virtual {v1}, Lb/b/g/N;->d()V

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lb/b/f/a/d;->a:Lb/b/f/a/h;

    invoke-virtual {v0}, Lb/b/f/a/h;->dismiss()V

    :cond_2
    return-void
.end method
