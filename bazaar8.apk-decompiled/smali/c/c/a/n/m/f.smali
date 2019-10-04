.class public final Lc/c/a/n/m/f;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lc/c/a/d/f/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/home/MainActivity;->d(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/d/f/r<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/home/MainActivity;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/home/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/m/f;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-static {p0}, Lc/c/a/d/f/r$a;->b(Lc/c/a/d/f/r;)V

    return-void
.end method

.method public a(Lh/h;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/m/f;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->b(Lcom/farsitel/bazaar/ui/home/MainActivity;)Lc/c/a/d/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/farsitel/bazaar/core/app/Permission;->ACCESS_COARSE_LOCATION:Lcom/farsitel/bazaar/core/app/Permission;

    invoke-static {v1}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lc/c/a/n/m/f;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const v3, 0xb6a3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lc/c/a/d/a/d;->a(Ljava/util/List;Landroid/app/Activity;I)V

    .line 7
    :cond_0
    invoke-static {p0, p1}, Lc/c/a/d/f/r$a;->a(Lc/c/a/d/f/r;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lh/h;

    invoke-virtual {p0, p1}, Lc/c/a/n/m/f;->a(Lh/h;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lc/c/a/d/f/r$a;->a(Lc/c/a/d/f/r;)V

    return-void
.end method
