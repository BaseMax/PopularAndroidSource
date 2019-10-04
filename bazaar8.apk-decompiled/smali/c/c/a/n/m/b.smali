.class public final Lc/c/a/n/m/b;
.super Ljava/lang/Object;
.source "HomeFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/home/HomeFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/home/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/home/HomeFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/m/b;->a:Lcom/farsitel/bazaar/ui/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lc/c/a/n/m/b;->a:Lcom/farsitel/bazaar/ui/home/HomeFragment;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    .line 2
    sget-object v0, Lc/c/a/n/l/g;->a:Lc/c/a/n/l/g$a;

    .line 3
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "top-charts"

    const/4 v3, 0x0

    const-string v4, ""

    .line 4
    invoke-virtual {v0, v2, v3, v4, v1}, Lc/c/a/n/l/g$a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method
