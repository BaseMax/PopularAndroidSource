.class final Lcom/adjust/sdk/RequestHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/RequestHandler;->sendPackage(Lcom/adjust/sdk/ActivityPackage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adjust/sdk/ActivityPackage;

.field final synthetic b:I

.field final synthetic c:Lcom/adjust/sdk/RequestHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/adjust/sdk/RequestHandler$1;->c:Lcom/adjust/sdk/RequestHandler;

    iput-object p2, p0, Lcom/adjust/sdk/RequestHandler$1;->a:Lcom/adjust/sdk/ActivityPackage;

    iput p3, p0, Lcom/adjust/sdk/RequestHandler$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler$1;->c:Lcom/adjust/sdk/RequestHandler;

    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler$1;->a:Lcom/adjust/sdk/ActivityPackage;

    iget v2, p0, Lcom/adjust/sdk/RequestHandler$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/RequestHandler;->access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V

    return-void
.end method
