.class final Lcom/adjust/sdk/AdjustInstance$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/IRunActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AdjustInstance;->addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance$2;->c:Lcom/adjust/sdk/AdjustInstance;

    iput-object p2, p0, Lcom/adjust/sdk/AdjustInstance$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adjust/sdk/AdjustInstance$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/adjust/sdk/AdjustInstance$2;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->addSessionPartnerParameterI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
