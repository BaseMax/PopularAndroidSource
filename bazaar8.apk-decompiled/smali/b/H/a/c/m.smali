.class public final Lb/H/a/c/m;
.super Ljava/lang/Object;
.source "WorkNameDao_Impl.java"

# interfaces
.implements Lb/H/a/c/k;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/c/m;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lb/H/a/c/l;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/l;-><init>(Lb/H/a/c/m;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/m;->b:Lb/z/e;

    return-void
.end method


# virtual methods
.method public a(Lb/H/a/c/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/c/m;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/H/a/c/m;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lb/H/a/c/m;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lb/H/a/c/m;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lb/H/a/c/m;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw p1
.end method
