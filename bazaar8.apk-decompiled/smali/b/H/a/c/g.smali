.class public Lb/H/a/c/g;
.super Lb/z/e;
.source "SystemIdInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/H/a/c/i;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lb/H/a/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lb/H/a/c/i;


# direct methods
.method public constructor <init>(Lb/H/a/c/i;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/c/g;->d:Lb/H/a/c/i;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lb/H/a/c/e;)V
    .locals 3

    .line 2
    iget-object v0, p2, Lb/H/a/c/e;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 5
    iget p2, p2, Lb/H/a/c/e;->b:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lb/H/a/c/e;

    invoke-virtual {p0, p1, p2}, Lb/H/a/c/g;->a(Lb/C/a/f;Lb/H/a/c/e;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo`(`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method
