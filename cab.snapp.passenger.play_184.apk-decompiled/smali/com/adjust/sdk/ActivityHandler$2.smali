.class final Lcom/adjust/sdk/ActivityHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->sendInstallReferrer(JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;JJLjava/lang/String;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$2;->d:Lcom/adjust/sdk/ActivityHandler;

    iput-wide p2, p0, Lcom/adjust/sdk/ActivityHandler$2;->a:J

    iput-wide p4, p0, Lcom/adjust/sdk/ActivityHandler$2;->b:J

    iput-object p6, p0, Lcom/adjust/sdk/ActivityHandler$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 442
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$2;->d:Lcom/adjust/sdk/ActivityHandler;

    iget-wide v1, p0, Lcom/adjust/sdk/ActivityHandler$2;->a:J

    iget-wide v3, p0, Lcom/adjust/sdk/ActivityHandler$2;->b:J

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler$2;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/adjust/sdk/ActivityHandler;->access$1600(Lcom/adjust/sdk/ActivityHandler;JJLjava/lang/String;)V

    return-void
.end method
