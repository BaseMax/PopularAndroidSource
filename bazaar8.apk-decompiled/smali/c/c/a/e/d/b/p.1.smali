.class public Lc/c/a/e/d/b/p;
.super Lb/z/e;
.source "MaliciousAppDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/b/w;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/b/w;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/w;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/b/p;->d:Lc/c/a/e/d/b/w;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;)V
    .locals 3

    .line 2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->getVersionName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->getVersionCode()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 9
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->getReasonTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 10
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->getReasonTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 12
    :goto_2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->getReasonInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 13
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->getReasonInfo()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 15
    :goto_3
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->isNotified()Z

    move-result p2

    const/4 v0, 0x6

    int-to-long v1, p2

    .line 16
    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/b/p;->a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `malicious_app`(`packageName`,`versionName`,`versionCode`,`reasonTitle`,`reasonInfo`,`isNotified`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method
