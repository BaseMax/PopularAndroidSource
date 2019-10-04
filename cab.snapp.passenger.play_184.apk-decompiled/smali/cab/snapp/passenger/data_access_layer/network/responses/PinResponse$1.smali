.class Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->save(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

.field final synthetic val$geoHash:Ljava/lang/String;

.field final synthetic val$withVehicle:Z


# direct methods
.method constructor <init>(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;ZLjava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse$1;->this$0:Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    iput-boolean p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse$1;->val$withVehicle:Z

    iput-object p3, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse$1;->val$geoHash:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 5

    .line 61
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse$1;->val$withVehicle:Z

    if-nez v0, :cond_0

    const/16 v0, 0x3e9

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    .line 66
    :goto_0
    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    .line 67
    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse$1;->this$0:Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    invoke-virtual {v1, v2}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v2, Lcab/snapp/passenger/d/b;

    invoke-direct {v2}, Lcab/snapp/passenger/d/b;-><init>()V

    .line 69
    iget-object v3, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse$1;->val$geoHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcab/snapp/passenger/d/b;->setKey(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcab/snapp/passenger/d/b;->setLastModificationTimestamp(J)V

    .line 71
    invoke-virtual {v2, v0}, Lcab/snapp/passenger/d/b;->setType(I)V

    .line 72
    invoke-virtual {v2, v1}, Lcab/snapp/passenger/d/b;->setJsonString(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2, p1}, Lcab/snapp/passenger/d/b;->save(Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    return-void
.end method
