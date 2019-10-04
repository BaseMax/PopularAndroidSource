.class final Lcom/a/a/c/r$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/r;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/r;


# direct methods
.method constructor <init>(Lcom/a/a/c/r;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/a/a/c/r$2;->a:Lcom/a/a/c/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/a/a/c/r$2;->a:Lcom/a/a/c/r;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/a/a/c/r;->a(Lcom/a/a/c/r;Z)Z

    return-void
.end method
