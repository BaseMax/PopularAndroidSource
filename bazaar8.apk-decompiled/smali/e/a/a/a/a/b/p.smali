.class public Le/a/a/a/a/b/p;
.super Le/a/a/a/a/b/j;
.source "ExecutorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/a/a/b/q;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Le/a/a/a/a/b/q;


# direct methods
.method public constructor <init>(Le/a/a/a/a/b/q;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/a/a/b/p;->b:Le/a/a/a/a/b/q;

    iput-object p2, p0, Le/a/a/a/a/b/p;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Le/a/a/a/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/a/a/b/p;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
