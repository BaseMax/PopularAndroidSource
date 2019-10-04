.class public final Lcom/a/a/a/y;
.super Lcom/a/a/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a/v<",
        "Lcom/a/a/a/y;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/a/a/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "rating"

    return-object v0
.end method

.method public final putContentId(Ljava/lang/String;)Lcom/a/a/a/y;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/a/a/a/y;->d:Lcom/a/a/a/c;

    const-string v1, "contentId"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putContentName(Ljava/lang/String;)Lcom/a/a/a/y;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/a/a/a/y;->d:Lcom/a/a/a/c;

    const-string v1, "contentName"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putContentType(Ljava/lang/String;)Lcom/a/a/a/y;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/a/a/a/y;->d:Lcom/a/a/a/c;

    const-string v1, "contentType"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putRating(I)Lcom/a/a/a/y;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/a/a/a/y;->d:Lcom/a/a/a/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "rating"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p0
.end method
