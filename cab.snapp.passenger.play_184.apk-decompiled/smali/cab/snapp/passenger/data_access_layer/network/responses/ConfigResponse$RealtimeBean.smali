.class public Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealtimeBean"
.end annotation


# instance fields
.field private emq:Lcab/snapp/d/a/a;
    .annotation runtime Lcom/google/gson/a/c;
        value = "emq"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmq()Lcab/snapp/d/a/a;
    .locals 1

    .line 140
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;->emq:Lcab/snapp/d/a/a;

    return-object v0
.end method

.method public setEmq(Lcab/snapp/d/a/a;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;->emq:Lcab/snapp/d/a/a;

    return-void
.end method
