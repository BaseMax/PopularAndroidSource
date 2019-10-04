.class public Lc/c/a/e/d/m/a/k;
.super Ljava/lang/Object;
.source "PurchaseDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/m/a/o;->a(Lh/c/b;)Ljava/lang/Object;
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
.field public final synthetic a:Lc/c/a/e/d/m/a/o;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/a/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/m/a/k;->a:Lc/c/a/e/d/m/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lh/h;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/m/a/k;->a:Lc/c/a/e/d/m/a/o;

    invoke-static {v0}, Lc/c/a/e/d/m/a/o;->c(Lc/c/a/e/d/m/a/o;)Lb/z/C;

    move-result-object v0

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/c/a/e/d/m/a/k;->a:Lc/c/a/e/d/m/a/o;

    invoke-static {v1}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 5
    iget-object v1, p0, Lc/c/a/e/d/m/a/k;->a:Lc/c/a/e/d/m/a/o;

    invoke-static {v1}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V

    .line 6
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v2, p0, Lc/c/a/e/d/m/a/k;->a:Lc/c/a/e/d/m/a/o;

    invoke-static {v2}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 8
    iget-object v2, p0, Lc/c/a/e/d/m/a/k;->a:Lc/c/a/e/d/m/a/o;

    invoke-static {v2}, Lc/c/a/e/d/m/a/o;->c(Lc/c/a/e/d/m/a/o;)Lb/z/C;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lc/c/a/e/d/m/a/k;->a:Lc/c/a/e/d/m/a/o;

    invoke-static {v2}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 10
    iget-object v2, p0, Lc/c/a/e/d/m/a/k;->a:Lc/c/a/e/d/m/a/o;

    invoke-static {v2}, Lc/c/a/e/d/m/a/o;->c(Lc/c/a/e/d/m/a/o;)Lb/z/C;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 11
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/m/a/k;->call()Lh/h;

    move-result-object v0

    return-object v0
.end method
