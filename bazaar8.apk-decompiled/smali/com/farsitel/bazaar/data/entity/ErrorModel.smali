.class public abstract Lcom/farsitel/bazaar/data/entity/ErrorModel;
.super Ljava/lang/Throwable;
.source "ErrorModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/data/entity/ErrorModel$NetworkConnection;,
        Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;,
        Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;,
        Lcom/farsitel/bazaar/data/entity/ErrorModel$NotFound;,
        Lcom/farsitel/bazaar/data/entity/ErrorModel$RateLimitExceeded;,
        Lcom/farsitel/bazaar/data/entity/ErrorModel$DatabaseError;,
        Lcom/farsitel/bazaar/data/entity/ErrorModel$Error;,
        Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;,
        Lcom/farsitel/bazaar/data/entity/ErrorModel$NotImplemented;,
        Lcom/farsitel/bazaar/data/entity/ErrorModel$Feature;
    }
.end annotation


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel;->message:Ljava/lang/String;

    return-object v0
.end method
