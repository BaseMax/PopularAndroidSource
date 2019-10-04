.class public Lb/H/a/a/b/c;
.super Ljava/lang/Object;
.source "ConstraintsCommandHandler.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:Lb/H/a/a/b/f;

.field public final e:Lb/H/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/a/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILb/H/a/a/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/a/b/c;->b:Landroid/content/Context;

    .line 3
    iput p2, p0, Lb/H/a/a/b/c;->c:I

    .line 4
    iput-object p3, p0, Lb/H/a/a/b/c;->d:Lb/H/a/a/b/f;

    .line 5
    new-instance p1, Lb/H/a/b/d;

    iget-object p2, p0, Lb/H/a/a/b/c;->b:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lb/H/a/b/d;-><init>(Landroid/content/Context;Lb/H/a/b/c;)V

    iput-object p1, p0, Lb/H/a/a/b/c;->e:Lb/H/a/b/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lb/H/a/a/b/c;->d:Lb/H/a/a/b/f;

    invoke-virtual {v0}, Lb/H/a/a/b/f;->d()Lb/H/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/H/a/m;->g()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lb/H/a/c/p;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lb/H/a/c/p;->a()Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lb/H/a/a/b/c;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 5
    iget-object v1, p0, Lb/H/a/a/b/c;->e:Lb/H/a/b/d;

    invoke-virtual {v1, v0}, Lb/H/a/b/d;->c(Ljava/util/List;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/H/a/c/o;

    .line 9
    iget-object v5, v4, Lb/H/a/c/o;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v4}, Lb/H/a/c/o;->a()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    .line 11
    invoke-virtual {v4}, Lb/H/a/c/o;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lb/H/a/a/b/c;->e:Lb/H/a/b/d;

    .line 12
    invoke-virtual {v6, v5}, Lb/H/a/b/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/H/a/c/o;

    .line 15
    iget-object v1, v1, Lb/H/a/c/o;->c:Ljava/lang/String;

    .line 16
    iget-object v2, p0, Lb/H/a/a/b/c;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lb/H/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 17
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v3

    sget-object v4, Lb/H/a/a/b/c;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v1, "Creating a delay_met command for workSpec with id (%s)"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v1, v5}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 18
    iget-object v1, p0, Lb/H/a/a/b/c;->d:Lb/H/a/a/b/f;

    new-instance v3, Lb/H/a/a/b/f$a;

    iget v4, p0, Lb/H/a/a/b/c;->c:I

    invoke-direct {v3, v1, v2, v4}, Lb/H/a/a/b/f$a;-><init>(Lb/H/a/a/b/f;Landroid/content/Intent;I)V

    invoke-virtual {v1, v3}, Lb/H/a/a/b/f;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, p0, Lb/H/a/a/b/c;->e:Lb/H/a/b/d;

    invoke-virtual {v0}, Lb/H/a/b/d;->a()V

    return-void
.end method
