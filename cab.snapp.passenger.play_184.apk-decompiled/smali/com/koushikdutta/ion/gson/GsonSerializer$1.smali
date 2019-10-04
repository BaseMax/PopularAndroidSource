.class Lcom/koushikdutta/ion/gson/GsonSerializer$1;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/gson/GsonSerializer;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "TT;",
        "Lcom/koushikdutta/async/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/gson/GsonSerializer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/gson/GsonSerializer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonSerializer$1;->this$0:Lcom/koushikdutta/ion/gson/GsonSerializer;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected transform(Lcom/koushikdutta/async/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/koushikdutta/async/d/a;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/d/a;-><init>(Lcom/koushikdutta/async/l;)V

    .line 43
    iget-object p1, p0, Lcom/koushikdutta/ion/gson/GsonSerializer$1;->this$0:Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object p1, p1, Lcom/koushikdutta/ion/gson/GsonSerializer;->gson:Lcom/google/gson/e;

    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonSerializer$1;->this$0:Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v0, v0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer$1;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    check-cast p1, Lcom/koushikdutta/async/l;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer$1;->transform(Lcom/koushikdutta/async/l;)V

    return-void
.end method
