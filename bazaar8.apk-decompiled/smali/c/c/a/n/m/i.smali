.class public final Lc/c/a/n/m/i;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lc/c/a/d/f/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/home/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/d/f/r<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/home/MainActivity;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/m/i;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    iput-object p2, p0, Lc/c/a/n/m/i;->b:Landroid/os/Bundle;

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

.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lc/c/a/d/f/r$a;->a(Lc/c/a/d/f/r;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lc/c/a/n/m/i;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    iget-object v0, p0, Lc/c/a/n/m/i;->b:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/m/i;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 1
    invoke-static {p0}, Lc/c/a/d/f/r$a;->a(Lc/c/a/d/f/r;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/m/i;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    iget-object v1, p0, Lc/c/a/n/m/i;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method
