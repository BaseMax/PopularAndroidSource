.class public final Lb/H/a/d/a;
.super Lb/H/a/d/c;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/H/a/d/c;->a(Ljava/lang/String;Lb/H/a/m;)Lb/H/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/H/a/m;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/H/a/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/d/a;->b:Lb/H/a/m;

    iput-object p2, p0, Lb/H/a/d/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lb/H/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/H/a/d/a;->b:Lb/H/a/m;

    invoke-virtual {v0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lb/H/a/d/a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lb/H/a/c/p;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lb/H/a/d/a;->b:Lb/H/a/m;

    invoke-virtual {p0, v3, v2}, Lb/H/a/d/c;->a(Lb/H/a/m;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 9
    iget-object v0, p0, Lb/H/a/d/a;->b:Lb/H/a/m;

    invoke-virtual {p0, v0}, Lb/H/a/d/c;->a(Lb/H/a/m;)V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
