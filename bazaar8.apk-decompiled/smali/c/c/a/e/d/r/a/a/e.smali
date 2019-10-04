.class public Lc/c/a/e/d/r/a/a/e;
.super Lb/z/C;
.source "CommentActionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/r/a/a/g;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/r/a/a/g;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/a/a/g;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/r/a/a/e;->d:Lc/c/a/e/d/r/a/a/g;

    invoke-direct {p0, p2}, Lb/z/C;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM commentAction WHERE reviewId = ? and (commentActionName = \'UP_VOTE\' or commentActionName= \'DOWN_VOTE\')"

    return-object v0
.end method
