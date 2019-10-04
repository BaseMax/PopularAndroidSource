.class public final Lc/c/a/n/m/e;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lc/c/a/d/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/home/MainActivity;->C()Lc/c/a/n/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/home/MainActivity;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/home/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/m/e;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const v0, 0xb6a3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lc/c/a/n/m/e;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Lcom/farsitel/bazaar/ui/home/MainActivity;Lc/c/a/d/a/d;)V

    .line 2
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Location Permission Declined by user in MainActivity with don\'t ask again"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    const v0, 0xb6a3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lc/c/a/n/m/e;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->E()Lc/c/a/n/x/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc/c/a/n/x/a;->e(Z)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/m/e;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Lcom/farsitel/bazaar/ui/home/MainActivity;Lc/c/a/d/a/d;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    const v0, 0xb6a3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lc/c/a/n/m/e;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->E()Lc/c/a/n/x/a;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/x/a;->q()V

    .line 2
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Location Permission Declined by user in MainActivity"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lc/c/a/n/m/e;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Lcom/farsitel/bazaar/ui/home/MainActivity;Lc/c/a/d/a/d;)V

    :cond_0
    return-void
.end method
