.class final Lcom/koushikdutta/async/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/k;->end()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/k;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/k;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/koushikdutta/async/k$3;->a:Lcom/koushikdutta/async/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/koushikdutta/async/k$3;->a:Lcom/koushikdutta/async/k;

    invoke-virtual {v0}, Lcom/koushikdutta/async/k;->end()V

    return-void
.end method
