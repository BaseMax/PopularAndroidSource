.class public final Lc/c/a/n/m/h;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/home/MainActivity;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/data/entity/UpgradableCount;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/home/MainActivity;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/home/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/m/h;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/UpgradableCount;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/n/m/h;->a:Lcom/farsitel/bazaar/ui/home/MainActivity;

    sget v1, Lc/c/a/e;->bottomNavigation:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v1, "bottomNavigation"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableCount;->getNeedToShowBadge()Z

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lc/c/a/i/a;->a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;IZ)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/UpgradableCount;

    invoke-virtual {p0, p1}, Lc/c/a/n/m/h;->a(Lcom/farsitel/bazaar/data/entity/UpgradableCount;)V

    return-void
.end method
