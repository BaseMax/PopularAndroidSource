.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/RoomDatabase;
.source "WorkDatabase.java"


# static fields
.field public static final l:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->l:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Landroidx/work/impl/WorkDatabase;
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    const-class p1, Landroidx/work/impl/WorkDatabase;

    invoke-static {p0, p1}, Lb/z/u;->a(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->a()Landroidx/room/RoomDatabase$a;

    goto :goto_0

    .line 3
    :cond_0
    const-class p1, Landroidx/work/impl/WorkDatabase;

    const-string v0, "androidx.work.workdb"

    invoke-static {p0, p1, v0}, Lb/z/u;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->q()Landroidx/room/RoomDatabase$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase$a;->a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;

    const/4 v0, 0x1

    new-array v1, v0, [Lb/z/a/a;

    sget-object v2, Lb/H/a/k;->a:Lb/z/a/a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase$a;->a([Lb/z/a/a;)Landroidx/room/RoomDatabase$a;

    new-array v1, v0, [Lb/z/a/a;

    new-instance v2, Lb/H/a/k$a;

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v2, p0, v4, v5}, Lb/H/a/k$a;-><init>(Landroid/content/Context;II)V

    aput-object v2, v1, v3

    .line 6
    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase$a;->a([Lb/z/a/a;)Landroidx/room/RoomDatabase$a;

    new-array p0, v0, [Lb/z/a/a;

    sget-object v1, Lb/H/a/k;->b:Lb/z/a/a;

    aput-object v1, p0, v3

    .line 7
    invoke-virtual {p1, p0}, Landroidx/room/RoomDatabase$a;->a([Lb/z/a/a;)Landroidx/room/RoomDatabase$a;

    new-array p0, v0, [Lb/z/a/a;

    sget-object v0, Lb/H/a/k;->c:Lb/z/a/a;

    aput-object v0, p0, v3

    .line 8
    invoke-virtual {p1, p0}, Landroidx/room/RoomDatabase$a;->a([Lb/z/a/a;)Landroidx/room/RoomDatabase$a;

    .line 9
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase$a;

    .line 10
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->b()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    return-object p0
.end method

.method public static q()Landroidx/room/RoomDatabase$b;
    .locals 1

    .line 1
    new-instance v0, Lb/H/a/g;

    invoke-direct {v0}, Lb/H/a/g;-><init>()V

    return-object v0
.end method

.method public static r()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/work/impl/WorkDatabase;->l:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/work/impl/WorkDatabase;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract p()Lb/H/a/c/b;
.end method

.method public abstract t()Lb/H/a/c/f;
.end method

.method public abstract u()Lb/H/a/c/k;
.end method

.method public abstract v()Lb/H/a/c/p;
.end method

.method public abstract w()Lb/H/a/c/B;
.end method
