.class public final Lb/H/a/g;
.super Landroidx/room/RoomDatabase$b;
.source "WorkDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->q()Landroidx/room/RoomDatabase$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lb/C/a/b;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/room/RoomDatabase$b;->b(Lb/C/a/b;)V

    .line 2
    invoke-interface {p1}, Lb/C/a/b;->n()V

    :try_start_0
    const-string v0, "UPDATE workspec SET state=0, schedule_requested_at=-1 WHERE state=1"

    .line 3
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lb/C/a/b;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p1}, Lb/C/a/b;->q()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lb/C/a/b;->q()V

    throw v0
.end method
