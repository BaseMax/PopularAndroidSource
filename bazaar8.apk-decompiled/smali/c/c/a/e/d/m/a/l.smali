.class public Lc/c/a/e/d/m/a/l;
.super Ljava/lang/Object;
.source "PurchaseDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/m/a/o;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc/c/a/e/d/m/a/o;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/a/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/m/a/l;->c:Lc/c/a/e/d/m/a/o;

    iput-object p2, p0, Lc/c/a/e/d/m/a/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/e/d/m/a/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lh/h;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/m/a/l;->c:Lc/c/a/e/d/m/a/o;

    invoke-static {v0}, Lc/c/a/e/d/m/a/o;->d(Lc/c/a/e/d/m/a/o;)Lb/z/C;

    move-result-object v0

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/c/a/e/d/m/a/l;->a:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0, v2}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v2, v1}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Lc/c/a/e/d/m/a/l;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 7
    invoke-interface {v0, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v0, v1, v2}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 9
    :goto_1
    iget-object v1, p0, Lc/c/a/e/d/m/a/l;->c:Lc/c/a/e/d/m/a/o;

    invoke-static {v1}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 10
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 11
    iget-object v1, p0, Lc/c/a/e/d/m/a/l;->c:Lc/c/a/e/d/m/a/o;

    invoke-static {v1}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V

    .line 12
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v2, p0, Lc/c/a/e/d/m/a/l;->c:Lc/c/a/e/d/m/a/o;

    invoke-static {v2}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 14
    iget-object v2, p0, Lc/c/a/e/d/m/a/l;->c:Lc/c/a/e/d/m/a/o;

    invoke-static {v2}, Lc/c/a/e/d/m/a/o;->d(Lc/c/a/e/d/m/a/o;)Lb/z/C;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 15
    iget-object v2, p0, Lc/c/a/e/d/m/a/l;->c:Lc/c/a/e/d/m/a/o;

    invoke-static {v2}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 16
    iget-object v2, p0, Lc/c/a/e/d/m/a/l;->c:Lc/c/a/e/d/m/a/o;

    invoke-static {v2}, Lc/c/a/e/d/m/a/o;->d(Lc/c/a/e/d/m/a/o;)Lb/z/C;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 17
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/m/a/l;->call()Lh/h;

    move-result-object v0

    return-object v0
.end method
