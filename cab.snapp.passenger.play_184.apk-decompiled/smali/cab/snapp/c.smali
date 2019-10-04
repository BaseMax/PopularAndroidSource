.class public interface abstract Lcab/snapp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAckRequest(Lcab/snapp/a/a;)Lcab/snapp/snappnetwork/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/a/a;",
            ")",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmqConnectionData()Lcab/snapp/d/a/a;
.end method

.method public abstract getEvents()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntervalPeriod()I
.end method

.method public abstract getPollingRequest()Lcab/snapp/snappnetwork/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/a/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPollingSideRequest()Lcab/snapp/snappnetwork/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPusherAutorizeRequest(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPusherConfig()Lcab/snapp/d/c/b;
.end method

.method public abstract getSideRequestIntervalPeriod()I
.end method
