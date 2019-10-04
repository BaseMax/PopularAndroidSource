.class public Lc/c/a/e/d/d/a/c;
.super Lb/z/e;
.source "BookmarkDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/d/a/i;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lc/c/a/e/d/d/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/d/a/i;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/d/a/i;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/d/a/c;->d:Lc/c/a/e/d/d/a/i;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lc/c/a/e/d/d/a/j;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 12
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 13
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 15
    :goto_3
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->a()Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/e/f/b;->a(Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 16
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_4

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 18
    :goto_4
    invoke-virtual {p2}, Lc/c/a/e/d/d/a/j;->b()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-result-object p2

    invoke-static {p2}, Lc/c/a/e/f/e;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x7

    if-nez p2, :cond_5

    .line 19
    invoke-interface {p1, v0}, Lb/C/a/d;->a(I)V

    goto :goto_5

    .line 20
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    :goto_5
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lc/c/a/e/d/d/a/j;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/d/a/c;->a(Lb/C/a/f;Lc/c/a/e/d/d/a/j;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `bookmark`(`entityId`,`iconUrl`,`entityName`,`price`,`priceString`,`bookmarkStatus`,`entityDatabaseStatus`) VALUES (?,?,?,?,?,?,?)"

    return-object v0
.end method
