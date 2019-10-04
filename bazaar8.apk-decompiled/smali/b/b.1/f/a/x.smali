.class public Lb/b/f/a/x;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/f/a/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/f/a/z;


# direct methods
.method public constructor <init>(Lb/b/f/a/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/f/a/x;->a:Lb/b/f/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/x;->a:Lb/b/f/a/z;

    invoke-virtual {v0}, Lb/b/f/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/f/a/x;->a:Lb/b/f/a/z;

    iget-object v0, v0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lb/b/f/a/x;->a:Lb/b/f/a/z;

    iget-object v0, v0, Lb/b/f/a/z;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/b/f/a/x;->a:Lb/b/f/a/z;

    iget-object v0, v0, Lb/b/f/a/z;->j:Lb/b/g/P;

    invoke-virtual {v0}, Lb/b/g/N;->d()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/f/a/x;->a:Lb/b/f/a/z;

    invoke-virtual {v0}, Lb/b/f/a/z;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
