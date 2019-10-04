.class public final Lio/fabric/sdk/android/services/concurrency/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/a/f;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/a/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/fabric/sdk/android/services/concurrency/a/c;->a:I

    return-void
.end method


# virtual methods
.method public final shouldRetry(ILjava/lang/Throwable;)Z
    .locals 0

    .line 33
    iget p2, p0, Lio/fabric/sdk/android/services/concurrency/a/c;->a:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
