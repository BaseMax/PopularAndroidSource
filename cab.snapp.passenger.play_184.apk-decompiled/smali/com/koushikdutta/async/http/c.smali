.class public final Lcom/koushikdutta/async/http/c;
.super Lcom/koushikdutta/async/http/d;
.source "SourceFile"


# static fields
.field public static final METHOD:Ljava/lang/String; = "GET"


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "GET"

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/d;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "GET"

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/d;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
