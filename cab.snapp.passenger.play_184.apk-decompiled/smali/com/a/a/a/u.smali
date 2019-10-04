.class public final Lcom/a/a/a/u;
.super Lcom/a/a/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/a/v<",
        "Lcom/a/a/a/u;",
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

    const-string v0, "login"

    return-object v0
.end method

.method public final putMethod(Ljava/lang/String;)Lcom/a/a/a/u;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/a/a/a/u;->d:Lcom/a/a/a/c;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putSuccess(Z)Lcom/a/a/a/u;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/a/a/a/u;->d:Lcom/a/a/a/c;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "success"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
