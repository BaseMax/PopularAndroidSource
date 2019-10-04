.class public final Lc/c/a/n/m/g;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/home/MainActivity;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/m/g;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    iput-object p2, p0, Lc/c/a/n/m/g;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/m/g;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/m/g;->b:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/c/a/n/m/g;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Lcom/farsitel/bazaar/ui/home/MainActivity;)Lc/c/a/b/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/b/e/b;->s()V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/c/a/n/m/g;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->c(Lcom/farsitel/bazaar/ui/home/MainActivity;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/m/g;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->b(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/content/Intent;)V

    .line 6
    iget-object v0, p0, Lc/c/a/n/m/g;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
