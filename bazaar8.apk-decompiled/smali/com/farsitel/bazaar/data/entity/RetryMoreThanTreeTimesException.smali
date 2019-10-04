.class public final Lcom/farsitel/bazaar/data/entity/RetryMoreThanTreeTimesException;
.super Lcom/farsitel/bazaar/data/entity/ErrorModel$Feature;
.source "ErrorModel.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "you have tried more than three times."

    .line 1
    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Feature;-><init>(Ljava/lang/String;)V

    return-void
.end method
