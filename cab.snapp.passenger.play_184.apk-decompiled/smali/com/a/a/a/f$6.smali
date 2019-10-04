.class final Lcom/a/a/a/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/f;->a(Lcom/a/a/a/ag$a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/ag$a;

.field final synthetic b:Z

.field final synthetic c:Lcom/a/a/a/f;


# direct methods
.method constructor <init>(Lcom/a/a/a/f;Lcom/a/a/a/ag$a;Z)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/a/a/a/f$6;->c:Lcom/a/a/a/f;

    iput-object p2, p0, Lcom/a/a/a/f$6;->a:Lcom/a/a/a/ag$a;

    iput-boolean p3, p0, Lcom/a/a/a/f$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/f$6;->c:Lcom/a/a/a/f;

    iget-object v0, v0, Lcom/a/a/a/f;->g:Lcom/a/a/a/af;

    iget-object v1, p0, Lcom/a/a/a/f$6;->a:Lcom/a/a/a/ag$a;

    invoke-interface {v0, v1}, Lcom/a/a/a/af;->processEvent(Lcom/a/a/a/ag$a;)V

    .line 155
    iget-boolean v0, p0, Lcom/a/a/a/f$6;->b:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/a/a/a/f$6;->c:Lcom/a/a/a/f;

    iget-object v0, v0, Lcom/a/a/a/f;->g:Lcom/a/a/a/af;

    invoke-interface {v0}, Lcom/a/a/a/af;->rollFileOver()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 160
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to process event"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
