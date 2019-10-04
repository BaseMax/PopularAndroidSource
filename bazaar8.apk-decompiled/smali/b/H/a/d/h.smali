.class public Lb/H/a/d/h;
.super Ljava/lang/Object;
.source "StartWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lb/H/a/m;

.field public b:Ljava/lang/String;

.field public c:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Lb/H/a/m;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/d/h;->a:Lb/H/a/m;

    .line 3
    iput-object p2, p0, Lb/H/a/d/h;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lb/H/a/d/h;->c:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/H/a/d/h;->a:Lb/H/a/m;

    invoke-virtual {v0}, Lb/H/a/m;->e()Lb/H/a/c;

    move-result-object v0

    iget-object v1, p0, Lb/H/a/d/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lb/H/a/d/h;->c:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Lb/H/a/c;->a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
