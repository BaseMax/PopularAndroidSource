.class public final Lme/dm7/barcodescanner/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCamera:Landroid/hardware/Camera;

.field public final mCameraId:I


# direct methods
.method private constructor <init>(Landroid/hardware/Camera;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 14
    iput-object p1, p0, Lme/dm7/barcodescanner/core/c;->mCamera:Landroid/hardware/Camera;

    .line 15
    iput p2, p0, Lme/dm7/barcodescanner/core/c;->mCameraId:I

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Camera cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getWrapper(Landroid/hardware/Camera;I)Lme/dm7/barcodescanner/core/c;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_0
    new-instance v0, Lme/dm7/barcodescanner/core/c;

    invoke-direct {v0, p0, p1}, Lme/dm7/barcodescanner/core/c;-><init>(Landroid/hardware/Camera;I)V

    return-object v0
.end method
