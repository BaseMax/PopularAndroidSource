.class public final Lc/c/a/b/e/b;
.super Ljava/lang/Object;
.source "NavigationManager.kt"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;


# static fields
.field public static final synthetic a:[Lh/i/i;


# instance fields
.field public final A:Lb/w/j$a;

.field public final B:Lcom/farsitel/bazaar/ui/home/MainActivity;

.field public final C:Lc/c/a/e/d/a/a;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:Lb/w/j;

.field public final l:Lh/c;

.field public final m:Lh/c;

.field public final n:Lh/c;

.field public final o:Lh/c;

.field public final p:Lh/c;

.field public final q:Lh/c;

.field public final r:Lh/c;

.field public final s:Lh/c;

.field public final t:Lh/c;

.field public final u:Lh/c;

.field public final v:Lh/c;

.field public final w:Lh/c;

.field public final x:Lh/c;

.field public final y:Lh/c;

.field public final z:Lh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "intentHandler"

    const-string v4, "getIntentHandler()Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "navHomeController"

    const-string v4, "getNavHomeController()Landroidx/navigation/NavController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "navAppController"

    const-string v4, "getNavAppController()Landroidx/navigation/NavController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "navGameController"

    const-string v4, "getNavGameController()Landroidx/navigation/NavController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "navVideosController"

    const-string v4, "getNavVideosController()Landroidx/navigation/NavController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "navCategoriesController"

    const-string v4, "getNavCategoriesController()Landroidx/navigation/NavController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "navSearchController"

    const-string v4, "getNavSearchController()Landroidx/navigation/NavController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "navMyBazaarController"

    const-string v4, "getNavMyBazaarController()Landroidx/navigation/NavController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "homeTabContainer"

    const-string v4, "getHomeTabContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "appTabContainer"

    const-string v4, "getAppTabContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "gameTabContainer"

    const-string v4, "getGameTabContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "videosTabContainer"

    const-string v4, "getVideosTabContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "categoriesTabContainer"

    const-string v4, "getCategoriesTabContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "searchTabContainer"

    const-string v4, "getSearchTabContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/b/e/b;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "myBazaarTabContainer"

    const-string v4, "getMyBazaarTabContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/b/e/b;->a:[Lh/i/i;

    return-void
.end method

.method public constructor <init>(Lcom/farsitel/bazaar/ui/home/MainActivity;Lc/c/a/e/d/a/a;Ljava/util/Locale;)V
    .locals 7

    const-string v0, "mainActivity"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    iput-object p2, p0, Lc/c/a/b/e/b;->C:Lc/c/a/e/d/a/a;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lc/c/a/b/e/b;->b:I

    const/4 p2, 0x2

    .line 3
    iput p2, p0, Lc/c/a/b/e/b;->c:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lc/c/a/b/e/b;->d:I

    const/4 v1, 0x4

    .line 5
    iput v1, p0, Lc/c/a/b/e/b;->e:I

    const/4 v2, 0x5

    .line 6
    iput v2, p0, Lc/c/a/b/e/b;->f:I

    const/4 v3, 0x6

    .line 7
    iput v3, p0, Lc/c/a/b/e/b;->g:I

    const/4 v4, 0x7

    .line 8
    iput v4, p0, Lc/c/a/b/e/b;->h:I

    .line 9
    iget-object v5, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    sget v6, Lc/c/a/e;->bottomNavigation:I

    invoke-virtual {v5, v6}, Lcom/farsitel/bazaar/ui/home/MainActivity;->d(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v5, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V

    .line 10
    iget-object v5, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    sget v6, Lc/c/a/e;->bottomNavigation:I

    invoke-virtual {v5, v6}, Lcom/farsitel/bazaar/ui/home/MainActivity;->d(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v5, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;)V

    .line 11
    invoke-virtual {p0}, Lc/c/a/b/e/b;->r()V

    .line 12
    new-array v4, v4, [Lkotlin/Pair;

    .line 13
    iget v5, p0, Lc/c/a/b/e/b;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0a01b1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 14
    iget v5, p0, Lc/c/a/b/e/b;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0a0091

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v4, p1

    .line 15
    iget p1, p0, Lc/c/a/b/e/b;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v5, 0x7f0a0199

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v5}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v4, p2

    .line 16
    iget p1, p0, Lc/c/a/b/e/b;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x7f0a03f3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v4, v0

    .line 17
    iget p1, p0, Lc/c/a/b/e/b;->f:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x7f0a00ec

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v4, v1

    .line 18
    iget p1, p0, Lc/c/a/b/e/b;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x7f0a0307

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v4, v2

    .line 19
    iget p1, p0, Lc/c/a/b/e/b;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x7f0a0231

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v4, v3

    .line 20
    invoke-static {v4}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->i:Ljava/util/Map;

    .line 21
    iget p1, p0, Lc/c/a/b/e/b;->b:I

    iput p1, p0, Lc/c/a/b/e/b;->j:I

    .line 22
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$intentHandler$2;

    invoke-direct {p1, p0, p3}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$intentHandler$2;-><init>(Lc/c/a/b/e/b;Ljava/util/Locale;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->l:Lh/c;

    .line 23
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navHomeController$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navHomeController$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->m:Lh/c;

    .line 24
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navAppController$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navAppController$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->n:Lh/c;

    .line 25
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navGameController$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navGameController$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->o:Lh/c;

    .line 26
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navVideosController$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navVideosController$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->p:Lh/c;

    .line 27
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navCategoriesController$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navCategoriesController$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->q:Lh/c;

    .line 28
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navSearchController$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navSearchController$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->r:Lh/c;

    .line 29
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navMyBazaarController$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$navMyBazaarController$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->s:Lh/c;

    .line 30
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$homeTabContainer$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$homeTabContainer$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->t:Lh/c;

    .line 31
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$appTabContainer$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$appTabContainer$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->u:Lh/c;

    .line 32
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$gameTabContainer$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$gameTabContainer$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->v:Lh/c;

    .line 33
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$videosTabContainer$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$videosTabContainer$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->w:Lh/c;

    .line 34
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$categoriesTabContainer$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$categoriesTabContainer$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->x:Lh/c;

    .line 35
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$searchTabContainer$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$searchTabContainer$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->y:Lh/c;

    .line 36
    new-instance p1, Lcom/farsitel/bazaar/app/navigation/NavigationManager$myBazaarTabContainer$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/app/navigation/NavigationManager$myBazaarTabContainer$2;-><init>(Lc/c/a/b/e/b;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->z:Lh/c;

    .line 37
    new-instance p1, Lc/c/a/b/e/a;

    invoke-direct {p1, p0}, Lc/c/a/b/e/a;-><init>(Lc/c/a/b/e/b;)V

    iput-object p1, p0, Lc/c/a/b/e/b;->A:Lb/w/j$a;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/e/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/b/e/b;->j:I

    return p0
.end method

.method public static synthetic a(Lc/c/a/b/e/b;IIIIIIIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x4

    if-eqz p9, :cond_0

    const/4 p1, 0x4

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const/4 p2, 0x4

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    const/4 p3, 0x4

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    const/4 p4, 0x4

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    const/4 p5, 0x4

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    const/4 p6, 0x4

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    const/4 p7, 0x4

    .line 14
    :cond_6
    invoke-virtual/range {p0 .. p7}, Lc/c/a/b/e/b;->a(IIIIIII)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/b/e/b;)Lb/w/j$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/e/b;->A:Lb/w/j$a;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/b/e/b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/e/b;->i:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a()Lb/w/j;
    .locals 1

    .line 25
    iget-object v0, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2

    .line 6
    iget v0, p0, Lc/c/a/b/e/b;->b:I

    if-ne p1, v0, :cond_0

    const-string p1, "home"

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lc/c/a/b/e/b;->c:I

    if-ne p1, v0, :cond_1

    const-string p1, "app"

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lc/c/a/b/e/b;->d:I

    if-ne p1, v0, :cond_2

    const-string p1, "game"

    goto :goto_0

    .line 9
    :cond_2
    iget v0, p0, Lc/c/a/b/e/b;->e:I

    if-ne p1, v0, :cond_3

    const-string p1, "video"

    goto :goto_0

    .line 10
    :cond_3
    iget v0, p0, Lc/c/a/b/e/b;->f:I

    if-ne p1, v0, :cond_4

    const-string p1, "category"

    goto :goto_0

    .line 11
    :cond_4
    iget v0, p0, Lc/c/a/b/e/b;->g:I

    if-ne p1, v0, :cond_5

    const-string p1, "search"

    goto :goto_0

    .line 12
    :cond_5
    iget v0, p0, Lc/c/a/b/e/b;->h:I

    if-ne p1, v0, :cond_6

    const-string p1, "my_bazaar"

    goto :goto_0

    .line 13
    :cond_6
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Invalid tab Id"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(IIIIIII)V
    .locals 1

    .line 15
    invoke-virtual {p0}, Lc/c/a/b/e/b;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p0}, Lc/c/a/b/e/b;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p0}, Lc/c/a/b/e/b;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lc/c/a/b/e/b;->q()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lc/c/a/b/e/b;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {p0}, Lc/c/a/b/e/b;->p()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-virtual {p0}, Lc/c/a/b/e/b;->h()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/view/View;->setVisibility(I)V

    if-eqz p6, :cond_1

    .line 22
    iget-object p1, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->D()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lc/c/a/d/b/a;->a(Landroid/app/Activity;Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method public final a(IILjava/lang/CharSequence;I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    sget v1, Lc/c/a/e;->bottomNavigation:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v1, "mainActivity.bottomNavigation"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 5
    invoke-interface {p1, p4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lc/c/a/b/e/b;->f()Lc/c/a/b/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-interface {v0, p1, v1}, Lc/c/a/b/e/a/a;->a(Landroid/content/Intent;Lb/b/a/m;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    .line 3
    sget v0, Lc/c/a/e;->bottomNavigation:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v0, "bottomNavigation"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lc/c/a/b/e/b;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lc/c/a/b/e/b;->b(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->u:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final b(I)V
    .locals 12

    .line 2
    iget v0, p0, Lc/c/a/b/e/b;->j:I

    invoke-virtual {p0, v0}, Lc/c/a/b/e/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/b/e/b;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iput p1, p0, Lc/c/a/b/e/b;->j:I

    .line 5
    iget-object v2, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    sget v3, Lc/c/a/e;->bottomNavigation:I

    invoke-virtual {v2, v3}, Lcom/farsitel/bazaar/ui/home/MainActivity;->d(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v3, "mainActivity.bottomNavigation"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 6
    :cond_0
    iget v2, p0, Lc/c/a/b/e/b;->b:I

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lc/c/a/b/e/b;->l()Lb/w/j;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7e

    const/4 v11, 0x0

    move-object v2, p0

    .line 8
    invoke-static/range {v2 .. v11}, Lc/c/a/b/e/b;->a(Lc/c/a/b/e/b;IIIIIIIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 9
    :cond_1
    iget v2, p0, Lc/c/a/b/e/b;->c:I

    if-ne p1, v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lc/c/a/b/e/b;->i()Lb/w/j;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7d

    const/4 v11, 0x0

    move-object v2, p0

    .line 11
    invoke-static/range {v2 .. v11}, Lc/c/a/b/e/b;->a(Lc/c/a/b/e/b;IIIIIIIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 12
    :cond_2
    iget v2, p0, Lc/c/a/b/e/b;->d:I

    if-ne p1, v2, :cond_3

    .line 13
    invoke-virtual {p0}, Lc/c/a/b/e/b;->k()Lb/w/j;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7b

    const/4 v11, 0x0

    move-object v2, p0

    .line 14
    invoke-static/range {v2 .. v11}, Lc/c/a/b/e/b;->a(Lc/c/a/b/e/b;IIIIIIIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 15
    :cond_3
    iget v2, p0, Lc/c/a/b/e/b;->e:I

    if-ne p1, v2, :cond_4

    .line 16
    invoke-virtual {p0}, Lc/c/a/b/e/b;->o()Lb/w/j;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x77

    const/4 v11, 0x0

    move-object v2, p0

    .line 17
    invoke-static/range {v2 .. v11}, Lc/c/a/b/e/b;->a(Lc/c/a/b/e/b;IIIIIIIILjava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_4
    iget v2, p0, Lc/c/a/b/e/b;->f:I

    if-ne p1, v2, :cond_5

    .line 19
    invoke-virtual {p0}, Lc/c/a/b/e/b;->j()Lb/w/j;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x6f

    const/4 v11, 0x0

    move-object v2, p0

    .line 20
    invoke-static/range {v2 .. v11}, Lc/c/a/b/e/b;->a(Lc/c/a/b/e/b;IIIIIIIILjava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_5
    iget v2, p0, Lc/c/a/b/e/b;->g:I

    if-ne p1, v2, :cond_6

    .line 22
    invoke-virtual {p0}, Lc/c/a/b/e/b;->n()Lb/w/j;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x5f

    const/4 v11, 0x0

    move-object v2, p0

    .line 23
    invoke-static/range {v2 .. v11}, Lc/c/a/b/e/b;->a(Lc/c/a/b/e/b;IIIIIIIILjava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_6
    iget v2, p0, Lc/c/a/b/e/b;->h:I

    if-ne p1, v2, :cond_7

    .line 25
    invoke-virtual {p0}, Lc/c/a/b/e/b;->m()Lb/w/j;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    move-object v2, p0

    .line 26
    invoke-static/range {v2 .. v11}, Lc/c/a/b/e/b;->a(Lc/c/a/b/e/b;IIIIIIIILjava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_7
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Invalid tab Id"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 28
    sget-object p1, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    new-instance v2, Lc/c/a/a/a/a;

    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/TabChangeEvent;

    invoke-direct {v3, v0, v1}, Lcom/farsitel/bazaar/analytics/model/what/TabChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/WholeApplication;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/WholeApplication;-><init>()V

    const-string v1, "user"

    invoke-direct {v2, v1, v3, v0}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    invoke-virtual {p1, v2}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    :cond_8
    return-void
.end method

.method public b(Landroid/view/MenuItem;)V
    .locals 6

    const-string v0, "parent.childFragmentManager"

    const-string v1, "item"

    invoke-static {p1, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    .line 30
    iget-object v2, p0, Lc/c/a/b/e/b;->i:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 32
    invoke-virtual {v1, p1, v3}, Lb/w/j;->a(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    .line 34
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 35
    :try_start_0
    iget-object p1, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {p1}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object p1

    const-string v1, "mainActivity.supportFragmentManager"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/o/a/n;->c()Ljava/util/List;

    move-result-object p1

    const-string v1, "mainActivity.supportFragmentManager.fragments"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "parent"

    .line 37
    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->ma()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->Z()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->ka()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v2

    iget-object v5, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    invoke-static {v2, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    .line 38
    instance-of v2, v1, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v2

    invoke-static {v2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/o/a/n;->c()Ljava/util/List;

    move-result-object v2

    const-string v5, "parent.childFragmentManager.fragments"

    invoke-static {v2, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 39
    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lb/o/a/n;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 40
    instance-of v2, v1, Lc/c/a/n/c/d/f;

    if-eqz v2, :cond_2

    .line 41
    check-cast v1, Lc/c/a/n/c/d/f;

    invoke-virtual {v1}, Lc/c/a/n/c/d/f;->lb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 42
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public final c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->x:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->v:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final e()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->t:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final f()Lc/c/a/b/e/a/a;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->l:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/b/e/a/a;

    return-object v0
.end method

.method public final g()Lcom/farsitel/bazaar/ui/home/MainActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->z:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final i()Lb/w/j;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->n:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/j;

    return-object v0
.end method

.method public final j()Lb/w/j;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->q:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/j;

    return-object v0
.end method

.method public final k()Lb/w/j;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->o:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/j;

    return-object v0
.end method

.method public final l()Lb/w/j;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->m:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/j;

    return-object v0
.end method

.method public final m()Lb/w/j;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->s:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/j;

    return-object v0
.end method

.method public final n()Lb/w/j;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->r:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/j;

    return-object v0
.end method

.method public final o()Lb/w/j;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->p:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/j;

    return-object v0
.end method

.method public final p()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->y:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final q()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lc/c/a/b/e/b;->w:Lh/c;

    sget-object v1, Lc/c/a/b/e/b;->a:[Lh/i/i;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final r()V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "mainActivity.getString(R.string.tab_title_search)"

    const-string v2, "mainActivity.getString(R\u2026ing.tab_title_categories)"

    const-string v3, "mainActivity.getString(R.string.tab_title_video)"

    const-string v4, "mainActivity.getString(R.string.tab_title_home)"

    const/4 v6, 0x3

    const v8, 0x7f1001ea

    const/4 v9, 0x2

    const v10, 0x7f080145

    const v11, 0x7f1001f0

    const/4 v12, 0x1

    const v13, 0x7f080141

    const v14, 0x7f1001ec

    const/4 v15, 0x0

    .line 1
    :try_start_0
    iget-object v5, v0, Lc/c/a/b/e/b;->C:Lc/c/a/e/d/a/a;

    invoke-virtual {v5}, Lc/c/a/e/d/a/a;->s()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2
    iget v5, v0, Lc/c/a/b/e/b;->b:I

    .line 3
    iget-object v7, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v7, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v5, v15, v7, v13}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 5
    :cond_0
    iget-object v5, v0, Lc/c/a/b/e/b;->C:Lc/c/a/e/d/a/a;

    invoke-virtual {v5}, Lc/c/a/e/d/a/a;->n()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    iget v5, v0, Lc/c/a/b/e/b;->c:I

    .line 7
    iget-object v7, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const v13, 0x7f1001e9

    invoke-virtual {v7, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v13, "mainActivity.getString(R.string.tab_title_app)"

    invoke-static {v7, v13}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v13, 0x7f08012f

    .line 8
    invoke-virtual {v0, v5, v12, v7, v13}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 9
    :cond_1
    iget-object v5, v0, Lc/c/a/b/e/b;->C:Lc/c/a/e/d/a/a;

    invoke-virtual {v5}, Lc/c/a/e/d/a/a;->r()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    iget v5, v0, Lc/c/a/b/e/b;->d:I

    .line 11
    iget-object v7, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const v13, 0x7f1001eb

    invoke-virtual {v7, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v13, "mainActivity.getString(R.string.tab_title_games)"

    invoke-static {v7, v13}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v13, 0x7f08013e

    .line 12
    invoke-virtual {v0, v5, v9, v7, v13}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 13
    :cond_2
    iget-object v5, v0, Lc/c/a/b/e/b;->C:Lc/c/a/e/d/a/a;

    invoke-virtual {v5}, Lc/c/a/e/d/a/a;->y()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    iget v5, v0, Lc/c/a/b/e/b;->e:I

    iget-object v7, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v7, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v5, v6, v7, v10}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 16
    :cond_3
    iget-object v5, v0, Lc/c/a/b/e/b;->C:Lc/c/a/e/d/a/a;

    invoke-virtual {v5}, Lc/c/a/e/d/a/a;->o()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    iget v5, v0, Lc/c/a/b/e/b;->f:I

    const/4 v7, 0x4

    .line 18
    iget-object v13, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v13, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f0800ea

    .line 19
    invoke-virtual {v0, v5, v7, v13, v6}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 20
    :cond_4
    iget-object v5, v0, Lc/c/a/b/e/b;->C:Lc/c/a/e/d/a/a;

    invoke-virtual {v5}, Lc/c/a/e/d/a/a;->w()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    iget v5, v0, Lc/c/a/b/e/b;->g:I

    const/4 v6, 0x5

    .line 22
    iget-object v7, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const v13, 0x7f1001ef

    invoke-virtual {v7, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v13, 0x7f080148

    .line 23
    invoke-virtual {v0, v5, v6, v7, v13}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 24
    :cond_5
    iget-object v5, v0, Lc/c/a/b/e/b;->C:Lc/c/a/e/d/a/a;

    invoke-virtual {v5}, Lc/c/a/e/d/a/a;->v()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 25
    iget v5, v0, Lc/c/a/b/e/b;->h:I

    const/4 v6, 0x6

    .line 26
    iget-object v7, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const v13, 0x7f1001ed

    invoke-virtual {v7, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v13, "mainActivity.getString(R\u2026ring.tab_title_my_bazaar)"

    invoke-static {v7, v13}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v13, 0x7f080111

    .line 27
    invoke-virtual {v0, v5, v6, v7, v13}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    iget-object v5, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    sget v6, Lc/c/a/e;->bottomNavigation:I

    invoke-virtual {v5, v6}, Lcom/farsitel/bazaar/ui/home/MainActivity;->d(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const-string v6, "mainActivity.bottomNavigation"

    invoke-static {v5, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/Menu;->clear()V

    .line 29
    iget v5, v0, Lc/c/a/b/e/b;->b:I

    .line 30
    iget-object v6, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v6, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f080141

    .line 31
    invoke-virtual {v0, v5, v15, v6, v4}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 32
    iget v4, v0, Lc/c/a/b/e/b;->e:I

    .line 33
    iget-object v5, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v5, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v4, v12, v5, v10}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 35
    iget v3, v0, Lc/c/a/b/e/b;->f:I

    .line 36
    iget-object v4, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0800ea

    .line 37
    invoke-virtual {v0, v3, v9, v4, v2}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 38
    iget v2, v0, Lc/c/a/b/e/b;->g:I

    .line 39
    iget-object v3, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const v4, 0x7f1001ef

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080148

    const/4 v4, 0x3

    .line 40
    invoke-virtual {v0, v2, v4, v3, v1}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    .line 41
    iget v1, v0, Lc/c/a/b/e/b;->h:I

    const/4 v2, 0x4

    .line 42
    iget-object v3, v0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    const v4, 0x7f1001ed

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mainActivity.getString(R\u2026ring.tab_title_my_bazaar)"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f080111

    .line 43
    invoke-virtual {v0, v1, v2, v3, v4}, Lc/c/a/b/e/b;->a(IILjava/lang/CharSequence;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/b/e/b;->b:I

    invoke-virtual {p0, v0}, Lc/c/a/b/e/b;->b(I)V

    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lb/w/j;->c()Lb/w/o;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lb/w/o;->d()I

    move-result v1

    iget-object v2, p0, Lc/c/a/b/e/b;->i:Ljava/util/Map;

    iget v3, p0, Lc/c/a/b/e/b;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lh/a/A;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v0, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    invoke-virtual {p0}, Lc/c/a/b/e/b;->l()Lb/w/j;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lc/c/a/b/e/b;->b:I

    invoke-virtual {p0, v0}, Lc/c/a/b/e/b;->b(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lb/w/j;->h()Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lc/c/a/b/e/b;->B:Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/e/b;->k:Lb/w/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/w/j;->h()Z

    :cond_0
    return-void
.end method
