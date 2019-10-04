.class public Lcom/koushikdutta/ion/HeadersResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field code:I

.field headers:Lcom/koushikdutta/async/http/n;

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/koushikdutta/async/http/n;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p3, p0, Lcom/koushikdutta/ion/HeadersResponse;->headers:Lcom/koushikdutta/async/http/n;

    .line 11
    iput p1, p0, Lcom/koushikdutta/ion/HeadersResponse;->code:I

    .line 12
    iput-object p2, p0, Lcom/koushikdutta/ion/HeadersResponse;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/koushikdutta/ion/HeadersResponse;->code:I

    return v0
.end method

.method public code(I)Lcom/koushikdutta/ion/HeadersResponse;
    .locals 0

    .line 26
    iput p1, p0, Lcom/koushikdutta/ion/HeadersResponse;->code:I

    return-object p0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/n;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/ion/HeadersResponse;->headers:Lcom/koushikdutta/async/http/n;

    return-object v0
.end method

.method public message(Ljava/lang/String;)Lcom/koushikdutta/ion/HeadersResponse;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/koushikdutta/ion/HeadersResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/koushikdutta/ion/HeadersResponse;->message:Ljava/lang/String;

    return-object v0
.end method
