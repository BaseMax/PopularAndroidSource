.class public Lc/c/a/e/d/n/a/b;
.super Lb/z/e;
.source "PlayedVideoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/n/a/e;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lc/c/a/e/d/n/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/n/a/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/n/a/e;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/n/a/b;->d:Lc/c/a/e/d/n/a/e;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lc/c/a/e/d/n/a/f;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->d()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 17
    :goto_4
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->g()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 18
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 20
    :goto_5
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->j()Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/e/f/h;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoType;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 21
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 23
    :goto_6
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->k()Z

    move-result v0

    const/16 v1, 0x8

    int-to-long v2, v0

    .line 24
    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    const/16 v0, 0x9

    .line 25
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->b()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 26
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->f()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 27
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_7

    .line 28
    :cond_7
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 29
    :goto_7
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->e()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_8

    .line 30
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_8

    .line 31
    :cond_8
    invoke-virtual {p2}, Lc/c/a/e/d/n/a/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_8
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lc/c/a/e/d/n/a/f;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/n/a/b;->a(Lb/C/a/f;Lc/c/a/e/d/n/a/f;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `played_video`(`entityId`,`title`,`cover`,`serialId`,`episodeIdx`,`seasonIdx`,`type`,`isLive`,`date`,`seasonEpisodeTitle`,`providerName`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
