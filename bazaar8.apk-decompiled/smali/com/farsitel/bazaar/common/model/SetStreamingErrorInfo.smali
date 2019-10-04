.class public final Lcom/farsitel/bazaar/common/model/SetStreamingErrorInfo;
.super Ljava/lang/Object;
.source "SetStreamingErrorInfo.kt"


# instance fields
.field public final isReceived:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/SetStreamingErrorInfo;->isReceived:Z

    return-void
.end method


# virtual methods
.method public final isReceived()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/SetStreamingErrorInfo;->isReceived:Z

    return v0
.end method
