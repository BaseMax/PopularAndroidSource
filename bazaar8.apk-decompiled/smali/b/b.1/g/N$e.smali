.class public Lb/b/g/N$e;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lb/b/g/N;


# direct methods
.method public constructor <init>(Lb/b/g/N;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/g/N$e;->a:Lb/b/g/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/b/g/N$e;->a:Lb/b/g/N;

    iget-object v0, v0, Lb/b/g/N;->f:Lb/b/g/I;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/i/k/z;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/g/N$e;->a:Lb/b/g/N;

    iget-object v0, v0, Lb/b/g/N;->f:Lb/b/g/I;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lb/b/g/N$e;->a:Lb/b/g/N;

    iget-object v1, v1, Lb/b/g/N;->f:Lb/b/g/I;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lb/b/g/N$e;->a:Lb/b/g/N;

    iget-object v0, v0, Lb/b/g/N;->f:Lb/b/g/I;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lb/b/g/N$e;->a:Lb/b/g/N;

    iget v2, v1, Lb/b/g/N;->s:I

    if-gt v0, v2, :cond_0

    .line 4
    iget-object v0, v1, Lb/b/g/N;->J:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 5
    iget-object v0, p0, Lb/b/g/N$e;->a:Lb/b/g/N;

    invoke-virtual {v0}, Lb/b/g/N;->d()V

    :cond_0
    return-void
.end method
