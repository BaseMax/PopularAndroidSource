.class public abstract Li/a/e/h;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:J

.field public b:Li/a/e/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Li/a/e/g;->b:Li/a/e/g;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Li/a/e/h;-><init>(JLi/a/e/i;)V

    return-void
.end method

.method public constructor <init>(JLi/a/e/i;)V
    .locals 1

    const-string v0, "taskContext"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Li/a/e/h;->a:J

    iput-object p3, p0, Li/a/e/h;->b:Li/a/e/i;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/scheduling/TaskMode;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/e/h;->b:Li/a/e/i;

    invoke-interface {v0}, Li/a/e/i;->w()Lkotlinx/coroutines/scheduling/TaskMode;

    move-result-object v0

    return-object v0
.end method
