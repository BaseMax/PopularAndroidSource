.class public final Lb/H/a/d/a/b$h;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# static fields
.field public static final a:Lb/H/a/d/a/b$h;


# instance fields
.field public volatile b:Ljava/lang/Thread;

.field public volatile c:Lb/H/a/d/a/b$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/H/a/d/a/b$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/H/a/d/a/b$h;-><init>(Z)V

    sput-object v0, Lb/H/a/d/a/b$h;->a:Lb/H/a/d/a/b$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b$h;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lb/H/a/d/a/b$h;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lb/H/a/d/a/b$h;->b:Ljava/lang/Thread;

    .line 4
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method public a(Lb/H/a/d/a/b$h;)V
    .locals 1

    .line 1
    sget-object v0, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {v0, p0, p1}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b$h;Lb/H/a/d/a/b$h;)V

    return-void
.end method
