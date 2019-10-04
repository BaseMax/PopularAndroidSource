.class public final Lcom/a/a/a/ak;
.super Lcom/a/a/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a/v<",
        "Lcom/a/a/a/ak;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/a/a/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "share"

    return-object v0
.end method

.method public final putContentId(Ljava/lang/String;)Lcom/a/a/a/ak;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/a/a/a/ak;->d:Lcom/a/a/a/c;

    const-string v1, "contentId"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putContentName(Ljava/lang/String;)Lcom/a/a/a/ak;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/a/a/a/ak;->d:Lcom/a/a/a/c;

    const-string v1, "contentName"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putContentType(Ljava/lang/String;)Lcom/a/a/a/ak;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/a/a/a/ak;->d:Lcom/a/a/a/c;

    const-string v1, "contentType"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putMethod(Ljava/lang/String;)Lcom/a/a/a/ak;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/a/a/a/ak;->d:Lcom/a/a/a/c;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
