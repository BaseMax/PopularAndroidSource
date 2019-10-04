.class final Lcom/adjust/sdk/AttributionHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AttributionHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adjust/sdk/AttributionHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/AttributionHandler;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler$1;->a:Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler$1;->a:Lcom/adjust/sdk/AttributionHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/AttributionHandler;->sendAttributionRequest()V

    return-void
.end method
