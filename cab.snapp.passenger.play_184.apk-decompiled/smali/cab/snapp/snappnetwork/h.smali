.class public interface abstract Lcab/snapp/snappnetwork/h;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getRefreshTokenRequest()Lcab/snapp/snappnetwork/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/snappnetwork/model/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract onRefreshTokenError(I)V
.end method

.method public abstract onTokenRefreshed(Lcab/snapp/snappnetwork/model/c;)V
.end method
