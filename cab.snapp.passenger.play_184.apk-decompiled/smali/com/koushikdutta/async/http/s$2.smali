.class final Lcom/koushikdutta/async/http/s$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method