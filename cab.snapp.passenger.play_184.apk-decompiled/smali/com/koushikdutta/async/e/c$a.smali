.class final Lcom/koushikdutta/async/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final synthetic b:Lcom/koushikdutta/async/e/c;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/e/c;Ljava/io/File;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/e/c$a;->b:Lcom/koushikdutta/async/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/koushikdutta/async/e/c$a;->a:J

    return-void
.end method
