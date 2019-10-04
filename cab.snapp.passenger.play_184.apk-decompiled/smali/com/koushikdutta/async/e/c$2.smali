.class final Lcom/koushikdutta/async/e/c$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/e/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/e/c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/e/c;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/koushikdutta/async/e/c$2;->a:Lcom/koushikdutta/async/e/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/koushikdutta/async/e/c$2;->a:Lcom/koushikdutta/async/e/c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/e/c;->a()V

    return-void
.end method
