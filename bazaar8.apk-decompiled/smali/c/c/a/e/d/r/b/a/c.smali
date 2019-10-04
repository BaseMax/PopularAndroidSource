.class public Lc/c/a/e/d/r/b/a/c;
.super Lb/z/d;
.source "CommentDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/r/b/a/h;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/d<",
        "Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/r/b/a/h;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/b/a/h;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/r/b/a/c;->d:Lc/c/a/e/d/r/b/a/h;

    invoke-direct {p0, p2}, Lb/z/d;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/r/b/a/c;->a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `comment` WHERE `id` = ?"

    return-object v0
.end method
