.class public Lb/b/g/N$c;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lb/b/g/N;


# direct methods
.method public constructor <init>(Lb/b/g/N;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/g/N$c;->a:Lb/b/g/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/b/g/N$c;->a:Lb/b/g/N;

    .line 2
    invoke-virtual {p1}, Lb/b/g/N;->l()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/g/N$c;->a:Lb/b/g/N;

    iget-object p1, p1, Lb/b/g/N;->J:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lb/b/g/N$c;->a:Lb/b/g/N;

    iget-object p2, p1, Lb/b/g/N;->F:Landroid/os/Handler;

    iget-object p1, p1, Lb/b/g/N;->A:Lb/b/g/N$e;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lb/b/g/N$c;->a:Lb/b/g/N;

    iget-object p1, p1, Lb/b/g/N;->A:Lb/b/g/N$e;

    invoke-virtual {p1}, Lb/b/g/N$e;->run()V

    :cond_0
    return-void
.end method
