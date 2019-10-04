.class final Lcab/snapp/d/b/a$3;
.super Lcab/snapp/snappnetwork/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/d/b/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/snappnetwork/a/a<",
        "Lcab/snapp/snappnetwork/model/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/d/b/a;


# direct methods
.method constructor <init>(Lcab/snapp/d/b/a;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcab/snapp/d/b/a$3;->a:Lcab/snapp/d/b/a;

    invoke-direct {p0}, Lcab/snapp/snappnetwork/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcab/snapp/snappnetwork/model/b;I)V
    .locals 0

    .line 247
    invoke-super {p0, p1, p2}, Lcab/snapp/snappnetwork/a/a;->onFailure(Lcab/snapp/snappnetwork/model/b;I)V

    .line 248
    iget-object p1, p0, Lcab/snapp/d/b/a$3;->a:Lcab/snapp/d/b/a;

    const/4 p2, 0x0

    .line 2034
    iput-boolean p2, p1, Lcab/snapp/d/b/a;->c:Z

    return-void
.end method

.method public final onSuccess(Lcab/snapp/snappnetwork/model/f;)V
    .locals 4

    .line 223
    invoke-super {p0, p1}, Lcab/snapp/snappnetwork/a/a;->onSuccess(Lcab/snapp/snappnetwork/model/f;)V

    .line 224
    iget-object v0, p0, Lcab/snapp/d/b/a$3;->a:Lcab/snapp/d/b/a;

    const/4 v1, 0x0

    .line 1034
    iput-boolean v1, v0, Lcab/snapp/d/b/a;->c:Z

    .line 225
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 227
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/f;->getRawResponse()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/google/gson/JsonElement;

    .line 226
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    .line 230
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    new-instance v0, Lcab/snapp/a/a;

    invoke-direct {v0}, Lcab/snapp/a/a;-><init>()V

    const-string v1, "POLLING_SIDE_REQUEST"

    .line 235
    invoke-virtual {v0, v1}, Lcab/snapp/a/a;->setEventType(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    .line 236
    invoke-virtual {v0, v1, v2}, Lcab/snapp/a/a;->setExpiresIn(J)V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SIDE_REQ_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/a/a;->setEventId(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Lcab/snapp/a/a;->setData(Lcom/google/gson/JsonObject;)V

    .line 239
    iget-object p1, p0, Lcab/snapp/d/b/a$3;->a:Lcab/snapp/d/b/a;

    iget p1, p1, Lcab/snapp/d/b/a;->ACK:I

    invoke-virtual {v0, p1}, Lcab/snapp/a/a;->setAckId(I)V

    .line 240
    iget-object p1, p0, Lcab/snapp/d/b/a$3;->a:Lcab/snapp/d/b/a;

    invoke-virtual {p1, v0}, Lcab/snapp/d/b/a;->onEvent(Lcab/snapp/a/a;)V

    :cond_0
    return-void
.end method
