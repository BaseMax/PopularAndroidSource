.class public final Lb/H/a/d/a/b$b;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lb/H/a/d/a/b$b;

.field public static final b:Lb/H/a/d/a/b$b;


# instance fields
.field public final c:Z

.field public final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lb/H/a/d/a/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Lb/H/a/d/a/b$b;->b:Lb/H/a/d/a/b$b;

    .line 3
    sput-object v1, Lb/H/a/d/a/b$b;->a:Lb/H/a/d/a/b$b;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lb/H/a/d/a/b$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lb/H/a/d/a/b$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lb/H/a/d/a/b$b;->b:Lb/H/a/d/a/b$b;

    .line 5
    new-instance v0, Lb/H/a/d/a/b$b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lb/H/a/d/a/b$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lb/H/a/d/a/b$b;->a:Lb/H/a/d/a/b$b;

    :goto_0
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lb/H/a/d/a/b$b;->c:Z

    .line 3
    iput-object p2, p0, Lb/H/a/d/a/b$b;->d:Ljava/lang/Throwable;

    return-void
.end method
