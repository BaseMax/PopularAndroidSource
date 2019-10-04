.class Lcom/koushikdutta/ion/gson/GsonParser$1;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/gson/GsonParser;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
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
.field final synthetic this$0:Lcom/koushikdutta/ion/gson/GsonParser;

.field final synthetic val$charset:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/gson/GsonParser;Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->this$0:Lcom/koushikdutta/ion/gson/GsonParser;

    iput-object p2, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->val$charset:Ljava/lang/String;

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

    .line 44
    new-instance v0, Lcom/google/gson/m;

    invoke-direct {v0}, Lcom/google/gson/m;-><init>()V

    .line 45
    new-instance v1, Lcom/koushikdutta/async/d/a;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/d/a;-><init>(Lcom/koushikdutta/async/l;)V

    .line 47
    iget-object p1, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->this$0:Lcom/koushikdutta/ion/gson/GsonParser;

    iget-object p1, p1, Lcom/koushikdutta/ion/gson/GsonParser;->forcedCharset:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    .line 48
    new-instance p1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->this$0:Lcom/koushikdutta/ion/gson/GsonParser;

    iget-object v2, v2, Lcom/koushikdutta/ion/gson/GsonParser;->forcedCharset:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->val$charset:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 50
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p1, v2

    goto :goto_0

    .line 52
    :cond_1
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 53
    :goto_0
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/m;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->this$0:Lcom/koushikdutta/ion/gson/GsonParser;

    iget-object v0, v0, Lcom/koushikdutta/ion/gson/GsonParser;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/ion/gson/GsonParser$1;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be casted to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->this$0:Lcom/koushikdutta/ion/gson/GsonParser;

    iget-object p1, p1, Lcom/koushikdutta/ion/gson/GsonParser;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    new-instance p1, Lcom/google/gson/l;

    const-string v0, "unable to parse json"

    invoke-direct {p1, v0}, Lcom/google/gson/l;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    check-cast p1, Lcom/koushikdutta/async/l;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/gson/GsonParser$1;->transform(Lcom/koushikdutta/async/l;)V

    return-void
.end method
