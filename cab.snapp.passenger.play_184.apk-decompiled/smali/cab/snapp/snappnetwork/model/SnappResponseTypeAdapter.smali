.class public Lcab/snapp/snappnetwork/model/SnappResponseTypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/i<",
        "Lcab/snapp/snappnetwork/model/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/SnappResponseTypeAdapter;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/h;)Lcab/snapp/snappnetwork/model/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/l;
        }
    .end annotation

    .line 39
    new-instance p2, Lcab/snapp/snappnetwork/model/e;

    invoke-direct {p2}, Lcab/snapp/snappnetwork/model/e;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p3, "data"

    .line 51
    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_3

    const-string v0, "status"

    .line 54
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    .line 59
    :goto_0
    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_2

    if-lt v0, v1, :cond_1

    const/16 p3, 0x12c

    if-gt v0, p3, :cond_1

    .line 67
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGson()Lcom/google/gson/e;

    move-result-object p3

    iget-object v1, p0, Lcab/snapp/snappnetwork/model/SnappResponseTypeAdapter;->a:Ljava/lang/Class;

    invoke-virtual {p3, p1, v1}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcab/snapp/snappnetwork/model/f;

    goto :goto_1

    .line 70
    :cond_1
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGson()Lcom/google/gson/e;

    move-result-object p3

    const-class v1, Lcab/snapp/snappnetwork/model/b;

    invoke-virtual {p3, p1, v1}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcab/snapp/snappnetwork/model/f;

    .line 72
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcab/snapp/snappnetwork/model/f;->setRawResponse(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    move v1, v0

    goto :goto_3

    :cond_3
    const-string p3, "error_description"

    .line 74
    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_4

    const/16 v1, 0x191

    .line 77
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGson()Lcom/google/gson/e;

    move-result-object p3

    const-class v0, Lcab/snapp/snappnetwork/model/a;

    invoke-virtual {p3, p1, v0}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcab/snapp/snappnetwork/model/a;

    .line 78
    new-instance v0, Lcab/snapp/snappnetwork/model/b;

    invoke-virtual {p3}, Lcab/snapp/snappnetwork/model/a;->getErrorDescription()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Lcab/snapp/snappnetwork/model/b;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/model/f;->setRawResponse(Ljava/lang/String;)V

    move-object p3, v0

    goto :goto_3

    .line 84
    :cond_4
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGson()Lcom/google/gson/e;

    move-result-object p3

    iget-object v0, p0, Lcab/snapp/snappnetwork/model/SnappResponseTypeAdapter;->a:Ljava/lang/Class;

    invoke-virtual {p3, p1, v0}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcab/snapp/snappnetwork/model/f;

    .line 85
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcab/snapp/snappnetwork/model/f;->setRawResponse(Ljava/lang/String;)V

    .line 89
    :goto_3
    invoke-virtual {p2, v1}, Lcab/snapp/snappnetwork/model/e;->setSnappApiStatus(I)V

    .line 92
    invoke-virtual {p2, p3}, Lcab/snapp/snappnetwork/model/e;->setSnappResponseModel(Lcab/snapp/snappnetwork/model/f;)V

    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/h;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/l;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcab/snapp/snappnetwork/model/SnappResponseTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/h;)Lcab/snapp/snappnetwork/model/e;

    move-result-object p1

    return-object p1
.end method
