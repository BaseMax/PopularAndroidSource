.class public final Lc/c/a/n/b/c/e;
.super Ljava/lang/Object;
.source "ReportFragment.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/b/c/e;->a:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;

    iput-object p2, p0, Lc/c/a/n/b/c/e;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "event"

    .line 1
    invoke-static {p2, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lc/c/a/n/b/c/e;->a:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lc/c/a/n/b/c/d;

    invoke-direct {p2, p0}, Lc/c/a/n/b/c/d;-><init>(Lc/c/a/n/b/c/e;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
