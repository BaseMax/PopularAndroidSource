.class public final Lc/c/a/n/w/j;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/search/SearchFragment;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/search/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/w/j;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/c/a/n/w/j;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Lc/c/a/n/w/c;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/w/c;->f()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lc/c/a/n/w/j;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    sget-object p2, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->PREDICTION_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-static {p1, p2}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
