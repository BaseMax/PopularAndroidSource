.class Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;->save(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;J)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse$1;->this$0:Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;

    iput-wide p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse$1;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 4

    .line 83
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 84
    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse$1;->this$0:Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;

    invoke-virtual {v0, v1}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lcab/snapp/passenger/d/b;

    invoke-direct {v1}, Lcab/snapp/passenger/d/b;-><init>()V

    const-string v2, "SNAPP_GROUP_RESPONSE_JEY"

    .line 86
    invoke-virtual {v1, v2}, Lcab/snapp/passenger/d/b;->setKey(Ljava/lang/String;)V

    .line 87
    iget-wide v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse$1;->val$timestamp:J

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/d/b;->setLastModificationTimestamp(J)V

    const/16 v2, 0x3ea

    .line 88
    invoke-virtual {v1, v2}, Lcab/snapp/passenger/d/b;->setType(I)V

    .line 89
    invoke-virtual {v1, v0}, Lcab/snapp/passenger/d/b;->setJsonString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, p1}, Lcab/snapp/passenger/d/b;->save(Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    return-void
.end method
