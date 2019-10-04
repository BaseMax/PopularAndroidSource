.class public Lcom/koushikdutta/ion/gson/GsonBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/gson/JsonElement;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/a/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/json"


# instance fields
.field gson:Lcom/google/gson/e;

.field json:Lcom/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mBodyBytes:[B


# direct methods
.method public constructor <init>(Lcom/google/gson/e;Lcom/google/gson/JsonElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/e;",
            "TT;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/koushikdutta/ion/gson/GsonBody;->json:Lcom/google/gson/JsonElement;

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonBody;->gson:Lcom/google/gson/e;

    return-void
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonBody;->json:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/koushikdutta/ion/gson/GsonBody;->get()Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonBody;->mBodyBytes:[B

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonBody;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/gson/GsonBody;->mBodyBytes:[B

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonBody;->mBodyBytes:[B

    array-length v0, v0

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 28
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 3

    .line 33
    iget-object p1, p0, Lcom/koushikdutta/ion/gson/GsonBody;->mBodyBytes:[B

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 36
    iget-object v1, p0, Lcom/koushikdutta/ion/gson/GsonBody;->gson:Lcom/google/gson/e;

    iget-object v2, p0, Lcom/koushikdutta/ion/gson/GsonBody;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/e;->toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 37
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonBody;->mBodyBytes:[B

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/ion/gson/GsonBody;->mBodyBytes:[B

    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void
.end method
