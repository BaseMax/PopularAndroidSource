.class final Lcom/adjust/sdk/PackageHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/PackageHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adjust/sdk/PackageHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/PackageHandler;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/adjust/sdk/PackageHandler$1;->a:Lcom/adjust/sdk/PackageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler$1;->a:Lcom/adjust/sdk/PackageHandler;

    invoke-static {v0}, Lcom/adjust/sdk/PackageHandler;->access$000(Lcom/adjust/sdk/PackageHandler;)V

    return-void
.end method
