.class public final Lio/fabric/sdk/android/services/concurrency/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lio/fabric/sdk/android/services/concurrency/a/b;

.field private final c:Lio/fabric/sdk/android/services/concurrency/a/f;


# direct methods
.method public constructor <init>(ILio/fabric/sdk/android/services/concurrency/a/b;Lio/fabric/sdk/android/services/concurrency/a/f;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->a:I

    .line 31
    iput-object p2, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->b:Lio/fabric/sdk/android/services/concurrency/a/b;

    .line 32
    iput-object p3, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->c:Lio/fabric/sdk/android/services/concurrency/a/f;

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/concurrency/a/b;Lio/fabric/sdk/android/services/concurrency/a/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, p1, p2}, Lio/fabric/sdk/android/services/concurrency/a/g;-><init>(ILio/fabric/sdk/android/services/concurrency/a/b;Lio/fabric/sdk/android/services/concurrency/a/f;)V

    return-void
.end method


# virtual methods
.method public final getBackoff()Lio/fabric/sdk/android/services/concurrency/a/b;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->b:Lio/fabric/sdk/android/services/concurrency/a/b;

    return-object v0
.end method

.method public final getRetryCount()I
    .locals 1

    .line 36
    iget v0, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->a:I

    return v0
.end method

.method public final getRetryDelay()J
    .locals 2

    .line 40
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->b:Lio/fabric/sdk/android/services/concurrency/a/b;

    iget v1, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->a:I

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/concurrency/a/b;->getDelayMillis(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRetryPolicy()Lio/fabric/sdk/android/services/concurrency/a/f;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->c:Lio/fabric/sdk/android/services/concurrency/a/f;

    return-object v0
.end method

.method public final initialRetryState()Lio/fabric/sdk/android/services/concurrency/a/g;
    .locals 3

    .line 56
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a/g;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->b:Lio/fabric/sdk/android/services/concurrency/a/b;

    iget-object v2, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->c:Lio/fabric/sdk/android/services/concurrency/a/f;

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/concurrency/a/g;-><init>(Lio/fabric/sdk/android/services/concurrency/a/b;Lio/fabric/sdk/android/services/concurrency/a/f;)V

    return-object v0
.end method

.method public final nextRetryState()Lio/fabric/sdk/android/services/concurrency/a/g;
    .locals 4

    .line 52
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a/g;

    iget v1, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->b:Lio/fabric/sdk/android/services/concurrency/a/b;

    iget-object v3, p0, Lio/fabric/sdk/android/services/concurrency/a/g;->c:Lio/fabric/sdk/android/services/concurrency/a/f;

    invoke-direct {v0, v1, v2, v3}, Lio/fabric/sdk/android/services/concurrency/a/g;-><init>(ILio/fabric/sdk/android/services/concurrency/a/b;Lio/fabric/sdk/android/services/concurrency/a/f;)V

    return-object v0
.end method
