.class final Lcom/squareup/picasso/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/picasso/i;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/i;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/squareup/picasso/i$1;->a:Lcom/squareup/picasso/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/squareup/picasso/i$1;->a:Lcom/squareup/picasso/i;

    iget-object v0, v0, Lcom/squareup/picasso/i;->n:Lcom/squareup/picasso/i$c;

    .line 1552
    iget-object v1, v0, Lcom/squareup/picasso/i$c;->a:Lcom/squareup/picasso/i;

    iget-object v1, v1, Lcom/squareup/picasso/i;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
