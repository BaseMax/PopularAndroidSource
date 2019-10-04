.class public final Lb/H/a/d/a/b$d;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field public static final a:Lb/H/a/d/a/b$d;


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lb/H/a/d/a/b$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/H/a/d/a/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lb/H/a/d/a/b$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lb/H/a/d/a/b$d;->a:Lb/H/a/d/a/b$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/d/a/b$d;->b:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lb/H/a/d/a/b$d;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
