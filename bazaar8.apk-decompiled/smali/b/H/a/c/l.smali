.class public Lb/H/a/c/l;
.super Lb/z/e;
.source "WorkNameDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/H/a/c/m;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lb/H/a/c/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lb/H/a/c/m;


# direct methods
.method public constructor <init>(Lb/H/a/c/m;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/c/l;->d:Lb/H/a/c/m;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lb/H/a/c/j;)V
    .locals 2

    .line 2
    iget-object v0, p2, Lb/H/a/c/j;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p2, p2, Lb/H/a/c/j;->b:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 6
    invoke-interface {p1, v0}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v0, p2}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lb/H/a/c/j;

    invoke-virtual {p0, p1, p2}, Lb/H/a/c/l;->a(Lb/C/a/f;Lb/H/a/c/j;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkName`(`name`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method
