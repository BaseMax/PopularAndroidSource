.class public Lc/c/a/e/d/b/f;
.super Lb/z/e;
.source "DownloadedAppDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/b/i;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/b/i;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/i;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/b/f;->d:Lc/c/a/e/d/b/i;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;->isFree()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 9
    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    const/4 v0, 0x4

    .line 10
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;->getCreatedAt()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/b/f;->a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `downloaded_app`(`packageName`,`name`,`packageWolf`,`createdAt`) VALUES (?,?,?,?)"

    return-object v0
.end method
