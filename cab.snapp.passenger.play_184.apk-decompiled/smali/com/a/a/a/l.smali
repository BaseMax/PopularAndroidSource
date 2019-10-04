.class public final Lcom/a/a/a/l;
.super Lcom/a/a/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a/v<",
        "Lcom/a/a/a/l;",
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

    const-string v0, "contentView"

    return-object v0
.end method

.method public final putContentId(Ljava/lang/String;)Lcom/a/a/a/l;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/a/a/a/l;->d:Lcom/a/a/a/c;

    const-string v1, "contentId"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putContentName(Ljava/lang/String;)Lcom/a/a/a/l;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/a/a/a/l;->d:Lcom/a/a/a/c;

    const-string v1, "contentName"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putContentType(Ljava/lang/String;)Lcom/a/a/a/l;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/a/a/a/l;->d:Lcom/a/a/a/c;

    const-string v1, "contentType"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
