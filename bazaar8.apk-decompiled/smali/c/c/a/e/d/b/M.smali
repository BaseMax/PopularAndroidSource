.class public Lc/c/a/e/d/b/M;
.super Lb/z/e;
.source "UpgradableAppDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/b/V;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/b/V;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/V;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/b/M;->d:Lc/c/a/e/d/b/V;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->getVersionCode()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 6
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isFree()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 7
    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 8
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified()Z

    move-result v0

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 9
    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 10
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled()Z

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 11
    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->getLastUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/b/M;->a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `upgradable_app`(`packageName`,`versionCode`,`packageWolf`,`isNotified`,`isUpdateEnabled`,`lastUpdateTime`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method
