.class public Lcom/koushikdutta/async/http/b$a;
.super Lcom/koushikdutta/async/http/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public connectCallback:Lcom/koushikdutta/async/a/b;

.field public protocol:Ljava/lang/String;

.field public socketCancellable:Lcom/koushikdutta/async/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/koushikdutta/async/http/b$e;-><init>()V

    return-void
.end method
