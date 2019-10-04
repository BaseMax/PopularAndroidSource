.class public Lc/c/a/e/d/m/a/j;
.super Ljava/lang/Object;
.source "PurchaseDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/m/a/o;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
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
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lc/c/a/e/d/m/a/o;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/a/o;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/m/a/j;->b:Lc/c/a/e/d/m/a/o;

    iput-object p2, p0, Lc/c/a/e/d/m/a/j;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lh/h;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/m/a/j;->b:Lc/c/a/e/d/m/a/o;

    invoke-static {v0}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/m/a/j;->b:Lc/c/a/e/d/m/a/o;

    invoke-static {v0}, Lc/c/a/e/d/m/a/o;->b(Lc/c/a/e/d/m/a/o;)Lb/z/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/e/d/m/a/j;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lb/z/e;->a(Ljava/lang/Iterable;)V

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/m/a/j;->b:Lc/c/a/e/d/m/a/o;

    invoke-static {v0}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V

    .line 5
    sget-object v0, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lc/c/a/e/d/m/a/j;->b:Lc/c/a/e/d/m/a/o;

    invoke-static {v1}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/c/a/e/d/m/a/j;->b:Lc/c/a/e/d/m/a/o;

    invoke-static {v1}, Lc/c/a/e/d/m/a/o;->a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 7
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/m/a/j;->call()Lh/h;

    move-result-object v0

    return-object v0
.end method
