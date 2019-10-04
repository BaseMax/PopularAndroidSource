.class final Lme/dm7/barcodescanner/core/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/dm7/barcodescanner/core/a;->startCamera(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lme/dm7/barcodescanner/core/a;


# direct methods
.method constructor <init>(Lme/dm7/barcodescanner/core/a;I)V
    .locals 0

    .line 23
    iput-object p1, p0, Lme/dm7/barcodescanner/core/a$1;->b:Lme/dm7/barcodescanner/core/a;

    iput p2, p0, Lme/dm7/barcodescanner/core/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 26
    iget v0, p0, Lme/dm7/barcodescanner/core/a$1;->a:I

    invoke-static {v0}, Lme/dm7/barcodescanner/core/b;->getCameraInstance(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    new-instance v2, Lme/dm7/barcodescanner/core/a$1$1;

    invoke-direct {v2, p0, v0}, Lme/dm7/barcodescanner/core/a$1$1;-><init>(Lme/dm7/barcodescanner/core/a$1;Landroid/hardware/Camera;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
