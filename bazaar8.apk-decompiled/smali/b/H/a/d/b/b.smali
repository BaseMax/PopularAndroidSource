.class public Lb/H/a/d/b/b;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/d/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/H/a/d/b/d;


# direct methods
.method public constructor <init>(Lb/H/a/d/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/d/b/b;->a:Lb/H/a/d/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/d/b/b;->a:Lb/H/a/d/b/d;

    invoke-virtual {v0, p1}, Lb/H/a/d/b/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method
