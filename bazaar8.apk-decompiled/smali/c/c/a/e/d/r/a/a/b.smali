.class public Lc/c/a/e/d/r/a/a/b;
.super Lb/z/e;
.source "CommentActionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/r/a/a/g;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lc/c/a/e/d/r/a/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/r/a/a/g;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/a/a/g;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/r/a/a/b;->d:Lc/c/a/e/d/r/a/a/g;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lc/c/a/e/d/r/a/a/l;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lc/c/a/e/d/r/a/a/l;->d()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lc/c/a/e/d/r/a/a/l;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    :goto_0
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p2}, Lc/c/a/e/d/r/a/a/l;->e()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 6
    invoke-virtual {p2}, Lc/c/a/e/d/r/a/a/l;->f()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 7
    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p2}, Lc/c/a/e/d/r/a/a/l;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 9
    invoke-virtual {p2}, Lc/c/a/e/d/r/a/a/l;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 10
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2}, Lc/c/a/e/d/r/a/a/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {p2}, Lc/c/a/e/d/r/a/a/l;->b()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object p2

    invoke-static {p2}, Lc/c/a/e/f/e;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x6

    if-nez p2, :cond_2

    .line 13
    invoke-interface {p1, v0}, Lb/C/a/d;->a(I)V

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    :goto_2
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lc/c/a/e/d/r/a/a/l;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/r/a/a/b;->a(Lb/C/a/f;Lc/c/a/e/d/r/a/a/l;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `commentAction`(`id`,`reviewId`,`isReply`,`entityType`,`commentActionName`,`entityDatabaseStatus`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method
