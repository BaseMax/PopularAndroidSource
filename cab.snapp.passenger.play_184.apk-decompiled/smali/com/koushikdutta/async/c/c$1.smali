.class final Lcom/koushikdutta/async/c/c$1;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/c/c;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "Lorg/w3c/dom/Document;",
        "Lcom/koushikdutta/async/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/c/c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/c;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/c/c$1;->a:Lcom/koushikdutta/async/c/c;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic transform(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/koushikdutta/async/l;

    .line 1029
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1031
    new-instance v1, Lcom/koushikdutta/async/d/a;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/d/a;-><init>(Lcom/koushikdutta/async/l;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/c/c$1;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
