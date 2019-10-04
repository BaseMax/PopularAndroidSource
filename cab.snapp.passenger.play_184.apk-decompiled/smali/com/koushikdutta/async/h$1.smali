.class final Lcom/koushikdutta/async/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/aa;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/aa;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/koushikdutta/async/h$1;->a:Lcom/koushikdutta/async/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/h$1;->a:Lcom/koushikdutta/async/aa;

    invoke-virtual {v0}, Lcom/koushikdutta/async/aa;->wakeupOnce()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
