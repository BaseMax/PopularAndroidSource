.class public final Lio/fabric/sdk/android/services/settings/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final identifierMask:I

.field public final logBufferSize:I

.field public final maxChainedExceptionDepth:I

.field public final maxCompleteSessionsCount:I

.field public final maxCustomExceptionEvents:I

.field public final maxCustomKeyValuePairs:I

.field public final sendSessionWithoutCrash:Z


# direct methods
.method public constructor <init>(IIIIIZI)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lio/fabric/sdk/android/services/settings/p;->logBufferSize:I

    .line 38
    iput p2, p0, Lio/fabric/sdk/android/services/settings/p;->maxChainedExceptionDepth:I

    .line 39
    iput p3, p0, Lio/fabric/sdk/android/services/settings/p;->maxCustomExceptionEvents:I

    .line 40
    iput p4, p0, Lio/fabric/sdk/android/services/settings/p;->maxCustomKeyValuePairs:I

    .line 41
    iput p5, p0, Lio/fabric/sdk/android/services/settings/p;->identifierMask:I

    .line 42
    iput-boolean p6, p0, Lio/fabric/sdk/android/services/settings/p;->sendSessionWithoutCrash:Z

    .line 43
    iput p7, p0, Lio/fabric/sdk/android/services/settings/p;->maxCompleteSessionsCount:I

    return-void
.end method
