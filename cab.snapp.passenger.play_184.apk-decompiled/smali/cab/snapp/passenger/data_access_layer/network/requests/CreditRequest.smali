.class public Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;
    }
.end annotation


# instance fields
.field private place:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "place"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlace()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest;->place:Ljava/lang/String;

    return-object v0
.end method

.method public setPlace(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest;->place:Ljava/lang/String;

    return-void
.end method
