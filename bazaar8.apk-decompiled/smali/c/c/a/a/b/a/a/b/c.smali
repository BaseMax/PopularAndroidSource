.class public Lc/c/a/a/b/a/a/b/c;
.super Lb/z/d;
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
        "Lb/z/d<",
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
    iput-object p1, p0, Lc/c/a/a/b/a/a/b/c;->d:Lc/c/a/a/b/a/a/b/e;

    invoke-direct {p0, p2}, Lb/z/d;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lc/c/a/a/b/a/a/b/i;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Lc/c/a/a/b/a/a/b/i;->a()J

    move-result-wide v0

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Lb/C/a/d;->a(IJ)V

    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lc/c/a/a/b/a/a/b/i;

    invoke-virtual {p0, p1, p2}, Lc/c/a/a/b/a/a/b/c;->a(Lb/C/a/f;Lc/c/a/a/b/a/a/b/i;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `actionLog` WHERE `id` = ?"

    return-object v0
.end method
