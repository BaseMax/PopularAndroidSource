.class public abstract Lcom/koushikdutta/ion/gson/GsonParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/gson/JsonElement;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/c/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field

.field forcedCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonParser;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/gson/GsonParser;-><init>(Ljava/lang/Class;)V

    .line 34
    iput-object p2, p0, Lcom/koushikdutta/ion/gson/GsonParser;->forcedCharset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonParser;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/n;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "TT;>;"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Lcom/koushikdutta/async/n;->charset()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/koushikdutta/async/c/b;

    invoke-direct {v1}, Lcom/koushikdutta/async/c/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/c/b;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v1, Lcom/koushikdutta/ion/gson/GsonParser$1;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/ion/gson/GsonParser$1;-><init>(Lcom/koushikdutta/ion/gson/GsonParser;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1, v1}, Lcom/koushikdutta/async/b/e;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/b/e;

    return-object p1
.end method

.method public write(Lcom/koushikdutta/async/q;Lcom/google/gson/JsonElement;Lcom/koushikdutta/async/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/q;",
            "TT;",
            "Lcom/koushikdutta/async/a/a;",
            ")V"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/c/f;->write(Lcom/koushikdutta/async/q;Ljava/lang/String;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public bridge synthetic write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/google/gson/JsonElement;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/ion/gson/GsonParser;->write(Lcom/koushikdutta/async/q;Lcom/google/gson/JsonElement;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
