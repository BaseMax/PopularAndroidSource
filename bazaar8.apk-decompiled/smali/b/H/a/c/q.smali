.class public Lb/H/a/c/q;
.super Lb/z/e;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/H/a/c/z;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/e<",
        "Lb/H/a/c/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lb/H/a/c/z;


# direct methods
.method public constructor <init>(Lb/H/a/c/z;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/c/q;->d:Lb/H/a/c/z;

    invoke-direct {p0, p2}, Lb/z/e;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lb/H/a/c/o;)V
    .locals 10

    .line 2
    iget-object v0, p2, Lb/H/a/c/o;->c:Ljava/lang/String;

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
    iget-object v0, p2, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    invoke-static {v0}, Lb/H/a/c/F;->a(Landroidx/work/WorkInfo$State;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 6
    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 7
    iget-object v0, p2, Lb/H/a/c/o;->e:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 10
    :goto_1
    iget-object v0, p2, Lb/H/a/c/o;->f:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v0, p2, Lb/H/a/c/o;->g:Lb/H/d;

    invoke-static {v0}, Lb/H/d;->a(Lb/H/d;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(I[B)V

    .line 16
    :goto_3
    iget-object v0, p2, Lb/H/a/c/o;->h:Lb/H/d;

    invoke-static {v0}, Lb/H/d;->a(Lb/H/d;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 17
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_4

    .line 18
    :cond_4
    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(I[B)V

    :goto_4
    const/4 v0, 0x7

    .line 19
    iget-wide v1, p2, Lb/H/a/c/o;->i:J

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    const/16 v0, 0x8

    .line 20
    iget-wide v1, p2, Lb/H/a/c/o;->j:J

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    const/16 v0, 0x9

    .line 21
    iget-wide v1, p2, Lb/H/a/c/o;->k:J

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    const/16 v0, 0xa

    .line 22
    iget v1, p2, Lb/H/a/c/o;->m:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 23
    iget-object v0, p2, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    invoke-static {v0}, Lb/H/a/c/F;->a(Landroidx/work/BackoffPolicy;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 24
    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    const/16 v0, 0xc

    .line 25
    iget-wide v1, p2, Lb/H/a/c/o;->o:J

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    const/16 v0, 0xd

    .line 26
    iget-wide v1, p2, Lb/H/a/c/o;->p:J

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    const/16 v0, 0xe

    .line 27
    iget-wide v1, p2, Lb/H/a/c/o;->q:J

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    const/16 v0, 0xf

    .line 28
    iget-wide v1, p2, Lb/H/a/c/o;->r:J

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 29
    iget-object p2, p2, Lb/H/a/c/o;->l:Lb/H/b;

    const/16 v0, 0x16

    const/16 v1, 0x15

    const/16 v2, 0x14

    const/16 v3, 0x13

    const/16 v4, 0x12

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/16 v7, 0x17

    if-eqz p2, :cond_6

    .line 30
    invoke-virtual {p2}, Lb/H/b;->b()Landroidx/work/NetworkType;

    move-result-object v8

    invoke-static {v8}, Lb/H/a/c/F;->a(Landroidx/work/NetworkType;)I

    move-result v8

    int-to-long v8, v8

    .line 31
    invoke-interface {p1, v6, v8, v9}, Lb/C/a/d;->a(IJ)V

    .line 32
    invoke-virtual {p2}, Lb/H/b;->g()Z

    move-result v6

    int-to-long v8, v6

    .line 33
    invoke-interface {p1, v5, v8, v9}, Lb/C/a/d;->a(IJ)V

    .line 34
    invoke-virtual {p2}, Lb/H/b;->h()Z

    move-result v5

    int-to-long v5, v5

    .line 35
    invoke-interface {p1, v4, v5, v6}, Lb/C/a/d;->a(IJ)V

    .line 36
    invoke-virtual {p2}, Lb/H/b;->f()Z

    move-result v4

    int-to-long v4, v4

    .line 37
    invoke-interface {p1, v3, v4, v5}, Lb/C/a/d;->a(IJ)V

    .line 38
    invoke-virtual {p2}, Lb/H/b;->i()Z

    move-result v3

    int-to-long v3, v3

    .line 39
    invoke-interface {p1, v2, v3, v4}, Lb/C/a/d;->a(IJ)V

    .line 40
    invoke-virtual {p2}, Lb/H/b;->c()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 41
    invoke-virtual {p2}, Lb/H/b;->d()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 42
    invoke-virtual {p2}, Lb/H/b;->a()Lb/H/c;

    move-result-object p2

    invoke-static {p2}, Lb/H/a/c/F;->a(Lb/H/c;)[B

    move-result-object p2

    if-nez p2, :cond_5

    .line 43
    invoke-interface {p1, v7}, Lb/C/a/d;->a(I)V

    goto :goto_5

    .line 44
    :cond_5
    invoke-interface {p1, v7, p2}, Lb/C/a/d;->a(I[B)V

    goto :goto_5

    .line 45
    :cond_6
    invoke-interface {p1, v6}, Lb/C/a/d;->a(I)V

    .line 46
    invoke-interface {p1, v5}, Lb/C/a/d;->a(I)V

    .line 47
    invoke-interface {p1, v4}, Lb/C/a/d;->a(I)V

    .line 48
    invoke-interface {p1, v3}, Lb/C/a/d;->a(I)V

    .line 49
    invoke-interface {p1, v2}, Lb/C/a/d;->a(I)V

    .line 50
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    .line 51
    invoke-interface {p1, v0}, Lb/C/a/d;->a(I)V

    .line 52
    invoke-interface {p1, v7}, Lb/C/a/d;->a(I)V

    :goto_5
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lb/H/a/c/o;

    invoke-virtual {p0, p1, p2}, Lb/H/a/c/q;->a(Lb/C/a/f;Lb/H/a/c/o;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
