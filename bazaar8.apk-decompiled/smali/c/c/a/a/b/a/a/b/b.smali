.class public Lc/c/a/a/b/a/a/b/b;
.super Lb/z/e;
.source "ActionLogDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/b/a/a/b/e;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lc/c/a/a/b/a/a/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/a/b/a/a/b/e;


# direct methods
.method public constructor <init>(Lc/c/a/a/b/a/a/b/e;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/a/b/a/a/b/b;->d:Lc/c/a/a/b/a/a/b/e;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lc/c/a/a/b/a/a/b/i;)V
    .locals 3

    .line 2
    invoke-virtual {p2}, Lc/c/a/a/b/a/a/b/i;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lb/C/a/d;->a(IJ)V

    .line 3
    invoke-virtual {p2}, Lc/c/a/a/b/a/a/b/i;->c()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lb/C/a/d;->a(IJ)V

    .line 4
    invoke-virtual {p2}, Lc/c/a/a/b/a/a/b/i;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lc/c/a/a/b/a/a/b/i;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lc/c/a/a/b/a/a/b/i;

    invoke-virtual {p0, p1, p2}, Lc/c/a/a/b/a/a/b/b;->a(Lb/C/a/f;Lc/c/a/a/b/a/a/b/i;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `actionLog`(`id`,`when`,`json`) VALUES (nullif(?, 0),?,?)"

    return-object v0
.end method
